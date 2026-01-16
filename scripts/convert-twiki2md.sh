#!/usr/bin/env bash

### Convert TWiki TML to Markdown (gfm)

set -Eeuo pipefail
IFS=$'\n\t'

# ---------- Config ----------
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
PROJECT_ROOT="$(cd -- "$SCRIPT_DIR/.." &>/dev/null && pwd)"

SRC_DIR="${SRC_DIR:-$PROJECT_ROOT/Source2025}"
OUT_DIR="${OUT_DIR:-$PROJECT_ROOT/markdown}"
LUA_FILTER="${LUA_FILTER:-$PROJECT_ROOT/scripts/force-fences.lua}"

UTF8_DIR="${UTF8_DIR:-utf8}"
HTML_DIR="${HTML_DIR:-html}"

# Pandoc behavior
PANDOC_TIMEOUT="${PANDOC_TIMEOUT:-90s}"
LUA_FILTER="${LUA_FILTER:-force-fences.lua}"

cd "$PROJECT_ROOT"
[[ -d "$SRC_DIR" ]] || { echo "Missing $SRC_DIR"; exit 1; }
[[ -f "$LUA_FILTER" ]] || { echo "Missing $LUA_FILTER"; exit 1; }

# ---------- Helpers ----------
log() { printf '%s\n' "$*" >&2; }
die() { log "ERROR: $*"; exit 1; }

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || die "Missing required command: $1"
}

# Prefer GNU sed/awk if available; otherwise fall back.
pick_sed() {
  if command -v gsed >/dev/null 2>&1; then echo "gsed"
  elif command -v sed >/dev/null 2>&1; then echo "sed"
  else die "sed not found"
  fi
}

pick_awk() {
  if command -v gawk >/dev/null 2>&1; then echo "gawk"
  elif command -v awk >/dev/null 2>&1; then echo "awk"
  else die "awk not found"
  fi
}

SED="$(pick_sed)"
AWK="$(pick_awk)"

cleanup() {
  local rc=$?
  trap - EXIT INT TERM HUP
  exit "$rc"
}
trap cleanup EXIT INT TERM HUP

run_with_timeout() {
  # Usage: run_with_timeout <label> <cmd...>
  local label="$1"; shift
  local status=0

  timeout "$PANDOC_TIMEOUT" "$@" || status=$?
  if [[ $status -eq 124 ]]; then
    die "Timed out while processing: ${label}"
  elif [[ $status -ne 0 ]]; then
    die "Command failed (exit ${status}) while processing: ${label}"
  fi
}

# ---------- Transform steps ----------
move_meta_to_eof() {
  "$AWK" '
    /^%META:/ { meta = meta $0 ORS; next }
    { print }
    END { printf "%s", meta }
  ' | "$SED" -E 's/%META:(.*)%/   * \1\n/'
}

fix_numbered_list() {
  # Fix TML reader issue were shorthand numbered list is put in paragraph
  # TWiki "   1 item" -> "   1. item"
  "$SED" -E 's/^([[:space:]]{3,})([0-9]+)[[:space:]]/\1\2. /'
}

convert_to_utf8() {
  local input="$1"
  local output="$2"

  [[ -n "${input:-}" && -n "${output:-}" ]] || die "convert_to_utf8: missing args"
  [[ -f "$input" ]] || die "convert_to_utf8: input not found: $input"

  local -a fallbacks=(WINDOWS-1252 ISO-8859-1 MACROMAN ISO-8859-15)

  local charset detected=""
  charset="$(file -I "$input" 2>/dev/null | "$SED" -nE 's/.*[[:space:]]charset=(.*)$/\1/p' | tr '[:upper:]' '[:lower:]')"

  case "$charset" in
    ""|unknown-8bit|binary) detected="" ;;
    utf-8|utf8)             detected="UTF-8" ;;
    us-ascii|ascii)         detected="UTF-8" ;;
    iso-8859-1|latin1)      detected="ISO-8859-1" ;;
    iso-8859-15|latin9)     detected="ISO-8859-15" ;;
    windows-1252|cp1252)    detected="WINDOWS-1252" ;;
    macintosh|mac-roman|macroman) detected="MACROMAN" ;;
    *) detected="$(printf '%s' "$charset" | tr '[:lower:]' '[:upper:]')" ;;
  esac

  _try_enc() {
    local enc="$1"
    local tmp
    tmp="$(mktemp)"

    if iconv -f "$enc" -t UTF-8 "$input" >"$tmp" 2>/dev/null; then
      if iconv -f UTF-8 -t UTF-8 "$tmp" >/dev/null 2>&1; then
        mv -f "$tmp" "$output"
        log "Converted using encoding: $enc :: $input"
        return 0
      fi
    fi

    return 1
  }

  if [[ -n "$detected" ]]; then
    if _try_enc "$detected"; then
      return 0
    else
      log "Autodetect suggested '$detected' (charset='$charset') but failed; trying fallbacks..."
    fi
  else
    log "Autodetect could not determine charset (charset='$charset'); trying fallbacks..."
  fi

  local enc
  for enc in "${fallbacks[@]}"; do
    [[ -n "$detected" && "$enc" == "$detected" ]] && continue
    if _try_enc "$enc"; then
      return 0
    fi
  done

  die "❌ Failed to convert to UTF-8: $input (tried autodetect + ${fallbacks[*]})"
}

pandoc_tw_to_html_with_underscore_guard() {
  # https://github.com/jgm/pandoc/issues/6964
  # pipeline to “neutralize” underscores (s1) before pandoc, then restored them after.

  local s1="iB2zC0y68yBU32B3Ox6xx6ko5CAop6rG5aU1pT6LG1Be10k65XEh6FVuD3dT3Gy2BJ6La"

  fix_numbered_list \
    | "$SED" -E "s/_/${s1}/g" \
    | move_meta_to_eof \
    | run_with_timeout "twiki->html" pandoc -f twiki -t html --wrap=none --tab-stop=2 --markdown-headings=atx \
    | run_with_timeout "restore underscores" "$SED" -E "s/${s1}/_/g"
}

# ---------- Main ----------
main() {
  need_cmd git
  need_cmd file
  need_cmd iconv
  need_cmd pandoc
  need_cmd timeout

  [[ -d "$SRC_DIR" ]] || die "Source directory not found: $SRC_DIR"
  [[ -f "$LUA_FILTER" ]] || die "Lua filter not found: $LUA_FILTER"

  mkdir -p "$UTF8_DIR" "$HTML_DIR" "$OUT_DIR"

  # Convert every .txt under Source/, excluding RCS ,v files
  while IFS= read -r -d '' src; do
    local base utf8 html outmd
    base="$(basename "$src")"
    utf8="$UTF8_DIR/$base"
    html="$HTML_DIR/${base}.html"
    outmd="$OUT_DIR/$(basename "$base" .txt).md"

    log "Doing $base"

    convert_to_utf8 "$src" "$utf8"

    pandoc_tw_to_html_with_underscore_guard <"$utf8" >"$html"

    if [[ -s "$html" ]]; then
      run_with_timeout "$base (html->gfm)" pandoc \
        -f html -t gfm+pipe_tables+raw_html \
        --wrap=none \
        --lua-filter="$LUA_FILTER" \
        --tab-stop=2 \
        --markdown-headings=atx \
        <"$html" >"$outmd"
    else
      log "WARN: empty HTML produced for $base: $html"
    fi
  done < <(find "$SRC_DIR" -type f -name '*.txt' ! -name '*,v' -print0)

  log "Done. Markdown output is in: $OUT_DIR/"
}

main "$@"

