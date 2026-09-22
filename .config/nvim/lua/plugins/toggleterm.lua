return {
  "akinsho/toggleterm.nvim",
  --  ---@module 'toggleterm',
  --  ---@type ToggleTermConfig
  opts = {
    shade_terminals = false,
    autochdir = true
  },
  keys = {
    {
      "<leader>tt",
      "<cmd>ToggleTerm<CR>",
      desc = "Open terminal"
    },
    {
      "<leader>tf",
      "<cmd>ToggleTerm direction=float<CR>",
      desc = "Float terminal"
    },
    {
      "<leader>th",
      "<cmd>ToggleTerm direction=horizontal<CR>",
      desc = "Horizontal terminal"
    },
    {
      "<leader>tv",
      "<cmd>ToggleTerm direction=vertical<CR>",
      desc = "Vertical terminal"
    }
  }
}
