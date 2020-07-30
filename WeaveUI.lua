local T, C, L = Tukui:unpack()

C["WeaveUI"] = {
	["Enable"] = false
}

local WeaveUI = function(self)
  local Window = self:CreateWindow("WeaveUI")

  Window:CreateSection("Enable")
	Window:CreateSwitch("WeaveUI", "Enable", "Enable WeaveUI module")
end

T.GUI:AddWidgets(WeaveUI)
