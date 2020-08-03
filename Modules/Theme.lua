local Weave = select(2, ...)
local T, C, L = Tukui:unpack()

local Theme = CreateFrame("Frame")
Weave.Theme = Theme

local function inspect(item)
	for i, v in pairs(item) do
		print(i, v)
	end
end

function Theme:SetRightPanel()
	local frame = T.Panels.RightChatBG
	local left = frame:GetLeft();
	local right = frame:GetRight();
	local top = frame:GetTop();
	local bottom = frame:GetBottom();
	print(top, right, bottom, left)
	local window = Details:GetWindow(1)
	print(window.top, window.right, window.bottom, window.left)
end

function Theme:SetupChat()
	-- T.SlashHandler("/tukui chat reset")
	
	-- Wow Settings
	-- rename "other" to "details
	-- change "details" chat tab to show nothing

	-- Details
	-- Details: Chat Tab Embed -> Enabled
	-- Details: Chat Tab Embed -> Tab Name "Details"
	-- Details: Set Skin = "Safe Skin Legion Beta (or create our own)
		-- Background Alpha 0
end

function Theme:SwitchActionBars()
	-- Weave.ActionBars:SwitchButtons(T.Panels.ActionBar2, "MultiBarRight")
	-- WActionBars:SwitchButtons(T.Panels.ActionBar3, "MultiBarBottomRight")
	-- WActionBars:SwitchButtons(T.Panels.ActionBar4, "MultiBarBottomLeft")
end

function Theme:OnEvent(event)
	if (C.General.Themes.Value == "WeaveUI") then
		-- self:SwitchActionBars()
		-- self:SetRightPanel()
		-- self:SetupChat()
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
