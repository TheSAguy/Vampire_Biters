require "util"
require "tests"
require "vampireLibs/logic"
local QC_Mod = true

local vampires = {}
local regions = {}
local surface

---------------------------------------------				 
function on_initialize()
	if game.forces['vampire'] == nil then
        game.create_force('vampire')
        surface = game.surfaces[1]
        vampires = {}
        vampires.freeMinions = {}
        vampires.minions = {}
        vampires.clans = {}
        vampires.den = {}
        vampires.lordAge = 0
        vampires.lord = tester2()
	end
end



function on_running(event)
	surface = game.surfaces[1]
    if (event.tick % 360 == 0) then
        vampires = onLightLevel(vampires, surface)
    end
end

function on_remove(event)
	surface = game.surfaces[1]
   -- vampires = raiseVampire(event, vampires, surface)
   
   

	local risenPosition = event.entity.position
	local entityType = event.entity.type
	local entityName = event.entity.name
   
	if (event.force ~= nil) and (event.force.name == "vampire") and (event.entity.force.name == "enemy") and (entityType == "unit") then
   
		local risen = surface.create_entity({name = "vamp-minion", position = risenPosition, force = "vampire"})
		

 
		if event.cause and event.cause.force.name == "vampire" and not event.cause.name == "vamp_army-10" then
			--writeDebug("There was a cause")
			local causeName = event.cause.name
			--if causeName == "small-vampire" then

				writeDebug("The Killing was done by "..entityName)
				Risen_Vamp = global.New_Vamps[causeName]
					event.cause.destroy()			
				
				local risen = surface.create_entity({name = Risen_Vamp, position = risenPosition, force = "vampire"})

			--end
	   
		end
	end
	
end

function on_chunk(event)
    local txy = event.area.left_top
    local x = (txy.x * 0.03125) 
    local y = (txy.y * 0.03125)
end

---------------------------------------------
script.on_init(on_initialize)
--script.on_load(on_loadOrSave)

--script.on_event(defines.events.on_chunk_generated, on_chunk)
script.on_event(defines.events.on_entity_died, on_remove)
--script.on_event(defines.events.on_tick, on_running)

--------------------------------------------------------------------
function writeDebug(message)
	if QC_Mod == true then 
		for i, player in pairs(game.players) do
			player.print(tostring(message))
		end
	end
end
