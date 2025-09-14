return {
  "nvim-flutter/flutter-tools.nvim",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
    { "stevearc/dressing.nvim", lazy = true },
  },
  opts = {
    widget_guides = {
      enabled = true,
    },

    lsp = {
      color = {
        enabled = true,
        -- background = true,
        -- foreground = false,
        -- virtual_text = false,
      },
    },

    dev_log = {
      notify_errors = true,
      focus_on_open = false,
    },

    outline = {
      open_cmd = "30vnew",
    },

    settings = {
      completeFunctionCalls = false,
      enableSnippets = false,
    },
  },
}
