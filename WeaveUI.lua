local T, C, L = Tukui:unpack()
local addonName = ...

C[addonName] = {
	["Enable"] = false
}

local WeaveUI = function(self)
  local Window = self:CreateWindow(addonName)

  Window:CreateSection("General")
  Window:CreateSwitch(addonName, "Enable", "Example Switch")
  
  
  Window:CreateSection("Theme")
  Window:CreateSwitch(addonName, "Enable", "Example Switch")

end

T.GUI:AddWidgets(WeaveUI)
