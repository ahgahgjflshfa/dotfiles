return {
  "okuuva/auto-save.nvim",
  version = "*",
  cmd = "ASToggle",
  event = "VeryLazy",
  opts = {
    -- function that takes the buffer handle and determines whether to save the current buffer or not
    -- return true: if buffer is ok to be saved
    -- return false: if it's not ok to be saved
    -- if set to `nil` then no specific condition is applied
    trigger_events = {
      immediate_save = {},
      defer_save = { "FocusLost", "BufLeave", "BufWinLeave" },
      cancel_deferred_save = { "InsertEnter" },
    },

    condition = nil,

    debounce_delay = 1500, -- delay after which a pending save is executed

    -- log debug messages to 'auto-save.log' file in neovim cache directory, set to `true` to enable
    debug = false,
  },
}
