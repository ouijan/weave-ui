local T, C, L = select(2, ...):unpack()

--------------------------------------------------------------------------------
-- Setup

if not T.Themes then
	T.Themes = {}
end

local Themes = T["Themes"]


--------------------------------------------------------------------------------
-- Theme Defnitions

local WUIThemeName = "WeaveUI"
local WUITheme = CreateFrame("Frame")

function WUITheme:SwitchActionBars()
	-- Grab Panels
	-- Save LOcal with points from Bar 4
	-- Save LOcal with points from Bar 2
	-- Edit Bar 4
	-- Panels.ActionBar4 = A4
end

function WUITheme:OnEvent(event)
  if (C.General.Themes.Value == WUIThemeName) then
    print("Activated Theme" .. WUIThemeName)
		-- self:SetupChat()
		-- self:AddLines()
		-- self:MoveXPBars()
		-- self:MoveTooltip()
		-- self:MoveDataTextTooltip()
	end
end


--------------------------------------------------------------------------------
-- Register Theme

WUITheme:RegisterEvent("PLAYER_LOGIN")
WUITheme:SetScript("OnEvent", WUITheme.OnEvent)

Themes.WUITheme = WUITheme

-- Add to Theme Options
C.General.Themes.Options[WUIThemeName] = WUIThemeName
