-- Yelow13 - "Unlimited" sets all to 99999

--
UC_Family("Fighter", 99999);
UC_FamilyOverride("Vaygr","Fighter", 99999);
UC_Family("Fighter_hw1", 99999);
UC_FamilyOverride("Kushan","Fighter", 99999);

--
UC_Family("Corvette", 99999);
UC_Family("Corvette_hw1", 99999);
UC_FamilyOverride("Kushan","Corvette", 99999);
UC_ShipType("MinelayerCorvette",99999);
UC_ShipType("SalvageCorvette",99999);

--
UC_Family("Frigate", 99999);
--UC_FamilyOverride("Vaygr", "Frigate", 10);

	--UC_ShipType("TorpedoFrigate",4);		-- max 4 torpedo frigates
	UC_ShipType("DefenseFieldFrigate",99999);
	
	UC_ShipType("CaptureFrigate",99999);		-- max 6 capture frigates
	UC_ShipTypeOverride("Hiigaran","CaptureFrigate",99999); -- but max 4 for the hiigarans. As a TEST
--
UC_Family("Capital", 99999);
UC_FamilyOverride("Vaygr", "Capital", 99999);
UC_ShipType("Destroyer", 99999);
UC_ShipTypeOverride("Kushan","Destroyer",99999);
UC_ShipTypeOverride("Taiidan","Destroyer",99999);
UC_ShipType("Carrier", 99999);
UC_ShipTypeOverride("Vaygr", "Carrier", 99999);
UC_ShipType("Battlecruiser",99999);
UC_ShipType("HeavyCruiser",99999);
UC_ShipType("Shipyard", 99999);

--
UC_Family("Utility", 99999);

	UC_ShipType("ResourceCollector", 99999);
	UC_ShipType("ResourceController", 99999);
	UC_ShipType("Probe", 99999);
	UC_ShipType("ECMProbe", 99999);
	UC_ShipType("ProximitySensor", 99999);	
	
UC_Family("Resource", 99999);
UC_ShipType("ResourceCollector_hw1", 99999);
UC_ShipType("ResourceController_hw1", 99999);
--
UC_Family("NonCombat", 99999);
UC_ShipType("Probe_hw1", 99999);
UC_ShipType("ProximitySensor_hw1", 99999);
UC_ShipType("Research", 1);
UC_ShipType("Research1", 1);
UC_ShipType("Research2", 1);
UC_ShipType("Research3", 1);
UC_ShipType("Research4", 1);
UC_ShipType("Research5", 1);
--UC_ShipType("CloakGenerator", 4);
--UC_ShipType("GravWellGenerator", 4);	

--
UC_Family("Platform", 99999);
	UC_ShipType("HyperspacePlatform", 99999);

--
UC_Family("Mothership", 99999);

--
UC_Family("DreadNaught", 99999);

UC_Family("SinglePlayerMisc", 99999);

--
UC_Family("SinglePlayerMisc", 99999);
UC_FamilyOverride("Hiigaran","SinglePlayerMisc", 0 ); -- no singleplayer ships can be built/captured by the hiigarans
	UC_ShipType("Mover", 99999);		-- max 10 movers

--	
UC_Family("SPMovers", 99999);

--
UC_Family("CommStation", 99999 );

