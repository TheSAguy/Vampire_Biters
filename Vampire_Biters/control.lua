require "util"
require "alienLibs/initialSpawn"
require "alienLibs/logic"


if remote.interfaces.EvoGUI then
	require "alienLibs/EvoGUI"
end



local QC_Mod = true




---------------------------------------------				 
function on_initialize()
	
	local surface = game.surfaces['nauvis']
	
	if game.forces['alien'] == nil then
        game.create_force('alien')
	end
		if global.Alien == nil then
			global.Alien = {}		
	
			global.Alien.freeAliens = {}
			global.Alien.minions = {}
			global.Alien.clans = {}
			global.Alien.den = {}
		
		end
			
		if global.Alien.lords == nil then
			global.Alien.lords = {}
		end
		
		global.Alien.lords = Initial_Spawn(surface)
		--global.Alien.lords = tester2(surface)
		
		---- Used for EvoGUI
		if not global.Total_Nest_Count then
			global.Total_Nest_Count = 0
        elseif global.Total_Nest_Count < 0 then
			global.Total_Nest_Count = 0
		end

		
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
