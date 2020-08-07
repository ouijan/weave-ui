local Weave = select(2, ...)
local T, C, L = Tukui:unpack()

local UnitFrames = T.UnitFrames
local Panels = T.Panels
local Movers = T.Movers
local TukuiChat = T.Chat

local Theme = CreateFrame("Frame")
Weave.Theme = Theme

LibStub("AceEvent-3.0"):Embed(Theme)
Theme.Name = "WeaveUI"

function Theme:RegisterWithTukui()
	T.Themes.Weave = Theme
	C.General.Themes.Options["WeaveUI"] = self.Name
end

function Theme:IsActive()
	return C.General.Themes.Value == self.Name
end

------------------------------------------------
-- Action Bars
------------------------------------------------
function Theme:SwitchActionBars()
	-- Weave.ActionBars:SwitchButtons(T.Panels.ActionBar2, "MultiBarRight")
	-- WActionBars:SwitchButtons(T.Panels.ActionBar3, "MultiBarBottomRight")
	-- WActionBars:SwitchButtons(T.Panels.ActionBar4, "MultiBarBottomLeft")
	-- Reposition Stance Bar
end

------------------------------------------------
-- Unit Frames
------------------------------------------------
function Theme:SetupUnitFrames()
	if not Theme:IsActive() then return end

	local Player = UnitFrames.Units.Player
	local Target = UnitFrames.Units.Target
	local TargetOfTarget = UnitFrames.Units.TargetOfTarget
	
	local alpha = C.WeaveUI.UnitFrameAlpha
	local yOffset = 90
	local xOffset = 254
	
	Player:SetAlpha(alpha)
	Player:ClearAllPoints()
	Player:SetPoint("BOTTOM", UIParent, "BOTTOM", -xOffset, yOffset)
	
	Target:SetAlpha(alpha)
	Target:ClearAllPoints()
	Target:SetPoint("BOTTOM", UIParent, "BOTTOM", xOffset, yOffset)
	
	TargetOfTarget:SetAlpha(alpha)
	TargetOfTarget:ClearAllPoints()
	TargetOfTarget:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, yOffset)
end


------------------------------------------------
-- Chat Panels
------------------------------------------------
function Theme:SetupChatPanels()
	if not Theme:IsActive() then return end
	
	local leftWidth = C.Chat.LeftWidth
	Panels.DataTextLeft:SetSize(leftWidth, 23)
	Panels.LeftChatBG:Size(leftWidth + 12, C.Chat.LeftHeight)
	Panels.TabsBGLeft:Size(leftWidth, 23)
	
	local rightWidth = C.Chat.RightWidth
	Panels.DataTextRight:SetSize(C.Chat.RightWidth, 23)
	Panels.RightChatBG:Size(C.Chat.RightWidth + 12, C.Chat.RightHeight)
	Panels.TabsBGRight:Size(rightWidth, 23)
end

function Theme:SetChatPositions()
	if not Theme:IsActive() then return end
	for i = 1, NUM_CHAT_WINDOWS do
		local frame = _G["ChatFrame"..i]
		local id = frame:GetID()

		local leftIndex = 1
		local rightIndex = 4

		if (id == leftIndex) then
			frame:ClearAllPoints()
			frame:SetSize(C.Chat.LeftWidth, C.Chat.LeftHeight - 62)
			frame:SetPoint("BOTTOMLEFT", Panels.DataTextLeft, "TOPLEFT", 0, 2)
			FCF_SetLocked(frame, 1)
		elseif (id == rightIndex) then
			frame:ClearAllPoints()
			frame:SetSize(C.Chat.RightWidth, C.Chat.RightHeight - 62)
			frame:SetPoint("BOTTOMRIGHT", Panels.DataTextRight, "TOPRIGHT", 0, 2)
			FCF_SetLocked(frame, 1)
		end
	end
end

function Theme:SetupChat()
	self:SetChatPositions()
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

------------------------------------------------
-- OnInit
------------------------------------------------
function Theme:AddHooks()
	hooksecurefunc(Panels, "Enable", Theme.SetupChatPanels)
	hooksecurefunc(UnitFrames, "Enable", Theme.SetupUnitFrames)
	self:RegisterEvent("PLAYER_ENTERING_WORLD", "SetupChat")
end

function Theme:OnInit()
	self:RegisterWithTukui()
	self:AddHooks()
end


