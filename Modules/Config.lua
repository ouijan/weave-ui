local Weave = select(2, ...)
local T, C, L = Tukui:unpack()

------------------------------------------------
-- Default Overrides
------------------------------------------------
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

------------------------------------------------
-- Configuration Definitions
------------------------------------------------
C.WeaveUI = {
  ["TellTarget"] = true,
  ["Enable"] = false,
}

------------------------------------------------
-- Configuration GUI
------------------------------------------------
local WeaveConfigUI = function(self)
  local Window = self:CreateWindow("WeaveUI")
  Window:CreateSection("General")
  Window:CreateSwitch("WeaveUI", "TellTarget", "Enable /tt command")
end

T.GUI:AddWidgets(WeaveConfigUI)
