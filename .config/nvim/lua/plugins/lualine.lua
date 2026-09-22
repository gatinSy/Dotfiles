return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options.component_separators = ""
    opts.options.section_separators = { left = "", right = "" }

    opts.sections.lualine_a = {
      { "mode", separator = { left = "", right = "" }, padding = { left = 1, right = 1 } },
    }
    opts.sections.lualine_c = {
      { "filetype",   icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      { "filename",   path = 0 },
      { "diagnostics" },
    }
    opts.sections.lualine_y = {}
    opts.sections.lualine_z = {
      { "location", separator = { left = "", right = "" }, padding = { left = 1, right = 2 } },
    }
  end,
}
