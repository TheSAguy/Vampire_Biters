-- BASIC
-- If true, spawners will release several units on death. Now you need to be more careful about attacking the spawners in biter bases.
spawnersSpawnUnitsOnDeath = true

-- If true, larger units will release several smaller units on death. Think you've fully defeated that behemoth? Think again, now it's spawned more biters on death!
-- Note that this has the potential to severely impact game performance if a large wave of biters crashes against your line of turrets.
-- The pathfinder can choke on the hundreds and hundreds of small biters that are spawned when the large biters die.
unitsSpawnUnitsOnDeath = true



-- ADVANCED
-- This table enumerates enemies that are too small to fragment any further on death.
ignoredEnemiesTable = {}
ignoredEnemiesTable["small-biter"] = 				true
ignoredEnemiesTable["small-spitter"] = 				true
ignoredEnemiesTable["small-biter-Mk2"] = 			true
ignoredEnemiesTable["small-spitter-Mk2"] = 			true
ignoredEnemiesTable["small-biter-Mk3"] = 			true
ignoredEnemiesTable["small-spitter-Mk3"] = 			true



-- The result in the right column is the enemy that appears when the enemy in the left column dies. So if a behemoth spitter dies, medium spitters will appear.
-- For spawners, the current evolution factor rounded down to the nearest 10% (though 99% is rounded up to 100%) is used to look up which enemy appears.
-- So at 74% evo, a biter spawner will spawn big biters on death.
subEnemyNameTable = {}


-- Vampire
subEnemyNameTable["unit-cluster"] = 				"small-vampire"

--[[
-- Vanilla
subEnemyNameTable["medium-biter"] = 				"small-biter"
subEnemyNameTable["big-biter"] = 					"small-biter"
subEnemyNameTable["behemoth-biter"] = 				"medium-biter"

subEnemyNameTable["medium-spitter"] = 				"small-spitter"
subEnemyNameTable["big-spitter"] = 					"small-spitter"
subEnemyNameTable["behemoth-spitter"] = 			"medium-spitter"

subEnemyNameTable["biter-spawner"] = {}
subEnemyNameTable["biter-spawner"][0] = 			"small-biter"
subEnemyNameTable["biter-spawner"][1] = 			"small-biter"
subEnemyNameTable["biter-spawner"][2] = 			"small-biter"
subEnemyNameTable["biter-spawner"][3] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][4] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][5] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][6] = 			"big-biter"
subEnemyNameTable["biter-spawner"][7] = 			"big-biter"
subEnemyNameTable["biter-spawner"][8] = 			"big-biter"
subEnemyNameTable["biter-spawner"][9] = 			"behemoth-biter"
subEnemyNameTable["biter-spawner"][10] =			"behemoth-biter"

subEnemyNameTable["spitter-spawner"] = {}
subEnemyNameTable["spitter-spawner"][0] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][1] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][2] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][3] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][4] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][5] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][6] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][7] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][8] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][9] = 			"behemoth-spitter"
subEnemyNameTable["spitter-spawner"][10] =			"behemoth-spitter"

-- Bob's Enemies
subEnemyNameTable["bob-bigger-biter"] =				"medium-biter"
subEnemyNameTable["bob-biggest-biter"] =			"medium-biter"
subEnemyNameTable["bob-fire-biter"] =				"medium-biter"
subEnemyNameTable["bob-titan-biter"] =				"big-biter"
subEnemyNameTable["bob-behemoth-biter"] =			"big-biter"

subEnemyNameTable["bob-bigger-spitter"] =			"medium-spitter"
subEnemyNameTable["bob-biggest-spitter"] =			"medium-spitter"
subEnemyNameTable["bob-poison-spitter"] =			"medium-spitter"
subEnemyNameTable["bob-titan-spitter"] =			"big-spitter"
subEnemyNameTable["bob-behemoth-spitter"] =			"big-spitter"

subEnemyNameTable["bob-biter-spawner"] = {}
subEnemyNameTable["bob-biter-spawner"][0] = 		"small-biter"
subEnemyNameTable["bob-biter-spawner"][1] = 		"small-biter"
subEnemyNameTable["bob-biter-spawner"][2] = 		"small-biter"
subEnemyNameTable["bob-biter-spawner"][3] = 		"medium-biter"
subEnemyNameTable["bob-biter-spawner"][4] = 		"medium-biter"
subEnemyNameTable["bob-biter-spawner"][5] = 		"medium-biter"
subEnemyNameTable["bob-biter-spawner"][6] = 		"big-biter"
subEnemyNameTable["bob-biter-spawner"][7] = 		"bob-bigger-biter"
subEnemyNameTable["bob-biter-spawner"][8] = 		"bob-biggest-biter"
subEnemyNameTable["bob-biter-spawner"][9] = 		"bob-titan-biter"
subEnemyNameTable["bob-biter-spawner"][10] =		"bob-behemoth-biter"

subEnemyNameTable["bob-spitter-spawner"] = {}
subEnemyNameTable["bob-spitter-spawner"][0] = 		"small-spitter"
subEnemyNameTable["bob-spitter-spawner"][1] = 		"small-spitter"
subEnemyNameTable["bob-spitter-spawner"][2] = 		"small-spitter"
subEnemyNameTable["bob-spitter-spawner"][3] = 		"medium-spitter"
subEnemyNameTable["bob-spitter-spawner"][4] = 		"medium-spitter"
subEnemyNameTable["bob-spitter-spawner"][5] = 		"medium-spitter"
subEnemyNameTable["bob-spitter-spawner"][6] = 		"big-spitter"
subEnemyNameTable["bob-spitter-spawner"][7] = 		"bob-bigger-spitter"
subEnemyNameTable["bob-spitter-spawner"][8] = 		"bob-biggest-spitter"
subEnemyNameTable["bob-spitter-spawner"][9] = 		"bob-titan-spitter"
subEnemyNameTable["bob-spitter-spawner"][10] =		"bob-behemoth-spitter"



-- Natural Evolution Enemies
subEnemyNameTable["medium-biter-Mk2"] = 			"small-biter-Mk2"
subEnemyNameTable["medium-biter-Mk3"] = 			"small-biter-Mk3"
subEnemyNameTable["big-biter-Mk2"] = 				"small-biter-Mk3"
subEnemyNameTable["big-biter-Mk3"] = 				"small-biter-Mk3"
subEnemyNameTable["medium-spitter-Mk2"] = 			"small-spitter-Mk2"
subEnemyNameTable["medium-spitter-Mk3"] = 			"small-spitter-Mk3"
subEnemyNameTable["big-spitter-Mk2"] = 				"small-spitter-Mk3"
subEnemyNameTable["big-spitter-Mk3"] = 				"small-spitter-Mk3"

if global.NatEvoDetected then
subEnemyNameTable["biter-spawner"][0] = 			"small-biter"
subEnemyNameTable["biter-spawner"][1] = 			"small-biter-Mk2"
subEnemyNameTable["biter-spawner"][2] = 			"small-biter-Mk3"
subEnemyNameTable["biter-spawner"][3] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][4] = 			"medium-biter-Mk2"
subEnemyNameTable["biter-spawner"][5] = 			"medium-biter-Mk3"
subEnemyNameTable["biter-spawner"][6] = 			"big-biter"
subEnemyNameTable["biter-spawner"][7] = 			"big-biter-Mk2"
subEnemyNameTable["biter-spawner"][8] = 			"big-biter-Mk3"
subEnemyNameTable["biter-spawner"][9] = 			"behemoth-biter"
subEnemyNameTable["biter-spawner"][10] =			"behemoth-biter"
end

if global.NatEvoDetected then
subEnemyNameTable["spitter-spawner"][0] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][1] = 			"small-spitter-Mk2"
subEnemyNameTable["spitter-spawner"][2] = 			"small-spitter-Mk3"
subEnemyNameTable["spitter-spawner"][3] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][4] = 			"medium-spitter-Mk2"
subEnemyNameTable["spitter-spawner"][5] = 			"medium-spitter-Mk3"
subEnemyNameTable["spitter-spawner"][6] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][7] = 			"big-spitter-Mk2"
subEnemyNameTable["spitter-spawner"][8] = 			"big-spitter-Mk3"
subEnemyNameTable["spitter-spawner"][9] = 			"behemoth-spitter"
subEnemyNameTable["spitter-spawner"][10] =			"behemoth-spitter"
end

]]



-- NUMBERS

-- The result in the right column is the number of enemies that appear when the enemy in the left column dies.
-- The current evolution factor rounded down to the nearest 10% is also used to look up which enemy appears.
subEnemyNumberTable = {}


-- Vanilla
subEnemyNumberTable["unit-cluster"] = {}
subEnemyNumberTable["unit-cluster"][0] = 			2	-- small
subEnemyNumberTable["unit-cluster"][1] = 			2	-- small
subEnemyNumberTable["unit-cluster"][2] = 			2	-- small
subEnemyNumberTable["unit-cluster"][3] = 			2	-- small
subEnemyNumberTable["unit-cluster"][4] = 			2	-- small
subEnemyNumberTable["unit-cluster"][5] = 			2	-- small
subEnemyNumberTable["unit-cluster"][6] = 			2	-- small
subEnemyNumberTable["unit-cluster"][7] = 			2	-- small
subEnemyNumberTable["unit-cluster"][8] = 			2	-- small
subEnemyNumberTable["unit-cluster"][9] = 			3	-- small
subEnemyNumberTable["unit-cluster"][10] =			3	-- small

--[[
-- Vanilla
subEnemyNumberTable["medium-biter"] = {}
subEnemyNumberTable["medium-biter"][0] = 			2	-- small
subEnemyNumberTable["medium-biter"][1] = 			2	-- small
subEnemyNumberTable["medium-biter"][2] = 			2	-- small
subEnemyNumberTable["medium-biter"][3] = 			2	-- small
subEnemyNumberTable["medium-biter"][4] = 			2	-- small
subEnemyNumberTable["medium-biter"][5] = 			2	-- small
subEnemyNumberTable["medium-biter"][6] = 			2	-- small
subEnemyNumberTable["medium-biter"][7] = 			2	-- small
subEnemyNumberTable["medium-biter"][8] = 			2	-- small
subEnemyNumberTable["medium-biter"][9] = 			3	-- small
subEnemyNumberTable["medium-biter"][10] =			3	-- small

subEnemyNumberTable["medium-spitter"] = 			subEnemyNumberTable["medium-biter"] -- Same numbers for spitters as biters of the same class

subEnemyNumberTable["big-biter"] = {}
subEnemyNumberTable["big-biter"][0] = 				5	-- small
subEnemyNumberTable["big-biter"][1] = 				5	-- small
subEnemyNumberTable["big-biter"][2] = 				5	-- small
subEnemyNumberTable["big-biter"][3] = 				5	-- small
subEnemyNumberTable["big-biter"][4] = 				5	-- small
subEnemyNumberTable["big-biter"][5] = 				5	-- small
subEnemyNumberTable["big-biter"][6] = 				5	-- small
subEnemyNumberTable["big-biter"][7] = 				5	-- small
subEnemyNumberTable["big-biter"][8] = 				5	-- small
subEnemyNumberTable["big-biter"][9] = 				5	-- small
subEnemyNumberTable["big-biter"][10] =				6	-- small

subEnemyNumberTable["big-spitter"] = 				subEnemyNumberTable["big-biter"]

subEnemyNumberTable["behemoth-biter"] = {}
subEnemyNumberTable["behemoth-biter"][0] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][1] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][2] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][3] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][4] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][5] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][6] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][7] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][8] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][9] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][10] =			4	-- medium

subEnemyNumberTable["behemoth-spitter"] = 			subEnemyNumberTable["behemoth-biter"]

subEnemyNumberTable["biter-spawner"] = {}
subEnemyNumberTable["biter-spawner"][0] = 			8    --small
subEnemyNumberTable["biter-spawner"][1] = 			8    --small
subEnemyNumberTable["biter-spawner"][2] = 			9    --small
subEnemyNumberTable["biter-spawner"][3] = 			5    --medium
subEnemyNumberTable["biter-spawner"][4] = 			6    --medium
subEnemyNumberTable["biter-spawner"][5] = 			7    --medium
subEnemyNumberTable["biter-spawner"][6] = 			3    --big
subEnemyNumberTable["biter-spawner"][7] = 			4    --big
subEnemyNumberTable["biter-spawner"][8] = 			5    --big
subEnemyNumberTable["biter-spawner"][9] = 			2    --behemoth
subEnemyNumberTable["biter-spawner"][10] =			2    --behemoth

subEnemyNumberTable["spitter-spawner"] = 			subEnemyNumberTable["biter-spawner"]

-- Bob's Enemies
subEnemyNumberTable["bob-bigger-biter"] = {}
subEnemyNumberTable["bob-bigger-biter"][0] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][1] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][2] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][3] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][4] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][5] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][6] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][7] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][8] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][9] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][10] =		3	-- medium

subEnemyNumberTable["bob-bigger-spitter"] =			subEnemyNumberTable["bob-bigger-biter"]

subEnemyNumberTable["bob-biggest-biter"] = {}
subEnemyNumberTable["bob-biggest-biter"][0] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][1] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][2] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][3] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][4] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][5] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][6] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][7] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][8] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][9] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][10] =		4	-- medium

subEnemyNumberTable["bob-fire-biter"] =				subEnemyNumberTable["bob-biggest-biter"]
subEnemyNumberTable["bob-biggest-spitter"] =		subEnemyNumberTable["bob-biggest-biter"]
subEnemyNumberTable["bob-poison-spitter"] =			subEnemyNumberTable["bob-biggest-biter"]

subEnemyNumberTable["bob-titan-biter"] = {}
subEnemyNumberTable["bob-titan-biter"][0] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][1] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][2] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][3] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][4] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][5] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][6] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][7] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][8] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][9] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][10] =		2	-- big

subEnemyNumberTable["bob-titan-spitter"] =			subEnemyNumberTable["bob-titan-biter"]

subEnemyNumberTable["bob-behemoth-biter"] = {}
subEnemyNumberTable["bob-behemoth-biter"][0] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][1] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][2] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][3] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][4] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][5] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][6] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][7] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][8] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][9] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][10] =		3	-- big

subEnemyNumberTable["bob-behemoth-spitter"] =		subEnemyNumberTable["bob-behemoth-biter"]

subEnemyNumberTable["bob-biter-spawner"] = {}
subEnemyNumberTable["bob-biter-spawner"][0] = 		8   -- small
subEnemyNumberTable["bob-biter-spawner"][1] = 		8   -- small
subEnemyNumberTable["bob-biter-spawner"][2] = 		9   -- small
subEnemyNumberTable["bob-biter-spawner"][3] = 		5   -- medium
subEnemyNumberTable["bob-biter-spawner"][4] = 		6   -- medium
subEnemyNumberTable["bob-biter-spawner"][5] = 		7   -- medium
subEnemyNumberTable["bob-biter-spawner"][6] = 		4   -- big
subEnemyNumberTable["bob-biter-spawner"][7] = 		4   -- bob-bigger
subEnemyNumberTable["bob-biter-spawner"][8] = 		4   -- bob-biggest
subEnemyNumberTable["bob-biter-spawner"][9] = 		2   -- bob-titan
subEnemyNumberTable["bob-biter-spawner"][10] =		2   -- bob-behemoth

subEnemyNumberTable["bob-spitter-spawner"] =		subEnemyNumberTable["bob-biter-spawner"]


-- Natural Evolution Enemies
subEnemyNumberTable["medium-biter-Mk2"] = 			subEnemyNumberTable["medium-biter"]
subEnemyNumberTable["medium-spitter-Mk2"] = 		subEnemyNumberTable["medium-biter"]
subEnemyNumberTable["medium-biter-Mk3"] = 			subEnemyNumberTable["medium-biter"]
subEnemyNumberTable["medium-spitter-Mk3"] = 		subEnemyNumberTable["medium-biter"]

subEnemyNumberTable["big-biter-Mk2"] = 				subEnemyNumberTable["big-biter"]
subEnemyNumberTable["big-spitter-Mk2"] = 			subEnemyNumberTable["big-biter"]
subEnemyNumberTable["big-biter-Mk3"] = 				subEnemyNumberTable["big-biter"]
subEnemyNumberTable["big-spitter-Mk3"] = 			subEnemyNumberTable["big-biter"]
]]
