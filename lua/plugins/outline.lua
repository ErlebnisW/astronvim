return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>a", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
  opts = {
    -- Your setup opts here
    outline_window = {
      width = 20,
      relative_width = true,

    },
    auto_close = true,
    auto_jump = true,
    show_numbers = true,
    show_cursorline = true,
    outline_items = {
      show_symbol_lineno = true,
    },
  },
}
