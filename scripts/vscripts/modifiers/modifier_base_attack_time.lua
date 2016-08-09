if modifier_base_attack_time == nil then
	modifier_base_attack_time = class({})
end
function modifier_base_attack_time:IsHidden()
	return true
end
function modifier_base_attack_time:IsDebuff()
	return false
end
function modifier_base_attack_time:IsPurgable()
	return false
end
function modifier_base_attack_time:OnCreated( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.baseattacktime = self.parent:GetBaseAttackTime()
	end
end
function modifier_base_attack_time:OnRefresh( kv )
	if IsServer() then
		self.parent = self:GetParent()
		self.stacks = self.parent:GetModifierStackCount(self, self.parent)
		self.baseattacktime = self.parent:GetBaseAttackTime()
	end
end
function modifier_base_attack_time:GetAttributes ()
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end
function modifier_base_attack_time:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_BASE_ATTACK_TIME_CONSTANT
	}
	return funcs
end
function modifier_base_attack_time:GetModifierBaseAttackTimeConstant()
	return self.baseattacktime - (0.01 * self.stacks)
end

