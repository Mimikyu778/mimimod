extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "catlady"
    self.value = 2
    self.values = [2, 2, 6, 1]
    self.rarity = "uncommon"
    self.groups = ["human", "organism", "spawner0"]
    self.sfx = ["Cackle"]

    self.texture = load_texture("res://mimimod/symbols/catlady.png")
    self.name = "Cat Lady"
    self.description = "Has a <color_E14A68><value_1>%<end> chance of <color_E14A68>adding<end> <icon_adoption_papers>. Has a <color_E14A68><value_3>%<end> chance of <color_E14A68>adding<end> <icon_hex_of_hoarding>. Adjacent <icon_cat> and <icon_hex_of_hoarding> give <color_E14A68>2x<end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_item_type("adoption_papers").animate("circle"))
    symbol.add_effect(effect().if_value_random(2).add_symbol_type("hex_of_hoarding").animate("circle"))
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("hex_of_hoarding").change_value_multiplier(values[1]).animate("circle", "default", [symbol, i]))