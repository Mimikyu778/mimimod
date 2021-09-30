extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "princess"
    self.value = 3
    self.values = [2, 1]
    self.rarity = "rare"
    self.groups = ["organism", "human", "princelikes", "doglikes", "flowerbuffs"]
    self.sfx = ["Shine"]

    self.texture = load_texture("res://mimimod/symbols/princess.png")
    self.name = "Princess"
    self.description = "Adjacent <all_and_princesslikes> give <color_E14A68>x2<end> more <icon_coin>. Adjacent <icon_frogprince> turn into <icon_prince>."


func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("princesslikes").change_value_multiplier(values[0], "coin", false).animate("bounce", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("frogprince").change_type("prince").animate("circle", "default", [symbol, i]))