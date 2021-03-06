
local _, c = UnitClass("player")
if c ~= "MAGE" then return end


-- Armor
Cork:GenerateAdvancedSelfBuffer("Armor", {168, 7302, 6117, 30482})

-- Fuckus Magic
local spellname, _, icon = GetSpellInfo(54646)
Cork:GenerateLastBuffedBuffer(spellname, icon)

-- Amplify Magic
local spellname, _, icon = GetSpellInfo(1008)
Cork:GenerateRaidBuffer(spellname, nil, icon, false)

-- Dampen Magic
local spellname, _, icon = GetSpellInfo(604)
Cork:GenerateRaidBuffer(spellname, nil, icon, false)


--~ i = core:NewModule("Amplify/Dampen Magic", buffs)
--~ i.target = "Raid"
--~ i.defaultspell = GetSpellInfo(604) -- Dampen Magic
--~ i.spells = {
--~ 	[GetSpellInfo(1008)] = true, -- Amplify Magic
--~ 	[i.defaultspell] = true,
--~ }
