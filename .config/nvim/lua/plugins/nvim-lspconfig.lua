return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = { mason = false },
      clangd = { mason = false }
    }
  }
}
