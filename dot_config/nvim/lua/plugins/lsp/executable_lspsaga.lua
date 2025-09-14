return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    { "nvim-tree/nvim-web-devicons", lazy = true },
  },
  config = function()
    require("lspsaga").setup({
      lightbulb = {
        enable = false,
      },
      -- implement = {
      --   enable = true,
      --   sign = false,
      --   virtual_text = true,
      --   priority = 100,
      -- },
    })
  end,
}
