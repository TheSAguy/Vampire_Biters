
require "vampireUtils"

function raiseVampire(event, vampires, surface)
    --surface = game.surfaces[1]

    if (event.force ~= nil) and (event.force.name == "vampire") and (event.entity.force.name == "enemy") then

        local risenPosition = event.entity.position
        local entityType = event.entity.type
        local entityName = event.entity.name
        event.entity.destroy()
        if (vampires.lord ~= nil) and (vampires.lord.valid) and (euclideanDistance(risenPosition, vampires.lord.position) < 20) then
            vampires.lord.health = vampires.lord.prototype.max_health
        end
        if (entityType == "unit")  then
            -- raise just the killed enemy as vampire
            local risenName = string.gsub(string.gsub(entityName, "biter", "vampire"), "spitter", "vampire")
            local risen = surface.create_entity({name = risenName,
                                                 position = risenPosition,
                                                 force = "vampire"})

        else
            -- if a spawner is killed then spawn a group of vampires
            risenPosition.x = risenPosition.x - 5
            for i=1, 5 do
                local risen = surface.create_entity({name = "small-vampire", -- TODO replace with scaled evolution factor
                                                     position = risenPosition,
                                                     force = "vampire"})
                risenPosition.x = risenPosition.x + 1

            end
        end

    end
    return vampires
end




global.New_Vamps = {}


global.New_Vamps["small-vampire"] = "vamp_army-01"
global.New_Vamps["vamp-minion"] = "vamp_army-01"

global.New_Vamps["vamp_army-01"] = "vamp_army-02"
global.New_Vamps["vamp_army-02"] = "vamp_army-03"
global.New_Vamps["vamp_army-03"] = "vamp_army-04"
global.New_Vamps["vamp_army-04"] = "vamp_army-05"
global.New_Vamps["vamp_army-05"] = "vamp_army-06"
global.New_Vamps["vamp_army-06"] = "vamp_army-07"
global.New_Vamps["vamp_army-07"] = "vamp_army-08"
global.New_Vamps["vamp_army-08"] = "vamp_army-09"
global.New_Vamps["vamp_army-09"] = "vamp_army-10"