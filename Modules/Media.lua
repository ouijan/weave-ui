local Weave = select(2, ...)
local T, C, L = Tukui:unpack()

local TukuiMedia = T["Media"]
local LSM = LibStub("LibSharedMedia-3.0")

------------------------------------------------
-- Fonts
------------------------------------------------
Weave.Fonts = {
  ["Lilita One"] = [[Interface/AddOns/WeaveUI/Media/LilitaOne-Regular.ttf]],
  ["Luckiest Guy"] = [[Interface/AddOns/WeaveUI/Media/LuckiestGuy-Regular.ttf]],
  ["OpenSans"] = [[Interface/AddOns/WeaveUI/Media/OpenSans-Regular.ttf]],
}

for fontName, fontPath in pairs(Weave.Fonts) do
  LSM:Register("font", fontName, fontPath)
  CreateFont(fontName):SetFont(fontPath, 12)
  TukuiMedia:RegisterFont(fontName, fontName)
end

-- TukuiMedia:RegisterTexture("Gloss", "Interface\\AddOns\\WeaveUI\\Media\\Gloss.tga")
