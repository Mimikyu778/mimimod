extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "joker"

func patch_description(description):
    return join(description, "Adjacent <icon_penguin> give <color_E14A68>2x<end> more <icon_coin>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("penguin").change_value_multiplier(2).animate("bounce", "default", [symbol, i]))