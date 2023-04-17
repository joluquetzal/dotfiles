local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    indicator = {
      style = 'none',
    },
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    background = {
      fg = '#657b83',
      bg = '#44475a',
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      fg = '#657b83',
      bg = '#6272a4'
    },
    separator = {
      fg = '#44475a',
      bg = '#44475a'
    },
    separator_selected = {
      fg = '#44475a',
      bg = '#44475a'
    },
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
