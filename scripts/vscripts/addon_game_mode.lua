require('barebones')
require('timers')
require('ids')

if CAddonTemplateGameMode == nil then
	CAddonTemplateGameMode = class({})
end

function Precache( context )
	PrecacheUnitByNameSync("fly_simple", context)
end

-- Create the game mode when we activate
function Activate()
	GameRules.AddonTemplate = CAddonTemplateGameMode()
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
	return 2
	end)
end

function CAddonTemplateGameMode:InitGameMode()
	print( "Template addon is loaded." )
	GameRules:GetGameModeEntity():SetThink( "OnThink", self, "GlobalThink", 2 )
	
	--###################################Modifiers###################################
	LinkLuaModifier( "modifier_blocker_simple_mut", 'modifiers/modifiers', LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier( "modifier_simple_bat_mut", 'modifiers/modifiers', LUA_MODIFIER_MOTION_NONE )
end

-- Evaluate the state of the game
function CAddonTemplateGameMode:OnThink()
	if GameRules:State_Get() == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
		--print( "Template addon script is running." )
	elseif GameRules:State_Get() >= DOTA_GAMERULES_STATE_POST_GAME then
		return nil
	end
	return 1
end

GameMode:SetCustomHeroMaxLevel(10) 
GameRules:GetGameModeEntity():SetUseCustomHeroLevels(true)  
GameRules:GetGameModeEntity():SetCustomXPRequiredToReachNextLevel(Constants.XP_TABLE)

XP_TABLE = {}
XP_TABLE[1] = 0
for i = 2, 10 do
    XP_TABLE[i] = XP_TABLE[i-1] + i * 100 
end
