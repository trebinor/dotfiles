-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt             -- options table
local cmd = vim.cmd

opt.number = false
opt.cursorline = false
opt.cursorcolumn = true
opt.tabstop = 4                 -- spaces per tab
opt.shiftwidth = 4              -- indent size
opt.softtabstop = 0             -- use shiftwidth value
opt.list = true                 -- invisible characters
opt.number = true               -- line numbers
opt.relativenumber = true       -- relative line numbers
opt.wrap = false                -- line wrap
opt.autoindent = true           -- Indent next line at current line level
opt.expandtab = true
