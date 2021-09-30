extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "canary"
    self.value = 1
    self.values = [1]
    self.rarity = "common"
    self.groups = ["bird", "animal", "organism"]
    self.sfx = []

    self.texture = load_texture("res://mimimod/symbols/canary.png")
    self.name = "Canary"
    self.description = "Adjacent <all_and_canarylikes> give <color_FBF236><value_1><end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("canarylikes").change_value_bonus(values[0]).animate("circle", 0, [symbol, i]))