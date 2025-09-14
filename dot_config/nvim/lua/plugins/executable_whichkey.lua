return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = (function()
        return {
          { "<leader>i", group = "inspect" },
          -- { "<leader>ip", desc = "peek definition" },
          -- { "<leader>iz", desc = "peek fold" },
          -- { "<leader>if", desc = "lspsaga finder" },
        }
      end)(),
    },
  },
}
