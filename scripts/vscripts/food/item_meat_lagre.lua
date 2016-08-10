if item_meat_lagre == nil then
	item_meat_lagre = class({})
end
LinkLuaModifier( "modifier_meat_med","modifiers/modifiers", LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_omnivore_first","modifiers/modifiers", LUA_MODIFIER_MOTION_NONE )
function item_meat_lagre:GetChannelTime()
	return 5.2
end
function item_meat_lagre:OnAbilityPhaseStart()
	return true
end
function item_meat_lagre:OnSpellStart()
	local caster = self:GetCaster()
	if not caster:HasModifier("modifier_fullfilled_med") then
		caster:AddNewModifier(caster,self,"modifier_meat_med",{})
		if not caster:HasModifier("modifier_omnivore_first") then
			caster:AddNewModifier(caster,self,"modifier_omnivore_first",{})
			caster:SetModifierStackCount("modifier_omnivore_first",caster,1)
		elseif caster:HasModifier("modifier_omnivore_first") then
			local stacks = caster:GetModifierStackCount("modifier_omnivore_first",caster)
			caster:SetModifierStackCount("modifier_omnivore_first",caster,stacks + 1)
		end
	else
		self:RemoveSelf()
		caster:AddItemByName("item_meat_lagre")
	end
end
function item_meat_lagre:OnChannelFinish( bInterrupted )
	local caster = self:GetCaster()
	if bInterrupted then
		caster:RemoveModifierByName("modifier_meat_med")
		self:RemoveSelf()
		caster:AddNewModifier(caster,self,"modifier_fullfilled_med",{duration = 16})
	else
		caster:RemoveModifierByName("modifier_meat_med")
		self:RemoveSelf()
		caster:AddNewModifier(caster,self,"modifier_fullfilled_med",{duration = 16})
	end
end