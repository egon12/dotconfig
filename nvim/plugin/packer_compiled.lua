-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nakama/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nakama/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nakama/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nakama/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nakama/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  dracula = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  ["fern-renderer-nerdfont.vim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/fern-renderer-nerdfont.vim",
    url = "https://github.com/lambdalisue/fern-renderer-nerdfont.vim"
  },
  ["fern.vim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/fern.vim",
    url = "https://github.com/lambdalisue/fern.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["gotests-vim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/gotests-vim",
    url = "https://github.com/buoto/gotests-vim"
  },
  ["hologram.nvim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/hologram.nvim",
    url = "https://github.com/edluffy/hologram.nvim"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nerdfont.vim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/nerdfont.vim",
    url = "https://github.com/lambdalisue/nerdfont.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  quickfixsigns_vim = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/quickfixsigns_vim",
    url = "https://github.com/tomtom/quickfixsigns_vim"
  },
  ["semantic-highlight.vim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/semantic-highlight.vim",
    url = "https://github.com/jaxbot/semantic-highlight.vim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/suda.vim",
    url = "https://github.com/lambdalisue/suda.vim"
  },
  ["vim-emoji-ab"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-emoji-ab",
    url = "https://gitlab.com/gi1242/vim-emoji-ab"
  },
  ["vim-flutter"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-flutter",
    url = "https://github.com/thosakwe/vim-flutter"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-http"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-http",
    url = "https://github.com/nicwest/vim-http"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/maxmellon/vim-jsx-pretty"
  },
  ["vim-lsc"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-lsc",
    url = "https://github.com/natebosch/vim-lsc"
  },
  ["vim-lsc-dart"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-lsc-dart",
    url = "https://github.com/natebosch/vim-lsc-dart"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/vim-ripgrep",
    url = "https://github.com/jremmen/vim-ripgrep"
  },
  xmledit = {
    loaded = true,
    path = "/home/nakama/.local/share/nvim/site/pack/packer/start/xmledit",
    url = "https://github.com/sukima/xmledit"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MarkdownPreview lua require("packer.load")({'markdown-preview.nvim'}, { cmd = "MarkdownPreview", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
