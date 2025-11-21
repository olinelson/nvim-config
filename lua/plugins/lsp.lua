return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      ruby_lsp = {
        mason = false,
        cmd = { vim.fn.expand("~/.local/share/mise/shims/ruby-lsp") },
        init_options = {
          addonSettings = {
            ["Ruby LSP Rails"] = {
              enablePendingMigrationsPrompt = false,
            },
          },
        },
      },
      rubocop = false,
    },
  },
}
