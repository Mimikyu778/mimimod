extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "prince"
    self.value = 3
    self.values = [10]
    self.rarity = "rare"
    self.groups = ["organism", "human", "princesslikes", "doglikes"]
    self.findable = false

    self.sfx = ["Coinjingle"]

    self.texture = load_texture("res://mimimod/symbols/prince.png")
    self.name = "Prince"
    self.description = "Adjacent <all_and_princelikes> give <color_E14A68>x2<end> <icon_coin>. <color_E14A68>7%<end> chance to drop <icon_lucky_capsule>."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("lucky_capsule").animate("shake"))
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("princelikes").change_value_multiplier(2).animate("bounce", "default", [symbol, i]))