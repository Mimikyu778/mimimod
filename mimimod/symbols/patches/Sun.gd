extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "sun"

func patch_values(values, value_index):
    values.push_back(2)
    return values

func patch_description(description):
    return join(description, "Adjacent <all_and_sunbuffs> give <color_E14A68>2x<end> more <icon_coin>. Adjacent <all_and_sunlikes> transform into <icon_rain>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("sunlikes").change_type("rain").animate("circle", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_group("sunbuffs").change_value_multiplier(2).animate("circle", "default", [symbol, i]))