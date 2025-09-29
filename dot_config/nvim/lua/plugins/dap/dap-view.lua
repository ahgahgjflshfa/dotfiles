return {
  {
    "igorlfs/nvim-dap-view",
    ---@module 'dap-view'
    ---@type dapview.Config
    event = "LspAttach",
    keys = {
      {
        "<leader>du",
        "<cmd>DapViewToggle<CR>",
        desc = "Dap UI",
        mode = { "n" },
      },
    },
    opts = {
      winbar = {
        controls = {
          enabled = true,
        },
      },
    },
  },
}
