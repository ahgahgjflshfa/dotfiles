return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach",
  priority = 1000,
  opts = {
    preset = "ghost",
    options = {
      set_arrow_to_diag_color = true,
    },
    virt_texts = {
      priority = 9000,
    },
  },
}
