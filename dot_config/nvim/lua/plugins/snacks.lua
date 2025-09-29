return {
  "folke/snacks.nvim",
  opts = {
    indent = { enabled = false },
    terminal = {
      win = {
        style = "float",
        border = "rounded",
      },
    },
    lazygit = {
      win = {
        width = 0.95,
        height = 0.95,
      },
    },
    dashboard = {
      preset = {
        header = [[

                                                                   
      ████ ██████           █████      ██                     
    ███████████             █████                             
    █████████ ███████████████████ ███   ███████████   
    █████████  ███    █████████████ █████ ██████████████   
  █████████ ██████████ █████████ █████ █████ ████ █████   
███████████ ███    ███ █████████ █████ █████ ████ █████  
██████  █████████████████████ ████ █████ █████ ████ ██████ 
        ]],
      },

      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        {
          icon = " ",
          title = "Recent Files",
          section = "recent_files",
          indent = 2,
          padding = 1,
        },
        {
          icon = " ",
          title = "Projects",
          section = "projects",
          indent = 2,
          padding = 1,
        },
        { section = "startup" },
      },
    },
  },
}
