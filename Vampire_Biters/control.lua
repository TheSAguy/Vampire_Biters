require "util"
require "tests"
require "vampireLibs/logic"

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

function on_loadOrSave() 
    if vampires == nil then
        vampires = global.vampires
    else
        global.vampires = vampires
    end
    surface = game.surfaces[1]
end

function on_running(event)
    if (event.tick % 360 == 0) then
        vampires = onLightLevel(vampires, surface)
    end
end

function on_remove(event)
    vampires = raiseVampire(event, vampires, surface)
end

function on_chunk(event)
    local txy = event.area.left_top
    local x = (txy.x * 0.03125) 
    local y = (txy.y * 0.03125)
end

---------------------------------------------
script.on_init(on_initialize)
script.on_load(on_loadOrSave)

script.on_event(defines.events.on_chunk_generated, on_chunk)
script.on_event(defines.events.on_entity_died, on_remove)
script.on_event(defines.events.on_tick, on_running)


