return {
  "hrsh7th/nvim-cmp",
  optional = true,
  -- dependencies = {
  --   { "hrsh7th/cmp-emoji", lazy = true },
  --   { "hrsh7th/cmp-nvim-lua", lazy = true },
  --   { "hrsh7th/cmp-nvim-lsp-signature-help", lazy = true },
  -- },
  opts = function(_, opts)
    local cmp = require("cmp")

    require("luasnip.loaders.from_vscode").lazy_load()

    opts.snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    }

    opts.sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "path" },

      -- { name = "nvim_lua" },
      -- { name = "nvim_lsp_signature_help" },
      { name = "buffer" },
      { name = "emoji" },

      { name = "lazydev" },
    }

    opts.window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    }

    opts.formatting = {
      fileds = { "menu", "abbr", "kind" },
      format = function(entry, item)
        local menu_icon = {
          nvim_lsp = "λ",
          vsnip = "⋗",
          buffer = "Ω",
          path = "🖫",
        }
        item.menu = menu_icon[entry.source.name]
        return item
      end,
    }
  end,
}
