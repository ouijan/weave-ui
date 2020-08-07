local Weave = select(2, ...)
local T, C, L = Tukui:unpack()

local Config = {}
Weave.Config = Config

function Config:SetTukuiDefaults()
  C.ActionBars.HideBackdrop = true
  C.Bags.ButtonSize = 35
  C.General.Themes.Value = "WeaveUI"
  C.General.UseGlobal = true
  C.General.UIScale = 0.7
  C.General.HideShadows = true
  C.General.BackdropColor = {0.08, 0.08, 0.15}
  C.Chat.LeftWidth = 450
  C.Chat.LeftHeight = 225
  C.Chat.RightWidth = 450
  C.Chat.RightHeight = 225
  C.Chat.ScrollByX = 1
  C.Chat.BackgroundAlpha = 40
  C.Misc.FadeWorldMapWhileMoving = true
  C.Misc.AFKSaver = true
  C.NamePlates.HighlightColor = {1, 1, 1}
  C.NamePlates.HighlightSize = 5
  C.Textures.QuestProgressTexture = "Blank"
  C.Textures.TTHealthTexture = "Blank"
  C.Textures.UFPowerTexture = "Blank"
  C.Textures.UFHealthTexture = "Blank"
  C.Textures.UFCastTexture = "Blank"
  C.Textures.UFPartyPowerTexture = "Blank"
  C.Textures.UFPartyHealthTexture = "Blank"
  C.Textures.UFRaidPowerTexture = "Blank"
  C.Textures.UFRaidHealthTexture = "Blank"
  C.Textures.NPHealthTexture = "Blank"
  C.Textures.NPPowerTexture = "Blank"
  C.Textures.NPCastTexture = "Blank"
end

function Config:SetWeaveDefaults()
  C.WeaveUI = {
    ["TellTarget"] = true,
    ["UnitFrameAlpha"] = .6
  }
end

function Config:RenderGUI(self)
  local Window = self:CreateWindow("WeaveUI")
  -- Window:CreateSection("General")
  -- Window:CreateSwitch("WeaveUI", "TellTarget", "Enable /tt command")
  
  Window:CreateSection("Theme")
	Window:CreateSlider("WeaveUI", "UnitFrameAlpha", "Unit Frame Alpha", 0, 1, .1)
end

function Config:OnInit()
  self:SetTukuiDefaults()
  self:SetWeaveDefaults()
  T.GUI:AddWidgets(function (self) Config:RenderGUI(self) end)
end
