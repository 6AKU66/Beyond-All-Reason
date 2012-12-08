--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
  return {
    name      = "mo_combomb_full_damage",
    desc      = "Flying Combombs Can Do Less Damage",
    author    = "TheFatController, Bluestone",
    date      = "Dec 2012",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end


if (not gadgetHandler:IsSyncedCode()) then
  return false
end

local enabled = tonumber(Spring.GetModOptions().mo_combomb_full_damage) or 1
if (enabled == 1) then 
--	return false
end

local COM_BLAST = WeaponDefNames['commander_blast'].id
local COMMANDER = {
  [UnitDefNames["corcom"].id] = true,
  [UnitDefNames["armcom"].id] = true,
}

-- function gadget:UnitDestroyed(unitID, unitDefID, unitTeam) --we need to call UnitPreDamaged instead, so as to get in before unit_transportfix has its effect

function gadget:UnitPreDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponID, attackerID, attackerDefID, attackerTeam)

	--Spring.Echo("UnitPreDamaged called with unitID " .. unitID .. " and attackerID " .. attackerID)

	--all we care about is how high the commander is when the COM_BLAST happens
	--(much simper than checking if the com has just been unloaded from a trans or not, with essentially the same gameplay; coms don't levitate/bounce much)
	if (COMMANDER[attackerDefID]) and  (weaponID == COM_BLAST) then --we control the damage inflicted on units by the COM_BLAST
		--Spring.Echo("weapon is comblast from unloaded com " .. attackerID)
		local x,y,z = Spring.GetUnitBasePosition(attackerID)
		local h = Spring.GetGroundHeight(x,z)
		--Spring.Echo(x .. " " .. y .. " " .. z .. " " .. h)
		if ((y-h) > 10) then
			local _,hp = Spring.GetUnitHealth(unitID)
			local newdamage = math.min(damage,math.max(hp*0.6,400)) 
			--Spring.Echo("new damage is " .. newdamage .. ", old damage is " .. damage .. ", hp is " .. hp)
			return newdamage,0
		end
	end
	--Spring.Echo("Did full damage " .. damage)
	return damage,1
end


