local colors = {
  blue   = '#569cd6',
  green  = '#6a9955',
  purple = '#c586c0',
  red    = '#d16969',
  yellow = '#dcdcaa',
  orange = '#D7BA7D',
  fg     = '#ababab',
  -- bg     = '#007acc',
  -- bg     = '#68217a',
  bg     = '#252525',
  gray  = '#333333',
  light_gray  = '#5c6370',
  gray3  = '#3e4452',
  inactive_fg = '#5e5e5e',
}

return {
	normal = {
		a = { fg = colors.bg, bg = colors.blue },
		b = { fg = colors.blue, bg = colors.light_gray },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = { a = { fg = colors.bg, bg = colors.green }, b = { fg = colors.green, bg = colors.gray } },
	visual = { a = { fg = colors.bg, bg = colors.purple }, b = { fg = colors.purple, bg = colors.gray } },
	command = { a = { fg = colors.bg, bg = colors.orange }, b = { fg = colors.orange, bg = colors.gray } },
	replace = { a = { fg = colors.bg, bg = colors.red }, b = { fg = colors.red, bg = colors.gray } },

	inactive = {
		a = { bg = colors.bg, fg = colors.blue },
		-- gui = "bold" 
		b = { bg = colors.gray, fg = colors.inactive_fg },
		c = { bg = colors.bg, fg = colors.gray },
	},
}
