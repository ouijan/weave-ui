local Weave = select(2, ...)

Weave.ActionBars = {}
local ActionBars = Weave.ActionBars

function ActionBars:SwitchButtons(tukuiBar, barName)
	local defaultBar = _G[barName]
	defaultBar:SetParent(tukuiBar)

	local buttons = {}
	for i = 1, NUM_ACTIONBAR_BUTTONS do
		local button = _G[format(barName.."Button%d", i)]
		buttons[i] = button
	end

	-- Do Some Magic
	for i, v in pairs(buttons) do
  	print(i, v)
	end
end
