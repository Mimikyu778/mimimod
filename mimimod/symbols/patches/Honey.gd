extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "honey"

func patch_description(description):
    return join(description, "<color_E14A68>Destroys<end> adjacent <icon_beer>. Transforms into <icon_mead> upon <color_E14A68>destroying<end> <icon_beer>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("beer").set_destroyed().animate("rotate"))
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_type("beer").set_target(symbol).change_type("mead"))