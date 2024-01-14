require "Libraries/CYK/Util"

return (function()
    local self
    self = { }
	self.xp = 0
	self.gold = 0
    local _EnteringState
    _EnteringState = EnteringState
	if not callback then
		function callback()
			State("DONE")
		end
	end
    function EnteringState(newstate,oldstate)
    	DEBUG("first")
        if pcall(State, "BEFOREDONE") then
        	DEBUG("working")
			local thing = true
			for i=1, #enemies do
                if enemies[i]["isactive"] then
				    thing = false
				    break
				end
            end
			if thing then
				msg = "[noskip]YOU WON!\nYou earned " .. self.xp .. " XP and " .. self.gold .. " gold.[waitfor:Z][func:callback][w:15][next]"
				BattleDialogue(msg)
			end
        end
        if _EnteringState then
            _EnteringState(ns,os)
        end
    end
    return self 
end)()

require "Libraries/CYK/CYKPreProcessing"