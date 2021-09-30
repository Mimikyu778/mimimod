extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "dndplayer"
    self.value = 2
    self.values = [2]
    self.rarity = "rare"
    self.groups = ["organism", "human", "doglikes"]
    self.sfx = ["Dice"]

    self.texture = load_texture("res://mimimod/symbols/dndplayer.png")
    self.name = "Dnd Player"
    self.description = "<color_E14A68>Destroys<end> adjacent <icon_d3> and <icon_d5> for a permanent additional <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("d3").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d5").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d3_1").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d5_1").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d3_2").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d5_2").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d3_3").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d5_3").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d5_4").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_type("d5_5").set_destroyed())
        
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_type("d3").set_target(symbol).add_permanent_bonus(1).animate("shake", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_type("d5").set_target(symbol).add_permanent_bonus(1).animate("shake", "default", [symbol, i]))
        
func update_value_text(symbol, values):
    symbol.value_text = symbol.permanent_bonus
    symbol.value_text_color = "<color_FBF236>"