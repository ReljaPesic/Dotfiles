return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      float = {
        border = "rounded", -- or "single", "double", "solid"
        focusable = false,
        source = "if_many",
      },
    },
  },
}
