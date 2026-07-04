return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      width = vim.o.columns,
      preset = {
        keys = {
          {
            text = {
              { "󰑓 ", hl = "SnacksDashboardIcon" },
              { "Last session ", hl = "SnacksDashboardDesc" },
              { "[l]", hl = "SnacksDashboardKey" },
            },
            key = "l",
            action = function()
              require("persistence").load({ last = true })
            end,
          },
          {
            text = {
              { " ", hl = "SnacksDashboardIcon" },
              { "New File ", hl = "SnacksDashboardDesc" },
              { "[n]", hl = "SnacksDashboardKey" },
            },
            key = "n",
            action = ":ene | startinsert",
          },
          {
            text = {
              { " ", hl = "SnacksDashboardIcon" },
              { "Find Files ", hl = "SnacksDashboardDesc" },
              { "[f]", hl = "SnacksDashboardKey" },
            },
            key = "f",
            action = function()
              Snacks.dashboard.pick("files")
            end,
          },
          {
            text = {
              { " ", hl = "SnacksDashboardIcon" },
              { "Recent Files ", hl = "SnacksDashboardDesc" },
              { "[r]", hl = "SnacksDashboardKey" },
            },
            key = "r",
            action = function()
              Snacks.dashboard.pick("oldfiles")
            end,
          },
          {
            text = {
              { " ", hl = "SnacksDashboardIcon" },
              { "Dotfiles ", hl = "SnacksDashboardDesc" },
              { "[d]", hl = "SnacksDashboardKey" },
            },
            key = "d",
            action = function()
              Snacks.dashboard.pick("files", { cwd = vim.fn.expand("~/.config") })
            end,
          },
          {
            text = {
              { "󰈆 ", hl = "SnacksDashboardIcon" },
              { "Quit ", hl = "SnacksDashboardDesc" },
              { "[q]\n", hl = "SnacksDashboardKey" },
            },
            key = "q",
            action = ":qa",
          },
        },
        header = [[
⠀⠀⠀⡎⢉⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢈⣁⠆⡀⠀⠀⠀⠀⣄⠀⠀
⠀⠀⠀⢳⢹⠁⠀⠱⡀⠀⠀⢈⠆⠀
⠀⠀⠀⠠⢾⣆⠀⠞⠁⠀⣠⠮⡤⡀
⠀⠀⠀⠀⠐⠹⢦⡀⠀⠰⠁⡀⢰⡁
⠀⠀⠀⢔⠞⠛⠶⣟⣦⣀⠀⠀⠛⠀
⠀⠀⠀⠌⣤⡴⠀⠀⠀⠉⠳⡰⡡⠄
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠹⡄⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡇⢄⠙⢀⢷⢁
⠀⠀⠀⠀⣀⣄⡀⠀⠑⠀⠀⠊⣸⢰
⠀⠀⠀⡔⠁⠠⠗⠀⠀⠀⠀⠀⡭⠄
⠀⠀⠀⢣⠀⠀⠲⣄⣀⣀⢤⡾⠁⠀
⠀⠀⠀⠀⠑⠢⠀⠀⢠⣴⣟⠍⠀⠀
⠐⠄⠄⠤⢐⡢⣀⡼⡾⠋⠀⠀⠀⠀
⠀⠀⢀⠔⣡⣞⠏⠀⠀⠀⠀⠀⠀⠀
⠀⠔⢡⠞⠁⡎⠀⠔⠒⡄⠀⠀⠀⠀
⡎⢰⠃⠀⠀⡗⠄⠁⣀⠆⠀⠀⠀⠀
⠀⠁⢀⠃⠀⠣⡀⠀⠀⠀⠀⣥⠀⠱
⠀⠀⡂⢧⡀⠐⢌⣀⠀⠀⢀⡠⢠⢀
⠀⠀⠂⠀⠁⠀⠀⢐⠩⣏⣋⡸⠗⠊
⠀⠀⠀⠀⠀⠈⠉⡆⢡⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠑⠤⠔⠁⣸⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠥⠃⠀⠀⠀⠀]]
      },
      sections = {
        { section = "header", align = "center", padding = 1 },
        { section = "keys", gap = 1, align = "center" },
        { section = "startup" },
      },
    },
  },
}
