return {
  {
    "ahmedkhalf/project.nvim",
    opts = {
      -- Only use .git as the pattern to ensure we always get the git root
      -- This prevents subdirectories with package.json/etc from being detected as roots
      patterns = { ".git" },
      -- Detection method: use pattern detection
      detection_methods = { "pattern" },
      -- Silent mode - don't show messages when switching projects
      silent_chdir = true,
    },
  },
}
