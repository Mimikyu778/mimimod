extends "res://modloader/ModSymbol.gd"


func init(modloader: Reference, params):

    self.modloader = modloader
    self.id = "umbrella"
    self.value = 1
    self.values = [2, 3]
    self.rarity = "common"
    self.groups = ["rainlikes"]
    add_sfx_redirect("rain")
    self.texture = load_texture("res://mimimod/symbols/umbrella.png")
    self.name = "Umbrella"
    self.description = "<all_and_human> directly below this symbol give <color_E14A68><value_1>x<end> more <icon_coin>. <icon_penguin> directly below this symbol give <color_E14A68><value_2>x<end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        if i.grid_position.y == symbol.grid_position.y + 1 && i.grid_position.x == symbol.grid_position.x:
            symbol.add_effect_for_symbol(i, effect().if_group("human").change_value_multiplier(values[0]).animate("circle", 0, [symbol, i]))
            symbol.add_effect_for_symbol(i, effect().if_type("penguin").change_value_multiplier(values[1]).animate("circle", 0, [symbol, i]))