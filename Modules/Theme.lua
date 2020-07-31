local T, C, L = Tukui:unpack()

local Themes = T["Themes"]

------------------------------------------------
-- Theme Defnition
------------------------------------------------
local WTheme = CreateFrame("Frame")

function WTheme:SwitchActionBars()
	-- Grab Panels
	-- Save Local with points from Bar 4
	-- Save Local with points from Bar 2
	-- Edit Bar 4
	-- Panels.ActionBar4 = A4
end

function WTheme:OnEvent(event)
  if (C.General.Themes.Value == "WeaveUI") then
		self:SwitchActionBars()
	end
end


------------------------------------------------
-- Register Theme
------------------------------------------------
WTheme:RegisterEvent("PLAYER_LOGIN")
WTheme:SetScript("OnEvent", WTheme.OnEvent)

Themes.WTheme = WTheme

-- Add to Theme Options
C.General.Themes.Options["WeaveUI"] = "WeaveUI"
