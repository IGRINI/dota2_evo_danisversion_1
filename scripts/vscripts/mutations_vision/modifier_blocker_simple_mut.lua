--[[modifier_blocker_simple_mut = class({})

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
end]]

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