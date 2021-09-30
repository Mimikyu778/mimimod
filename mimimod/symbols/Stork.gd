extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "stork"
    self.value = 3
    self.values = [9]
    self.rarity = "rare"
    self.groups = ["organism", "animal", "bird"]

    add_sfx_redirect("magpie")

    self.texture = load_texture("res://mimimod/symbols/stork.png")
    self.name = "Stork"
    self.description = "Has a <color_E14A68>9%<end> chance to add <icon_toddler>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("toddler").animate("shake"))
        