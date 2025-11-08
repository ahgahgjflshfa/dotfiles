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
    })
  end,
}
