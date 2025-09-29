return {
  "nvim-telescope/telescope.nvim",
  config = function(opts)
    require("telescope").setup(opts)

    require("telescope").setup({
      defaults = {
        layout_config = {
          horizontal = {
            width = 0.85,
            height = 0.9,
            preview_width = 0.6,
            preview_cutoff = 80,
          },
        },
      },
    })
  end,
}
