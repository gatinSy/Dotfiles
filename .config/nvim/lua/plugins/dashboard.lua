return {
  "folke/snacks.nvim",
  opts = {
    ---@class snacks.dashboard.Opts: snacks.dashboard.Config
    dashboard = {
      width = 36,
      preset = {
        header = [[
 _  _ ___  ___ __   __ ___ __  __
| \| | __|/ _ \\ \ / /|_ _|  \/  |
| .` | _|| (_) |\ V /  | || |\/| |
|_|\_|___|\___/  \_/  |___|_|  |_|]],
        keys = {
          { icon = "", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = "", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = "", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = "", key = "s", desc = "Restore Session", action = ":lua require('persistence').load()" },
          { icon = "", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = "󰗽", key = "q", desc = "Quit", action = ":qa" }
        }
      },
      formats = {
        key = function(item)
          return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
        end,
      },
      sections = {
        { section = "header" },
        { section = "keys",  gap = 1, padding = 1 },
        -- { section = "startup" },
      },
    }
  }
}
