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

