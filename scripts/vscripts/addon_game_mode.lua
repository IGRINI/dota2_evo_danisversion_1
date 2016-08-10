require('barebones')
require('timers')

function Precache( context )
	PrecacheUnitByNameSync("fly_simple", context)
end

-- Create the game mode when we activate
function Activate()
	GameRules.AddonTemplate = GameMode()
	GameRules.AddonTemplate:InitGameMode()

	local uts = RandomFloat(2, 5)
	local point = Entities:FindByName( nil, "spawnerino"):GetAbsOrigin()
	local point2 = Entities:FindByName( nil, "spawnerino_1"):GetAbsOrigin()
	print("surprise")
	Timers:CreateTimer(0, function()
		for i = 1, uts do
			local unit = CreateUnitByName("fly_simple", point + RandomVector(RandomInt(100,200)), true, nil, nil, DOTA_TEAM_NEUTRALS)
			local unit = CreateUnitByName("runner_simple", point2 + RandomVector(RandomInt(100,200)), true, nil, nil, DOTA_TEAM_NEUTRALS)
		end
	return 10
	end)
end