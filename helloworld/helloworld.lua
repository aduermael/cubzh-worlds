Client.OnStart = function()
	Camera:SetParent(World)

	local ui = require("uikit")

	local text = ui:createText("hello world!", Color.Black)
	text.parendDidResize = function(self)
		self.pos = { Screen.Width * 0.5 - self.Width * 0.5, Screen.Height * 0.5 - self.Height * 0.5 }
	end
	text:parendDidResize()
end
