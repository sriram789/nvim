local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"

-- Mouse
opt.mouse = "a"

-- Clipboard
opt.clipboard = "unnamedplus"

-- Split behavior
opt.splitbelow = true
opt.splitright = true

-- Scrolling
opt.scrolloff = 8

-- Undo history
opt.undofile = true

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- Faster update time
opt.updatetime = 250
