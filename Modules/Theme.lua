local T, C, L = Tukui:unpack()
local WUIThemeName = ...
--------------------------------------------------------------------------------
-- Setup

if not T.Themes then
	T.Themes = {}
end

local Themes = T["Themes"]


--------------------------------------------------------------------------------
-- Theme Defnitions
local WUITheme = CreateFrame("Frame")

function WUITheme:SwitchActionBars()
	-- Grab Panels
	-- Save Local with points from Bar 4
	-- Save Local with points from Bar 2
	-- Edit Bar 4
	-- Panels.ActionBar4 = A4
end

function WUITheme:OnEvent(event)
  if (C.General.Themes.Value == WUIThemeName) then
		self:SwitchActionBars()
	end
end


--------------------------------------------------------------------------------
-- Register Theme

WUITheme:RegisterEvent("PLAYER_LOGIN")
WUITheme:SetScript("OnEvent", WUITheme.OnEvent)

Themes.WUITheme = WUITheme

-- Add to Theme Options
C.General.Themes.Options[WUIThemeName] = WUIThemeName
