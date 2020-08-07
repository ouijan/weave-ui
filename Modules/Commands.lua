local Weave = select(2, ...)

local Commands = {}
Weave.Commands = Commands

function Commands:TellTarget(message)
  if UnitIsPlayer("target") ~= true then return end
  local target = UnitName("target")
  local language = GetDefaultLanguage("player")
  SendChatMessage(message, "WHISPER", language, target);
end


-- Register Commands
local Console = LibStub("AceConsole-3.0")
Console:RegisterChatCommand('tt', function(message)
  Commands:TellTarget(message)
end)

