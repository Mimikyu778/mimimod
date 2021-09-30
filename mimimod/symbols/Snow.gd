extends "res://modloader/ModSymbol.gd"


func init(modloader: Reference, params):
	
	self.modloader = modloader
	
	self.id = "snow"
	self.value = 2
	self.values = [2]
	self.rarity = "uncommon"
	self.groups = ["sunlikes"]
	add_sfx_redirect("rain")
	
	self.texture = load_texture("res://mimimod/symbols/snow.png")
	self.name = "Snow"
	self.description = "Adjacent <all_and_snowlikes> give <color_E14A68><value_1>x<end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
	for i in adjacent:
		symbol.add_effect_for_symbol(i, effect().if_group("snowlikes").change_value_multiplier(values[0]).animate("circle", 0, [symbol, i]))