-- local T, C, L = select(2, ...):unpack()

-- --------------------------------------------------------------------------------
-- -- CONFIG
-- --------------------------------------------------------------------------------
-- C["MyOwnOption"] = {
-- 	["MyOwnOption01"] = false,
-- 	["MyOwnOption02"] = false
-- }

-- --------------------------------------------------------------------------------
-- -- LOCALES
-- --------------------------------------------------------------------------------
-- local MyOwnOption = {
--   ["MyOwnOption01"] = {
--     ["Name"] = "|cffFFFF99Option 01|r",
--     ["Desc"] = "Enable/Disable Option 01",
--   },
--   ["MyOwnOption02"] = {
--     ["Name"] = "|cffFFFF99Option 02|r",
--     ["Desc"] = "Enable/Disable Option 02",
--   },
-- }
-- -- TukuiConfig.enUS["MyOwnOption"] = MyOwnOption



-- --------------------------------------------------------------------------------
-- -- PANEL EXAMPLE
-- --------------------------------------------------------------------------------
-- local Panels = T.Panels

-- local function Enable()
-- 	if C["MyOwnOption"]["MyOwnOption01"] == true then
-- 		local BottomLine = Panels.BottomLine
-- 		local LeftVerticalLine = Panels.LeftVerticalLine
-- 		local RightVerticalLine = Panels.RightVerticalLine
-- 		local CubeLeft = Panels.CubeLeft
-- 		local CubeRight = Panels.CubeRight
-- 		local DataTextLeft = Panels.DataTextLeft
-- 		local DataTextRight = Panels.DataTextRight
-- 		LeftVerticalLine:Hide()
-- 		RightVerticalLine:Hide()
-- 		BottomLine:Hide()
-- 		DataTextLeft:Hide()
-- 		DataTextRight:Hide()
-- 		if CubeLeft and CubeRight then
-- 			CubeLeft:Hide()
-- 			CubeRight:Hide()
-- 		end
-- 	end
-- end

-- hooksecurefunc(Panels, "Enable", Enable)
