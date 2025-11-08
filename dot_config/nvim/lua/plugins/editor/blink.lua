return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.completion = opts.completion or {}

    -- documentation border
    opts.completion.documentation = opts.completion.documentation or {}
    opts.completion.documentation.window =
      vim.tbl_extend("force", opts.completion.documentation.window or {}, {
        border = "rounded",
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
      })

    -- menu border
    opts.completion.menu = vim.tbl_extend("force", opts.completion.menu or {}, {
      border = "rounded",
      draw = { gap = 2 },
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
    })
  end,
}
