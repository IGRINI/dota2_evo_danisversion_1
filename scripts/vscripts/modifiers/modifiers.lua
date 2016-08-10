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
function modifier_blocker_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.block_damage = 2 * stacks
	end
end
function modifier_blocker_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.block_damage = 2 * stacks
	end
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
	return self.block_damage
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
function modifier_bat_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.baseattacktime = self.parent:GetBaseAttackTime()
	end
end
function modifier_bat_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.baseattacktime = self.parent:GetBaseAttackTime()
	end
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
	return self.baseattacktime - (0.012 * self.stacks)
end



if modifier_fly_simple_mut == nil then
	modifier_fly_simple_mut = class({})
end
function modifier_fly_simple_mut:IsHidden()
	return false
end
function modifier_fly_simple_mut:IsDebuff()
	return false
end
function modifier_fly_simple_mut:IsPurgable()
	return false
end
function modifier_fly_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.vision = self.stacks * 2
	end
end
function modifier_fly_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.vision = self.stacks * 2
	end
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
	return self.vision
end



if modifier_runner_simple_mut == nil then
	modifier_runner_simple_mut = class({})
end
function modifier_runner_simple_mut:IsHidden()
	return false
end
function modifier_runner_simple_mut:IsDebuff()
	return false
end
function modifier_runner_simple_mut:IsPurgable()
	return false
end
function modifier_runner_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount("modifier_runner_simple_mut", nil)
		self.ms = self.stacks * 2
	end
end
function modifier_runner_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount("modifier_runner_simple_mut", nil)
		self.ms = self.stacks * 2
	end
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
	return 2
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
function modifier_attacker_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.ad = self.stacks * 1.2
	end
end
function modifier_attacker_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.ad = self.stacks * 1.2
	end
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
	return self.ad
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
function modifier_tank_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.hp = self.stacks * 3.1
	end
end
function modifier_tank_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.hp = self.stacks * 3.1
	end
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
	return self.hp
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
function modifier_guard_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.armor = self.stacks * 1.2											--По-моему 2 армора - это очень много
	end
end
function modifier_guard_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.armor = self.stacks * 1.2											--По-моему 2 армора - это очень много
	end
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
	return self.armor
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
function modifier_hitter_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.as = self.stacks * 4.5										--Тоже много по-моему
	end
end
function modifier_hitter_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.as = self.stacks * 4.5											--Тоже много по-моему
	end
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
	return self.as
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
function modifier_mage_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.mb = self.stacks * 0.8										
	end
end
function modifier_mage_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.mb = self.stacks * 0.8											
	end
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
	return self.mb
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
function modifier_mage_r_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.mr = self.stacks * 0.52								
	end
end
function modifier_mage_r_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.mr = self.stacks * 0.52											
	end
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
	return self.mr
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
function modifier_tank_r_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.hr = self.stacks * 0.74										
	end
end
function modifier_tank_r_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.hr = self.stacks * 0.74											
	end
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
	return self.hr
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
function modifier_mage_m_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.mr = self.stacks * 0.74										
	end
end
function modifier_mage_m_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.mr = self.stacks * 0.74											
	end
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
	return self.mr
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
function modifier_stat_a_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.ab = self.stacks * 0.12										
	end
end
function modifier_stat_a_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.ab = self.stacks * 0.12											
	end
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
	return self.ab
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
function modifier_stat_s_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.sb = self.stacks * 0.14										
	end
end
function modifier_stat_s_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.sb = self.stacks * 0.14											
	end
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
	return self.sb
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
function modifier_stat_i_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.ib = self.stacks * 0.15										
	end
end
function modifier_stat_i_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.ib = self.stacks * 0.15											
	end
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
	return self.ib
end