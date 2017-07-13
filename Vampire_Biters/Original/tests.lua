function tester2()
    --for i = 1, 2000 do
    local lord = game.surfaces[1].create_entity({name="small-vampire",
                                                 position={19, 19},
                                                 force = game.forces.vampire})
    --end
    -- for i = 1, 2000 do
        -- game.surfaces[1].create_entity({name="small-spitter",
                                        -- position={math.random(20, 350), math.random(20, 350)},
                                        -- force = game.forces.enemy})
    -- end
    game.surfaces[1].create_entity({name="biter-spawner",
                                    position={25, 25},
                                    force = game.forces.enemy})
    game.surfaces[1].create_entity({name="biter-spawner",
                                    position={30, 30},
                                    force = game.forces.enemy})
    game.surfaces[1].create_entity({name="biter-spawner",
                                    position={35, 35},
                                    force = game.forces.enemy})
    return lord
end

function tester3()
    game.surfaces[1].create_entity({name="small-vampire",
                                    position={25, 24},
                                    force = game.forces.vampire})
    game.surfaces[1].create_entity({name="small-biter",
                                    position={25, 25},
                                    force = game.forces.enemy})
    game.surfaces[1].create_entity({name="small-biter",
                                    position={25, 26},
                                    force = game.forces.enemy})
    game.surfaces[1].create_entity({name="small-biter",
                                    position={25, 27},
                                    force = game.forces.enemy})
    game.surfaces[1].create_entity({name="small-biter",
                                    position={25, 28},
                                    force = game.forces.enemy})
end