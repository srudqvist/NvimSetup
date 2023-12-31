local status, flutter_tools = pcall(require, "flutter-tools")
if not status then
	return
end

flutter_tools.setup({
	widget_guides = {
		enabled = true,
	},
	closing_tags = {
		-- highlight = "ErrorMsg", -- highlight for the closing tag
		prefix = "//", -- character to use for close tag e.g. > Widget
		enabled = true, -- set to false to disable
	},
	decorations = {
		statusline = {
			device = true,
		},
	},
})
