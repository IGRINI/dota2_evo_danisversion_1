if item_meat_lagre == nil then
	item_meat_lagre = class({})
end
LinkLuaModifier( "modifier_meat_med","modifiers/modifiers", LUA_MODIFIER_MOTION_NONE )
LinkLuaModifier( "modifier_carnivore_first","modifiers/modifiers", LUA_MODIFIER_MOTION_NONE )
function item_meat_lagre:GetChannelTime()																--Получаем время каста
	return 5.2
end
function item_meat_lagre:CastFilterResult()
	local caster = self:GetCaster()
	if caster:HasModifier("modifier_fullfilled_med") then
		return UF_FAIL_CUSTOM
	end
	return UF_SUCCESS
end
function item_meat_lagre:GetCustomCastError()
	local caster = self:GetCaster()
	if caster:HasModifier("modifier_fullfilled_med") then
		return "#error_you_filled"
	end
	return ""
end
function item_meat_lagre:OnSpellStart()
	local caster = self:GetCaster()																		--Получаем кастера
	--if not caster:HasModifier("modifier_fullfilled_med") then 										--Если на кастере не висит модификатора "полного живота, то"
	caster:AddNewModifier(caster,self,"modifier_meat_med",{})											--Добавляем кастеру модификатор, который восстанавливает % хп
	if not caster:HasModifier("modifier_carnivore_first") then 											--Если кастер не имеет модификатора Плотоядного, добавляем его и увеличиваем количество стаков на 1, чтобы сразу была единичка
		caster:AddNewModifier(caster,self,"modifier_carnivore_first",{})								--Вот добавление модификатора
		caster:SetModifierStackCount("modifier_carnivore_first",caster,1) 								--Вот установка стака на
	elseif caster:HasModifier("modifier_carnivore_first") then  										--Иначе если кастер уже имеет модификатор плотоядного, то
		local stacks = caster:GetModifierStackCount("modifier_carnivore_first",caster) 					--Получаем сколько стаков на модификаторе
		caster:SetModifierStackCount("modifier_carnivore_first",caster,stacks + 1)						--Увеличиваем кол-во стаков на 1
	end
	--[[else 																							--Если кастер имеет модификатор полного живота на себе, то
		self:RemoveSelf()																				--Удаляем предмет из инвентаря, чтобы не пошел каст
		caster:AddItemByName("item_meat_lagre")															--Добавляем предмет обратно(типо он не заюзался)
	end]]
end
function item_meat_lagre:OnChannelFinish( bInterrupted )												--Функция, которая запускается, когда каст окончен или прерван
	local caster = self:GetCaster()																		--Получаем кастера
	if bInterrupted then 																				--Если каст прерван(салом, станом, сам игрок прервал, чем угодно)
		caster:RemoveModifierByName("modifier_meat_med")												--Удаляем модификатор хила
		self:RemoveSelf()																				--Удаляем предмет
		caster:AddNewModifier(caster,self,"modifier_fullfilled_med",{duration = 16})					--Вешаем модификатор полного живота на 16 сек
	else 																								--Если каст дошел до конца
		caster:RemoveModifierByName("modifier_meat_med")												--То же самое, просто если не определить, что будет делаться при прерыве каста, модификатор хила так и останется висеть на кастере
		self:RemoveSelf()
		caster:AddNewModifier(caster,self,"modifier_fullfilled_med",{duration = 16})
	end
end
