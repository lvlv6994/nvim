vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true, nowait = true }

map('n','j','<nop>',opts)
map('n','k','<nop>',opts)
map('n','l','<nop>',opts)
map('', 'h', '<left>', opts)
map('', 'e', '<up>', opts)
map('', 'n', '<down>', opts)
map('', 'i', '<right>', opts)
map('', 's', '<Insert>', opts)

map('', '<c-p>', '<up>', opts)
map('', '<c-n>', '<down>', opts)
map('', '<c-b>', '<left>', opts)
map('', '<c-f>', '<right>', opts)
map('i', '<M-b>', '<S-left>', opts)
map('i', '<M-f>', '<S-right>', opts)
map('', '<c-e>', '<end>', opts)
map('', '<c-a>', '<home>', opts)
map('i', '<c-d>', '<del>', opts)
map('', '<c-c>', '<ESC>:qa<CR>',opts)
map('n', '<M-;>', '<cmd>Commentary<CR>', opts)
map('v', '<M-;>', ':Commentary<CR>', opts)
map('i', '<M-;>', '<C-o>:Commentary<CR>', opts)

map('n', '<c-s>', ':w<CR>', opts)
map('n', ';', ':', {})
map('v', ';', ':', {})
map('n', '!', ':!', {})
map('i', '<c-j>', 'copilot#Accept("\\<CR>")', { silent = true, expr = true, script = true })
map('i', '<c-s>', '<C-o>:w<CR>', opts)
map('i', '<c-k>', '<C-o>d$', opts)
map('i', '<M-d>', '<C-o>dw', opts)
map('n', 't', '<cmd>NvimTreeFindFileToggle<CR>', opts)
map('n', 'T', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<C-q>', '<cmd>Telescope find_files prompt_prefix=🔍 <CR>', opts)
map('n', '<M-x>', '<cmd>Telescope<CR>', opts)
map('n', 'F', '<cmd>FloatermToggle <CR>', opts)
map('n', '<c-g>', '<cmd>FloatermNew --width=0.8 --height=0.8 lazygit<CR>', opts)
map('t', '<esc>', '<C-\\><C-n>', opts)
map('t', '<c-o>', '<C-\\><C-o>', opts)
map('t', '<c-r>', '<C-\\><C-r>', opts)

map('t', '<c-p>', '<up>', opts)
map('t', '<c-n>', '<down>', opts)
map('t', '<c-b>', '<left>', opts)
map('t', '<c-f>', '<right>', opts)

vim.cmd('inoremap <C-a> <home>')
vim.cmd('inoremap <C-b> <left>')
vim.cmd('inoremap <C-f> <right>')
vim.cmd('inoremap <C-e> <end>')
vim.cmd('inoremap <C-d> <del>')
vim.cmd('inoremap <C-n> <down>')
vim.cmd('inoremap <C-p> <up>')
vim.cmd('inoremap <C-k> <C-o>d$')
-- vim.cmd('inoremap <C-u> <C-o>dd')
vim.cmd('inoremap <M-d> <C-o>dw')
vim.cmd('inoremap <M-f> <S-right>')
vim.cmd('inoremap <M-b> <S-left>')
vim.cmd('inoremap <M-w> <ESC>yypI')
vim.cmd('nnoremap <M-w> yyp')
-- comment the c-w , or c-h ,or c-u delete char forward

vim.cmd('cnoremap <C-u> <C-e><C-u>')
vim.cmd('cnoremap <C-a> <home>')
vim.cmd('cnoremap <C-b> <left>')
vim.cmd('cnoremap <C-f> <right>')
vim.cmd('cnoremap <C-e> <end>')
vim.cmd('cnoremap <C-d> <del>')
vim.cmd('cnoremap <C-n> <down>')
vim.cmd('cnoremap <C-p> <up>')



-- This Vim setting controls the delay before the popup appears. The way it
-- works is, if you have mappings for, say, the key "a" and the key sequence
-- "ab", if you type "a", then Vim waits timeoutlen, and if you don't press
-- another key before that amount of time, then the "a" mapping is executed, but
-- if you press "b" before timeoutlen, then the "ab" mapping is executed.
vim.o.timeoutlen = 300

-- Use the desc option to Vim's built-in vim.keymap.set to describe mappings.
vim.keymap.set('n', '<Space>w', '<Cmd>w<CR>', {desc='Save'})
vim.keymap.set('n', '<Space>q', '<Cmd>q<CR>', {desc='Quit'})

-- You can put mappings several keys deep, in a mapping group. For some kinds of
-- mappings, even if you don't include a description, key-menu will try to
-- render them nicely, for example by not showing the <Cmd> and <CR>.
vim.keymap.set('n', '<Space>gs', '<Cmd>Git status<CR>')
vim.keymap.set('n', '<Space>gc', '<Cmd>Git commit<CR>')

