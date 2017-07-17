require "util"
require "tests"
require "alienLibs/logic"
local QC_Mod = true



---------------------------------------------				 
function on_initialize()
	if game.forces['alien'] == nil then
        game.create_force('alien')
	end
		if global.Alien == nil then
			global.Alien = {}		
		end

		if global.Alien.Horde == nil then
			global.Alien.Horde = {}
		end
	
		if global.Alien.Clans == nil then
			global.Alien.Clans = {}
		end
		
		if global.Alien.Alien_Units == nil then
			global.Alien.Alien_Units = {}
		end
		
		--global.Alien.Alien_Units = Initial_Spawn()
		global.Alien.Alien_Units = tester2()
end



function on_remove(event)

	surface = event.entity.surface
    global.Alien = raisealien(event, global.Alien, surface)
   

	
end


function on_running(event)

    if (event.tick % 360 == 0) then
       	--writeDebug(global.Alien)
		--writeDebug(#global.Alien.Horde)
		
    end
end


---------------------------------------------
script.on_init(on_initialize)

--script.on_event(defines.events.on_tick, on_running)
script.on_event(defines.events.on_entity_died, on_remove)




--------------------------------------------------------------------
function writeDebug(message)
	if QC_Mod == true then 
		for i, player in pairs(game.players) do
			player.print(tostring(message))
		end
	end
end
