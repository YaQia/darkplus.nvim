local M = {}
local theme = require('darkplus.theme')
local dark_palette = require('darkplus.palette')
local light_palette = require('darkplus.palette_light')

local function get_palette()
  if vim.o.background == 'light' then
    return light_palette
  end

  return dark_palette
end

local function apply()
  vim.cmd('hi clear')

  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'darkplus'

  theme.set_highlights(get_palette())
  -- allow lualine to rebuild theme with the active palette
  package.loaded['lualine.themes.darkplus'] = nil

  -- re-run ColorScheme autocommands so plugins (e.g. devicons) can reapply their highlights
  vim.api.nvim_exec_autocmds('ColorScheme', { pattern = vim.g.colors_name, modeline = false })
end

M.setup = function()
  apply()

  local group = vim.api.nvim_create_augroup('DarkPlusBackgroundWatcher', { clear = true })
  vim.api.nvim_create_autocmd('OptionSet', {
    group = group,
    pattern = 'background',
    callback = function()
      if vim.g.colors_name ~= 'darkplus' then
        return
      end

      apply()
    end,
  })
end

return M
