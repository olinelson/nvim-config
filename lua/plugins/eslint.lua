return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          settings = {
            workingDirectories = { mode = "auto" },
            experimental = {
              useFlatConfig = true,
            },
            -- Tell ESLint to use TypeScript for module resolution
            typescript = {
              enabled = true,
              project = "./tsconfig.json",
            },
            -- Enable TypeScript path mapping support
            resolve = {
              typescript = {
                project = "./tsconfig.json",
              },
            },
          },
          -- Ensure proper root directory detection
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("eslint.config.js", "package.json")(fname) or util.find_git_ancestor(fname)
          end,
        },
      },
    },
  },
}
