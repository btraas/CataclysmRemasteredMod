-- Bentusi

Number_Properties_Priority = 1.0

Number_Properties = {
	cfg_race_is_playable = 1.0,
	cfg_race_index_sort = 4.0,
	cfg_race_select_weight = 1.0,
	cfg_race_is_random = 0.0,
	
	cfg_hyperspace_effect_time = 18.5,
	cfg_buildable_subsystems = 1.0,
	ai_demand_reset_value = 3.0,
	
--	persona_rus_for_builder = 1500.0,
--	persona_demand_builder_adjust = -2.25,

	persona_class_demand_fighter = 0.25,
	persona_class_demand_corvette = 0.5,
	persona_class_demand_frigate = 0.25,
}

String_Properties_Priority = 1.0

String_Properties = {
	cfg_hyperspace_effect_fx = "hyperspace_gate_bentusi",
	cfg_hyperspace_effect_audio = "etg/special/SPECIAL_ABILITIES_HYPERSPACE_IN",
	
	path_build = [[data:scripts/races/bentusi/scripts/def_build.lua]],
	path_research = [[data:scripts/races/bentusi/scripts/def_research.lua]],
	path_ai = [[data:scripts/races/bentusi/scripts/def_ai.lua]],
	path_ai_special = [[data:scripts/races/bentusi/scripts/ai_special.lua]],
--	path_ai_research = [[data:scripts/races/bentusi/scripts/ai_upgrades.lua]],
--	path_ai_build = [[data:scripts/races/bentusi/scripts/ai_build.lua]],
	
	path_crate_locate = [[data:scripts/races/bentusi/scripts/crate_locate.lua]],
	path_crate_ships = [[data:scripts/races/bentusi/scripts/crate_ships.lua]],
	
	def_type_mothership = "Ben_Mothership",
	def_type_carrier = "Ben_Carrier",
	def_type_scout = "Ben_probe",
}
