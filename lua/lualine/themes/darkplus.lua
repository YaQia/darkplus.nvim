local dark = require('darkplus.palette')
local light = require('darkplus.palette_light')

local function get_palette()
  if vim.o.background == 'light' then
    return light
  end

  return dark
end

local function build_colors()
  local p = get_palette()
  return {
    blue = p.blue or '#569cd6',
    green = p.green or '#6a9955',
    purple = p.purple or '#c586c0',
    red = p.red or '#d16969',
    yellow = p.yellow or '#dcdcaa',
    orange = p.yellow_orange or p.orange or '#D7BA7D',
    fg = p.alt_fg or p.fg,
    bg = p.alt_bg or p.bg,
    gray = p.line or p.alt_bg or '#333333',
    light_gray = p.gray or p.light_gray or '#5c6370',
    gray3 = p.fold_bg or p.line or '#3e4452',
    inactive_fg = p.context or p.gray or '#6f6f6f',
  }
end

local colors = build_colors()

return {
	normal = {
		a = { fg = colors.bg, bg = colors.blue },
		b = { fg = colors.blue, bg = colors.gray },
		c = { fg = colors.fg, bg = colors.bg },
		y = { fg = colors.blue, bg = colors.gray },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.green },
		b = { fg = colors.green, bg = colors.gray },
		y = { fg = colors.green, bg = colors.gray },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.purple },
		b = { fg = colors.purple, bg = colors.gray },
		y = { fg = colors.purple, bg = colors.gray },
	},
	command = {
		a = { fg = colors.bg, bg = colors.orange },
		b = { fg = colors.orange, bg = colors.gray },
		y = { fg = colors.orange, bg = colors.gray },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red },
		b = { fg = colors.red, bg = colors.gray },
		y = { fg = colors.red, bg = colors.gray },
	},

	inactive = {
		a = { bg = colors.bg, fg = colors.blue },
		-- gui = "bold"
		b = { bg = colors.gray, fg = colors.inactive_fg },
		c = { bg = colors.bg, fg = colors.gray },
	},
}
