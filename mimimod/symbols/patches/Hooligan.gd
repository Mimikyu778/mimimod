extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "hooligan"

func patch_description(description):
    return join(description, "<color_E14A68>Destroys<end> adjacent <icon_firework> and gives them <icon_coin><color_E14A68>x2<end> more <icon_coin>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("firework").change_type("fireworkexplodes").animate("bounce", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("fireworkexplodes").change_value_multiplier(2))