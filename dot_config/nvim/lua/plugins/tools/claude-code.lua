return {
  "greggh/claude-code.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- dunno why opts = {} config function(opts) setup(opts) doesn't work
    require("claude-code").setup({
      command = "ccr code", -- claude code router
      window = {
        position = "float",
        float = {
          width = "90%",
          height = "90%",
          row = "center",
          col = "center",
          relative = "editor",
          border = "rounded",
        },
      },
    })
  end,
}
