return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics.virtual_text = false
    -- opts.codelens.enabled = true
    return opts
  end,
}
