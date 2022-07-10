local opt = vim.opt             -- options table
local cmd = vim.cmd

cmd 'colorscheme delek'
opt.modeline = false            -- prevent security vulnerability (FIXME: Is this still needed for Neovim?)
opt.modelines = 0
opt.expandtab = true            -- convert tabs to spaces
opt.tabstop = 4                 -- spaces per tab
opt.shiftwidth = 4              -- indent size
opt.softtabstop = 0             -- use shiftwidth value
opt.list = true                 -- invisible characters
opt.number = true               -- line numbers
opt.relativenumber = true       -- relative line numbers
opt.wrap = false                -- line wrap
opt.autoindent = true           -- Indent next line at current line level
