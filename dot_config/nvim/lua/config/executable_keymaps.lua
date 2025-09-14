-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Easier editing
vim.keymap.set(
  "n",
  "<CR>",
  "o<ESC>",
  { noremap = true, silent = true, desc = "Add empty line below" }
)
vim.keymap.set(
  "n",
  "<s-cr>",
  "O<esc>",
  { noremap = true, silent = true, desc = "Add empty line above" }
)

-- Lspsaga
vim.keymap.set("n", "<leader>iz", function()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  if not winid then
    vim.cmd([[ Lspsaga hover_doc ]])
  end
end, { desc = "Peak Folded Lines" })

vim.keymap.set(
  "n",
  "<leader>if",
  "<cmd>Lspsaga finder def+ref+imp<CR>",
  { desc = "Find references" }
)

-- Conflict with GlazeWM
vim.keymap.set("n", "<C-A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<C-A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-A-k>", ":m '>-2<CR>gv=gv")
