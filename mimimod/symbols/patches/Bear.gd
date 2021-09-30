extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "bear"

func patch_description(description):
    return join(description, "Destroys adjacent <icon_picnic> for <color_E14A68>35<end><icon_coin>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("picnic").set_destroyed().animate("bounce", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_type("picnic").change_value_bonus(35))