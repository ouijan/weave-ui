local Weave = select(2, ...)
local T, C, L = Tukui:unpack()

local TukuiMedia = T["Media"]
local LSM = LibStub("LibSharedMedia-3.0")

local Media = {}
Weave.Media = Media

------------------------------------------------
-- Fonts
------------------------------------------------
Media.Fonts = {
  ["Lilita One"] = [[Interface/AddOns/WeaveUI/Media/LilitaOne-Regular.ttf]],
  ["Luckiest Guy"] = [[Interface/AddOns/WeaveUI/Media/LuckiestGuy-Regular.ttf]],
  ["OpenSans"] = [[Interface/AddOns/WeaveUI/Media/OpenSans-Regular.ttf]],
}

function Media:RegisterFonts()
  for name, path in pairs(self.Fonts) do
    LSM:Register("font", name, path)
    CreateFont(name):SetFont(path, 12)
    TukuiMedia:RegisterFont(name, name)
  end
end

------------------------------------------------
-- Textures
------------------------------------------------
Media.Textures = {
  ["Gloss"] = [[Interface/AddOns/WeaveUI/Media/Gloss.tga]]
}

function Media:RegisterTextures()
  for name, path in pairs(self.Textures) do
    LSM:Register("statusbar", name, path)
    TukuiMedia:RegisterTexture(name, path)
  end
end


------------------------------------------------
-- OnInit
------------------------------------------------

function Media:OnInit()
  self:RegisterFonts()
  self:RegisterTextures()
end

Media:OnInit()
