function Update_Drone0(CustomGroup, playerIndex, shipID)
	SobGroup_CreateIfNotExist("dronefrigate_temp")
	SobGroup_Clear("dronefrigate_temp")
	SobGroup_FillShipsByType("dronefrigate_temp", "Player_Ships"..playerIndex, "Hgn_Smt_hivefrigate")
	if SobGroup_FillProximitySobGroup ("temp", "dronefrigate_temp", CustomGroup, 10000) == 0 then
		SobGroup_TakeDamage(CustomGroup, 1)
	end
end