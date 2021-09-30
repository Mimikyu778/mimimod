extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "firework"
    self.value = 0
    self.values = [7]
    self.rarity = "common"
    self.groups = ["time_machine"]
    self.sfx = []

    self.texture = load_texture("res://mimimod/symbols/firework.png")
    self.name = "Firework"
    self.description = "Gives <icon_coin><color_FBF236><value_1><end> for each row below it when <color_E14A68>destroyed<end>. <color_E14A68>Destroys<end> self after <value_1> spins."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_property_at_least("times_displayed", values[0]).animate("bounce").set_target(symbol).change_type("fireworkexplodes"))

func update_value_text(symbol, values):
    symbol.value_text = values[0] - symbol.times_displayed
    symbol.value_text_color = "<color_E14A68>"