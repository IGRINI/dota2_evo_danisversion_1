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
function modifier_blocker_simple_mut:GetModifierPhysical_ConstantBlockUnavoidablePreArmor()
	return self.block_damage
end


if modifier_simple_bat_mut == nil then
	modifier_simple_bat_mut = class({})
end
function modifier_simple_bat_mut:IsHidden()
	return true
end
function modifier_simple_bat_mut:IsDebuff()
	return false
end
function modifier_simple_bat_mut:IsPurgable()
	return false
end
function modifier_simple_bat_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.baseattacktime = self.parent:GetBaseAttackTime()
	end
end
function modifier_simple_bat_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.baseattacktime = self.parent:GetBaseAttackTime()
	end
end
function modifier_simple_bat_mut:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_simple_bat_mut:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_BASE_ATTACK_TIME_CONSTANT
	}
	return funcs
end
function modifier_simple_bat_mut:GetModifierBaseAttackTimeConstant()
	return self.baseattacktime - (0.01 * self.stacks)
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
function modifier_fly_simple_mut:GetBonusDayVision()
	return self.vision
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
function modifier_runner_simple_mut:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.ms = self.stacks * 2
	end
end
function modifier_runner_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
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
function modifier_runner_simple_mut:GetModifierMoveSpeedBonus_Constant()
	return self.ms
end


if modifier_attacker_simple_mut == nil then
	modifier_attacker_simple_mut = class({})
end
function modifier_attacker_simple_mut:IsHidden()
	return true
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
		self.ad = self.stacks * 1
	end
end
function modifier_attacker_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.ad = self.stacks * 1
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
function modifier_attacker_simple_mut:GetModifierPreAttack_BonusDamage()
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
		self.hp = self.stacks * 5
	end
end
function modifier_tank_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.hp = self.stacks * 5
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
function modifier_tank_simple_mut:GetModifierPreAttack_BonusDamage()
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
		self.armor = self.stacks * 2											--По-моему 2 армора - это очень много
	end
end
function modifier_guard_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.armor = self.stacks * 2											--По-моему 2 армора - это очень много
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
function modifier_guard_simple_mut:GetModifierPhysicalArmorBonus()
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
		self.as = self.stacks * 6											--Тоже много по-моему
	end
end
function modifier_hitter_simple_mut:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.as = self.stacks * 6											--Тоже много по-моему
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
function modifier_hitter_simple_mut:GetModifierAttackSpeedBonus_Constant()
	return self.as
end



--#######################################Тут твои модификаторы#######################################