extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "witch"

func patch_description(description):
    return join(description, "<color_E14A68>Destroys<end> adjacent <icon_toddler> for <icon_coin><color_FBF236>20<end>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("toddler").set_destroyed().animate("bounce", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_type("toddler").change_value_bonus(20))