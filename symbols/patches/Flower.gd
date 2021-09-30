extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "flower"

func patch_values(values, value_index):
    values.push_back(2)
    return values

func patch_description(description):
    return join(description, "Adjacent <all_and_flowerbuffs> give <color_E14A68>2x<end> more <icon_coin>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("flowerbuffs").change_value_multiplier(2).animate("circle", "default", [symbol, i]))