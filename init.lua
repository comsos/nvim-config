-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.shell = '"C:/Program Files/Git/bin/bash.exe"'
-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Override `d` commands to use the black hole register but preserve functionality
map("n", "d", '"_d', opts) -- Normal mode deletion
map("v", "d", '"_d', opts) -- Visual mode deletion
map("n", "dd", '"_dd', opts) -- Delete a whole line without affecting clipboard
map("n", "D", '"_D', opts) -- Delete to end of line without affecting clipboard

-- Prevent `daw` and similar commands from entering insert mode
map("n", "c", '"_c', opts)
map("v", "c", '"_c', opts)
map("n", "C", '"_C', opts)

require "lazy_setup"
require "polish"
