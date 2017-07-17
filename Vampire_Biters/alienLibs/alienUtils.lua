

function killAlien(unitArray)
	--writeDebug(unitArray)
    if unitArray ~= nil then
		for i=1, #unitArray do
			local alien = unitArray[i]
			if (alien.valid) then
				alien.die()
			end
			unitArray[i] = nil
		end
	end
end

function findValidUnit(unitArray)
    local unit = nil
    local i = 1
    while (i < #unitArray) and (unit == nil) do
        local alien = unitArray[i]
        if (alien ~= nil) then
            if (alien.valid) then
                unit = alien
            else
                unitArray[i] = nil
            end
        end
        i = i + 1
    end
    return unit
end

function euclideanDistance(p1, p2)
    local xs = p1.x - p2.x
    local ys = p1.y - p2.y
    return ((xs * xs) + (ys * ys)) ^ 0.5
end

function boundingBox(p, radius)
    return {{p.x - radius, p.y - radius},
            {p.x + radius, p.y + radius}}
end