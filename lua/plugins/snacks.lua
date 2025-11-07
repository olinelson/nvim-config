return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = false,
          ignored = true, -- respect .gitignore
        },
        grep = {
          hidden = false,
          ignored = true, -- respect .gitignore
          exclude = { "pnpm-lock.yaml", "Gemfile.lock" },
        },
      },
    },
  },
}
