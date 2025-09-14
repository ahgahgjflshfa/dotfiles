return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  event = "VeryLazy",
  opts = function()
    return {
      display = {
        theme = "catppuccin",
        flavor = "accent",
      },

      hooks = {
        post_activity = function(_, activity)
          local version = vim.version()
          activity.assets.small_text = string.format("Neovim %s.%s.%s", version.major, version.minor, version.patch)
        end,
      },
    }
  end,
}
