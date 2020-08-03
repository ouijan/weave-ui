local Weave = select(2, ...)
local T, C, L = Tukui:unpack()

Weave.Theme = CreateFrame("Frame")
local Theme = Weave.Theme

function Theme:SetConfigDefaults()
	-- print("SetConfigDefaults")
end

function Theme:SwitchActionBars()
	-- Weave.ActionBars:SwitchButtons(T.Panels.ActionBar2, "MultiBarRight")
	-- WActionBars:SwitchButtons(T.Panels.ActionBar3, "MultiBarBottomRight")
	-- WActionBars:SwitchButtons(T.Panels.ActionBar4, "MultiBarBottomLeft")
end

function Theme:OnEvent(event)
	if (C.General.Themes.Value == "WeaveUI") then
		self:SetConfigDefaults()
		-- self:SwitchActionBars()
	end
end


------------------------------------------------
-- Register Theme
------------------------------------------------
Theme:RegisterEvent("PLAYER_LOGIN")
Theme:SetScript("OnEvent", Theme.OnEvent)

T.Themes.Weave = Theme

-- Add to Theme Options
C.General.Themes.Options["WeaveUI"] = "WeaveUI"
