extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "santa"
    self.value = 2
    self.values = [12, 1, 9]
    self.rarity = "uncommon"
    self.groups = ["organism", "human", "snowlikes", "doglikes"]

    self.sfx = ["Servedrink"]

    self.texture = load_texture("res://mimimod/symbols/santa.png")
    self.name = "Santa"
    self.description = "Has a <color_E14A68>12%<end> chance to add <icon_present> and <color_E14A68>1%<end> chance to add <icon_coal>. Destroys <icon_milk> for <icon_coin><color_FBF236>9<end>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("present").animate("shake"))
    symbol.add_effect(effect().if_value_random(1).add_symbol_type("coal").animate("shake"))
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("milk").set_destroyed().animate("bounce", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_type("milk").change_value_bonus(values[2]))
