return {
  {
    "ellisonleao/gruvbox.nvim",
    event = "VeryLazy",
    opts = {
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      overrides = {
        Pmenu = { link = "Normal" },
        StatusLine = { bg = "none" },
        StatusLineNC = { bg = "none" },
      },
      contrast = "hard",
      transparent_mode = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
