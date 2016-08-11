if modifier_blocker_simple_mut == nil then
	modifier_blocker_simple_mut = class({})
end
function modifier_blocker_simple_mut:IsHidden()
	return true
end
function modifier_blocker_simple_mut:IsDebuff()
	return false
end
function modifier_blocker_simple_mut:IsPurgable()
	return false
end
function modifier_blocker_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_blocker_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_TOTAL_CONSTANT_BLOCK_UNAVOIDABLE_PRE_ARMOR
	}
	return funcs
end
function modifier_blocker_simple_mut:GetModifierPhysical_ConstantBlockUnavoidablePreArmor(params)
	return self:GetStackCount() * 2
end



if modifier_bat_simple_mut == nil then
	modifier_bat_simple_mut = class({})
end
function modifier_bat_simple_mut:IsHidden()
	return true
end
function modifier_bat_simple_mut:IsDebuff()
	return false
end
function modifier_bat_simple_mut:IsPurgable()
	return false
end
function modifier_bat_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_bat_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_BASE_ATTACK_TIME_CONSTANT
	}
	return funcs
end
function modifier_bat_simple_mut:GetModifierBaseAttackTimeConstant(params)
	return self.baseattacktime - (0.012 * self:GetStackCount())
end



if modifier_fly_simple_mut == nil then
	modifier_fly_simple_mut = class({})
end
function modifier_fly_simple_mut:IsHidden()
	return true
end
function modifier_fly_simple_mut:IsDebuff()
	return false
end
function modifier_fly_simple_mut:IsPurgable()
	return false
end
function modifier_fly_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_fly_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_BONUS_DAY_VISION
	}
	return funcs
end
function modifier_fly_simple_mut:GetBonusDayVision(params)
	return self:GetStackCount() * 2
end


if modifier_runner_simple_mut == nil then
	modifier_runner_simple_mut = class({})
end
function modifier_runner_simple_mut:IsHidden()
	return true
end
function modifier_runner_simple_mut:IsDebuff()
	return false
end
function modifier_runner_simple_mut:IsPurgable()
	return false
end
function modifier_runner_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_runner_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_MOVESPEED_BONUS_CONSTANT
	}
	return funcs
end
function modifier_runner_simple_mut:GetModifierMoveSpeedBonus_Constant(params)
	return self:GetStackCount() * 2
end


if modifier_attacker_simple_mut == nil then
	modifier_attacker_simple_mut = class({})
end
function modifier_attacker_simple_mut:IsHidden()
	return false
end
function modifier_attacker_simple_mut:IsDebuff()
	return false
end
function modifier_attacker_simple_mut:IsPurgable()
	return false
end
function modifier_attacker_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_attacker_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE
	}
	return funcs
end
function modifier_attacker_simple_mut:GetModifierPreAttack_BonusDamage(params)
	return self:GetStackCount() * 1.2
end



if modifier_tank_simple_mut == nil then
	modifier_tank_simple_mut = class({})
end
function modifier_tank_simple_mut:IsHidden()
	return true
end
function modifier_tank_simple_mut:IsDebuff()
	return false
end
function modifier_tank_simple_mut:IsPurgable()
	return false
end
function modifier_tank_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_tank_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE
	}
	return funcs
end
function modifier_tank_simple_mut:GetModifierPreAttack_BonusDamage(params)
	return self:GetStackCount() * 3.1
end



if modifier_guard_simple_mut == nil then
	modifier_guard_simple_mut = class({})
end
function modifier_guard_simple_mut:IsHidden()
	return true
end
function modifier_guard_simple_mut:IsDebuff()
	return false
end
function modifier_guard_simple_mut:IsPurgable()
	return false
end
function modifier_guard_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_guard_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS
	}
	return funcs
end
function modifier_guard_simple_mut:GetModifierPhysicalArmorBonus(params)
	return self:GetStackCount() * 1.2
end



if modifier_hitter_simple_mut == nil then
	modifier_hitter_simple_mut = class({})
end
function modifier_hitter_simple_mut:IsHidden()
	return true
end
function modifier_hitter_simple_mut:IsDebuff()
	return false
end
function modifier_hitter_simple_mut:IsPurgable()
	return false
end
function modifier_hitter_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_hitter_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_ATTACKSPEED_BONUS_CONSTANT
	}
	return funcs
end
function modifier_hitter_simple_mut:GetModifierAttackSpeedBonus_Constant(params)
	return self:GetStackCount() * 4.5
end



if modifier_fullfilled_med == nil then
	modifier_hitter_simple_mut = class({})
end
function modifier_hitter_simple_mut:IsHidden()
	return true
end
function modifier_hitter_simple_mut:IsDebuff()
	return false
end
function modifier_hitter_simple_mut:IsPurgable()
	return false
end
function modifier_hitter_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end



if modifier_fullfilled_med == nil then
	modifier_fullfilled_med = class({})
end
function modifier_fullfilled_med:IsHidden()
	return true
end
function modifier_fullfilled_med:IsDebuff()
	return false
end
function modifier_fullfilled_med:IsPurgable()
	return false
end
function modifier_fullfilled_med:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

if modifier_carnivore_first == nil then
	modifier_carnivore_first = class({})
end
function modifier_carnivore_first:IsHidden()
	return true
end
function modifier_carnivore_first:IsDebuff()
	return false
end
function modifier_carnivore_first:IsPurgable()
	return false
end
function modifier_carnivore_first:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

if modifier_omnivore_first == nil then
	modifier_omnivore_first = class({})
end
function modifier_omnivore_first:IsHidden()
	return true
end
function modifier_omnivore_first:IsDebuff()
	return false
end
function modifier_omnivore_first:IsPurgable()
	return false
end
function modifier_omnivore_first:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

if modifier_herbivore_first == nil then
	modifier_herbivore_first = class({})
end
function modifier_herbivore_first:IsHidden()
	return true
end
function modifier_herbivore_first:IsDebuff()
	return false
end
function modifier_herbivore_first:IsPurgable()
	return false
end
function modifier_herbivore_first:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

if modifier_meat_med == nil then
	modifier_meat_med = class({})
end
function modifier_meat_med:IsHidden()
	return true
end
function modifier_meat_med:IsDebuff()
	return false
end
function modifier_meat_med:IsPurgable()
	return false
end
function modifier_meat_med:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_meat_med:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_HEALTH_REGEN_PERCENTAGE
	}
	return funcs
end
function modifier_meat_med:GetModifierHealthRegenPercentage(params)
	return 4.5
end

--#################################################^^^###############################################--
--#######################################Модификаторы I_GRIN_I#######################################--
--#######################################Тут наши модификаторы#######################################--
--########################################Модификаторы Dani's########################################--
--#################################################vvv###############################################--

	--мана бонус
if modifier_mage_simple_mut == nil then
	modifier_mage_simple_mut = class({})
end
function modifier_mage_simple_mut:IsHidden()
	return true
end
function modifier_mage_simple_mut:IsDebuff()
	return false
end
function modifier_mage_simple_mut:IsPurgable()
	return false
end
function modifier_mage_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_mage_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_MANA_BONUS
	}
	return funcs
end
function modifier_mage_simple_mut:GetModifierManaBonus(params)
	return self:GetStackCount() * 0.8
end


	--мана реген
if modifier_mage_r_simple_mut == nil then
	modifier_mage_r_simple_mut = class({})
end
function modifier_mage_r_simple_mut:IsHidden()
	return true
end
function modifier_mage_r_simple_mut:IsDebuff()
	return false
end
function modifier_mage_r_simple_mut:IsPurgable()
	return false
end
function modifier_mage_r_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_mage_r_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_MANA_REGEN_CONSTANT
	}
	return funcs
end
function modifier_mage_r_simple_mut:GetModifierConstantManaRegen(params)
	return self:GetStackCount() * 0.52
end


	--хп реген
if modifier_tank_r_simple_mut == nil then
	modifier_tank_r_simple_mut = class({})
end
function modifier_tank_r_simple_mut:IsHidden()
	return true
end
function modifier_tank_r_simple_mut:IsDebuff()
	return false
end
function modifier_tank_r_simple_mut:IsPurgable()
	return false
end
function modifier_tank_r_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_tank_r_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_HEALTH_REGEN_CONSTANT
	}
	return funcs
end
function modifier_tank_r_simple_mut:GetModifierConstantHealthRegen(params)
	return self:GetStackCount() * 0.74
end


	--маг резист
if modifier_mage_m_simple_mut == nil then
	modifier_mage_m_simple_mut = class({})
end
function modifier_mage_m_simple_mut:IsHidden()
	return true
end
function modifier_mage_m_simple_mut:IsDebuff()
	return false
end
function modifier_mage_m_simple_mut:IsPurgable()
	return false
end
function modifier_mage_m_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_mage_m_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BONUS
	}
	return funcs
end
function modifier_mage_m_simple_mut:GetModifierMagicalResistanceBonus(params)
	return self:GetStackCount() * 0.74
end

	--статы
		--статы на ловкость
if modifier_stat_a_simple_mut == nil then
	modifier_stat_a_simple_mut = class({})
end
function modifier_stat_a_simple_mut:IsHidden()
	return true
end
function modifier_stat_a_simple_mut:IsDebuff()
	return false
end
function modifier_stat_a_simple_mut:IsPurgable()
	return false
end
function modifier_stat_a_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_stat_a_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_STATS_AGILITY_BONUS
	}
	return funcs
end
function modifier_stat_a_simple_mut:GetModifierBonusStats_Agility(params)
	return self:GetStackCount() * 0.12
end


	--статы на силу
if modifier_stat_s_simple_mut == nil then
	modifier_stat_s_simple_mut = class({})
end
function modifier_stat_s_simple_mut:IsHidden()
	return true
end
function modifier_stat_s_simple_mut:IsDebuff()
	return false
end
function modifier_stat_s_simple_mut:IsPurgable()
	return false
end
function modifier_stat_s_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_stat_s_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_STATS_STRENGTH_BONUS
	}
	return funcs
end
function modifier_stat_s_simple_mut:GetModifierMagicalResistanceBonus(params)
	return self:GetStackCount() * 0.14
end


	--статы на инту
if modifier_stat_i_simple_mut == nil then
	modifier_stat_i_simple_mut = class({})
end
function modifier_stat_i_simple_mut:IsHidden()
	return true
end
function modifier_stat_i_simple_mut:IsDebuff()
	return false
end
function modifier_stat_i_simple_mut:IsPurgable()
	return false
end
function modifier_stat_i_simple_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_stat_i_simple_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_STATS_INTELLECT_BONUS
	}
	return funcs
end
function modifier_stat_i_simple_mut:GetModifierBonusStats_Intellect(params)
	return self:GetStackCount() * 0.15
end