-- Force CodeBlock to render as fenced Markdown
function CodeBlock(el)
  local info = ""
  if el.classes and #el.classes > 0 then
    info = table.concat(el.classes, " ")
  end

  -- choose a fence that won't conflict with content
  local fence = "```"
  if el.text:find("```", 1, true) then
    fence = "~~~~"
    if el.text:find("~~~~", 1, true) then
      fence = "````"
    end
  end

  local header = fence .. (info ~= "" and (" " .. info) or "")
  local body = el.text
  return pandoc.RawBlock("markdown", header .. "\n" .. body .. "\n" .. fence)
end

