-- neovide options
if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font Mono:h13"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_input_ime = true
  vim.g.neovide_refresh_rate = 165

  vim.g.neovide_padding_right = 15
  vim.g.neovide_padding_left = 15
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
