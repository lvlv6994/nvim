-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/xm/.cache/nvim/packer_hererocks/2.1.1734355927/share/lua/5.1/?.lua;/Users/xm/.cache/nvim/packer_hererocks/2.1.1734355927/share/lua/5.1/?/init.lua;/Users/xm/.cache/nvim/packer_hererocks/2.1.1734355927/lib/luarocks/rocks-5.1/?.lua;/Users/xm/.cache/nvim/packer_hererocks/2.1.1734355927/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/xm/.cache/nvim/packer_hererocks/2.1.1734355927/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["blink.cmp"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/blink.cmp",
    url = "https://github.com/saghen/blink.cmp"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["codecompanion.nvim"] = {
    config = { "\27LJ\2\n¬\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\14providers\1\0\1\14providers\0\vgemini\1\0\1\vgemini\0\1\0\1\fapi_key,AIzaSyAHjcD2ApEjtuGc8z2irZ7hmVh45UNaeJ0\nsetup\18codecompanion\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/codecompanion.nvim",
    url = "https://github.com/olimorris/codecompanion.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\nÚ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\t\vheight\3d\nwidth\3P\17height_ratio\4æÌ™³\6æÌ™ÿ\3\16width_ratio\4æÌ™³\6æÌ™ÿ\3\npager\1\nstyle\15dark|light\vborder\vshadow\17install_path\17~/.local/bin\14glow_path\27/opt/homebrew/bin/glow\nsetup\tglow\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  ["headlines.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14headlines\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["hologram.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/hologram.nvim",
    url = "https://github.com/edluffy/hologram.nvim"
  },
  ["image.nvim"] = {
    config = { "\27LJ\2\nÒ\6\0\0\6\0\24\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0005\5\n\0=\5\6\4=\4\v\0035\4\f\0005\5\r\0=\5\6\4=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\25hijack_file_patterns\1\a\0\0\n*.png\n*.jpg\v*.jpeg\n*.gif\v*.webp\v*.avif#window_overlap_clear_ft_ignore\1\6\0\0\rcmp_menu\rcmp_docs\17snacks_notif\15scrollview\20scrollview_sign\17integrations\bcss\1\0\1\fenabled\1\thtml\1\0\1\fenabled\1\ntypst\1\2\0\0\ntypst\1\0\2\fenabled\2\14filetypes\0\nneorg\1\2\0\0\tnorg\1\0\2\fenabled\2\14filetypes\0\rmarkdown\1\0\5\nneorg\0\rmarkdown\0\bcss\0\thtml\0\ntypst\0\14filetypes\1\3\0\0\rmarkdown\fvimwiki\1\0\6\fenabled\2\14filetypes\0\21floating_windows\1 only_render_image_at_cursor\1\27download_remote_images\2\25clear_in_insert_mode\1\1\0\t$tmux_show_only_in_active_window\1$editor_only_render_when_focused\1\17integrations\0\14processor\15magick_cli\fbackend\nkitty#window_overlap_clear_ft_ignore\0!window_overlap_clear_enabled\1!max_height_window_percentage\0032\25hijack_file_patterns\0\nsetup\nimage\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/image.nvim",
    url = "https://github.com/3rd/image.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["notebook.nvim"] = {
    config = { "\27LJ\2\n³\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\23virtual_text_style\1\0\2\afg\14lightblue\vitalic\2\1\0\4\19show_cell_type\2\15show_index\2\22insert_blank_line\2\23virtual_text_style\0\nsetup\rnotebook\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/notebook.nvim",
    url = "https://github.com/meatballs/notebook.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  orgmode = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\forgmode\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["render-markdown.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20render-markdown\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/opt/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  ["taglist.vim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/taglist.vim",
    url = "https://github.com/vim-scripts/taglist.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-autoformat",
    url = "https://github.com/vim-autoformat/vim-autoformat"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: goto-preview
time([[Config for goto-preview]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0", "config", "goto-preview")
time([[Config for goto-preview]], false)
-- Config for: codecompanion.nvim
time([[Config for codecompanion.nvim]], true)
try_loadstring("\27LJ\2\n¬\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\14providers\1\0\1\14providers\0\vgemini\1\0\1\vgemini\0\1\0\1\fapi_key,AIzaSyAHjcD2ApEjtuGc8z2irZ7hmVh45UNaeJ0\nsetup\18codecompanion\frequire\0", "config", "codecompanion.nvim")
time([[Config for codecompanion.nvim]], false)
-- Config for: headlines.nvim
time([[Config for headlines.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14headlines\frequire\0", "config", "headlines.nvim")
time([[Config for headlines.nvim]], false)
-- Config for: glow.nvim
time([[Config for glow.nvim]], true)
try_loadstring("\27LJ\2\nÚ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\t\vheight\3d\nwidth\3P\17height_ratio\4æÌ™³\6æÌ™ÿ\3\16width_ratio\4æÌ™³\6æÌ™ÿ\3\npager\1\nstyle\15dark|light\vborder\vshadow\17install_path\17~/.local/bin\14glow_path\27/opt/homebrew/bin/glow\nsetup\tglow\frequire\0", "config", "glow.nvim")
time([[Config for glow.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: orgmode
time([[Config for orgmode]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\forgmode\frequire\0", "config", "orgmode")
time([[Config for orgmode]], false)
-- Config for: notebook.nvim
time([[Config for notebook.nvim]], true)
try_loadstring("\27LJ\2\n³\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\23virtual_text_style\1\0\2\afg\14lightblue\vitalic\2\1\0\4\19show_cell_type\2\15show_index\2\22insert_blank_line\2\23virtual_text_style\0\nsetup\rnotebook\frequire\0", "config", "notebook.nvim")
time([[Config for notebook.nvim]], false)
-- Config for: image.nvim
time([[Config for image.nvim]], true)
try_loadstring("\27LJ\2\nÒ\6\0\0\6\0\24\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0005\5\n\0=\5\6\4=\4\v\0035\4\f\0005\5\r\0=\5\6\4=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\25hijack_file_patterns\1\a\0\0\n*.png\n*.jpg\v*.jpeg\n*.gif\v*.webp\v*.avif#window_overlap_clear_ft_ignore\1\6\0\0\rcmp_menu\rcmp_docs\17snacks_notif\15scrollview\20scrollview_sign\17integrations\bcss\1\0\1\fenabled\1\thtml\1\0\1\fenabled\1\ntypst\1\2\0\0\ntypst\1\0\2\fenabled\2\14filetypes\0\nneorg\1\2\0\0\tnorg\1\0\2\fenabled\2\14filetypes\0\rmarkdown\1\0\5\nneorg\0\rmarkdown\0\bcss\0\thtml\0\ntypst\0\14filetypes\1\3\0\0\rmarkdown\fvimwiki\1\0\6\fenabled\2\14filetypes\0\21floating_windows\1 only_render_image_at_cursor\1\27download_remote_images\2\25clear_in_insert_mode\1\1\0\t$tmux_show_only_in_active_window\1$editor_only_render_when_focused\1\17integrations\0\14processor\15magick_cli\fbackend\nkitty#window_overlap_clear_ft_ignore\0!window_overlap_clear_enabled\1!max_height_window_percentage\0032\25hijack_file_patterns\0\nsetup\nimage\frequire\0", "config", "image.nvim")
time([[Config for image.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd render-markdown.nvim ]]

-- Config for: render-markdown.nvim
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20render-markdown\frequire\0", "config", "render-markdown.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
