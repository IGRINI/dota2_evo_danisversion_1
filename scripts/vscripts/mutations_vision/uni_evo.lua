function universal_system_1(keys)
	local A = keys.caster:GetUnitName()
	local modifier = tostring("modifier_" .. A .. "_mut")
	print(modifier)
	if not keys.attacker:HasModifier(modifier) then
		keys.ability:ApplyDataDrivenModifier(keys.attacker,keys.attacker,modifier,{})
	end

	local current_stack = keys.attacker:GetModifierStackCount(modifier,keys.attacker)
	keys.attacker:SetModifierStackCount(modifier,keys.attacker,current_stack + 1)

	if modifier == "modifier_runner_simple_mut" and current_stack >= 100 then
		keys.attacker:SetModifierStackCount("modifier_runner_simple_mut", keys.attacker, 100)
	end

	if modifier == "modifier_fly_simple_mut" and current_stack >= 320 then
		keys.attacker:SetModifierStackCount("modifier_fly_simple_mut", keys.attacker, 320)
	end

	if modifier == "modifier_tank_simple_mut" and current_stack >= 220 then
		keys.attacker:SetModifierStackCount("modifier_tank_simple_mut", keys.attacker, 220)
	end

	if modifier == "modifier_attacker_simple_mut" and current_stack >= 200 then
		keys.attacker:SetModifierStackCount("modifier_attacker_simple_mut", keys.attacker, 200)
	end

	if modifier == "modifier_guard_simple_mut" and current_stack >= 25 then
		keys.attacker:SetModifierStackCount("modifier_guard_simple_mut", keys.attacker, 25)
	end

	if modifier == "modifier_hitter_simple_mut" and current_stack >= 102 then
		keys.attacker:SetModifierStackCount("modifier_hitter_simple_mut", keys.attacker, 102)
	end
end