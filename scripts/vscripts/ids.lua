print("Evolution and Grow System")

require('barebones')

function OnEntityKilled(event)
	local killedUnit = EntIndexToHScript( event.entindex_killed )
	local killedTeam = killedUnit:GetTeam()

	local killer = EntIndexToHScript( event.entindex_attacker )
	local killerTeam = hero:GetTeam()
end