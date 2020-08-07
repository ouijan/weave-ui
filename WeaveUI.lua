local Weave = select(2, ...)
local WeaveUI = LibStub("AceAddon-3.0"):NewAddon("WeaveUI")

function WeaveUI:OnInitialize()
  Weave.Config:OnInit()
  Weave.Media:OnInit()
  Weave.Theme:OnInit()
end