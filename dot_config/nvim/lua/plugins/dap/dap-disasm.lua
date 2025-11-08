return {
  "Jorenar/nvim-dap-disasm",
  event = "LspAttach",
  dependencies = {
    "igorlfs/nvim-dap-view",
    config = true,
  },
  opts = {
    -- Add disassembly view to elements of nvim-dap-ui
    dapui_register = false,

    -- Add disassembly view to nvim-dap-view
    dapview_register = true,

    -- If registered, pass section configuration to nvim-dap-view
    dapview = {
      keymap = "D",
      label = "Disassembly [D]",
      short_label = "󰒓 [D]",
    },

    -- Add custom REPL commands for stepping with instruction granularity
    repl_commands = true,

    -- Show winbar with buttons to step into the code with instruction granularity
    -- This settings is overriden (disabled) if the dapview integration is enabled and the plugin is installed
    winbar = true,

    -- The sign to use for instruction the exectution is stopped at
    sign = "DapStopped",

    -- Number of instructions to show before the memory reference
    ins_before_memref = 16,

    -- Number of instructions to show after the memory reference
    ins_after_memref = 16,

    -- Labels of buttons in winbar
    controls = {
      step_into = "Step Into",
      step_over = "Step Over",
      step_back = "Step Back",
    },

    -- Columns to display in the disassembly view
    columns = {
      "address",
      "instructionBytes",
      "instruction",
    },
  },
  config = function(opts)
    require("dap-disasm").setup(opts)
  end,
}
