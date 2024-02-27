local ok, autocolor = pcall(require, 'autoColor')
if not ok then
  return
end
autocolor.setup({
  {
    language = "*.default", -- default means any filetype not declared on setup
    transparent = true,     -- if you want no background (default false)
    theme = "tokyonight"    --theme name
  },
  {
    language = { "*.java", "*.sql", "*.yml", "*.groovy", "*.bat", "*.gradle" }, -- file extension
    transparent = false,
    theme = "darcula-solid"
  },
  {
    language = { "*.js", "*.html", "*.astro" }, -- you can also pass tables with file entensions
    theme = "tokyonight"
    -- you can leave the transparent variable out
  },
})
