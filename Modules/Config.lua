local T, C, L = Tukui:unpack()

------------------------------------------------
-- Configuration Definitions
------------------------------------------------
C["WeaveUI"] = {
	["Enable"] = false
}


------------------------------------------------
-- Configuration GUI
------------------------------------------------
local WeaveConfigUI = function(self)
  local Window = self:CreateWindow("WeaveUI")

  Window:CreateSection("General")
  Window:CreateSwitch("WeaveUI", "Enable", "Example Switch")
  
  
  Window:CreateSection("Theme")
  Window:CreateSwitch("WeaveUI", "Enable", "Example Switch")

end

T.GUI:AddWidgets(WeaveConfigUI)
