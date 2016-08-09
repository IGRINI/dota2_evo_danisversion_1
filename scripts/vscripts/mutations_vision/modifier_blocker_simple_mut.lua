modifier_blocker_simple_mut = class({})

function modifier_blocker_simple_mut:GetAttributes() 
	return MODIFIER_ATTRIBUTE_PERMANENT 
end

function modifier_blocker_simple_mut:IsHidden()
	return true
end

function modifier_blocker_simple_mut:OnCreated(kv)
	local current_stack = kv.caster:GetModifierStackCount(self, kv.caster)
	self.block_damage = 2 * current_stack
end

function modifier_blocker_simple_mut:GetModifierPhysical_ConstantBlockUnavoidablePreArmor(params)
	return self.block_damage
end