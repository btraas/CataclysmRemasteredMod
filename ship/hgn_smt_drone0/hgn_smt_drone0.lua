function Update_CataDrone0(CustomGroup, playerIndex, shipID)
	SobGroup_CreateIfNotExist("dronefrigate_temp")
	SobGroup_Clear("dronefrigate_temp")
	SobGroup_FillShipsByType("dronefrigate_temp", "Player_Ships"..playerIndex, "hgn_smt_hivefrigate")
	if SobGroup_FillProximitySobGroup ("temp", "dronefrigate_temp", CustomGroup, 30000) == 0 then
--		SobGroup_TakeDamage(CustomGroup, 1)
	end
end