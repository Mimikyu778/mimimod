extends "res://modloader/ModSymbol.gd"


func init(modloader: Reference, params):

    self.modloader = modloader

    self.id = "fireworkexplodes"
    self.value = 0
    self.values = [7]
    self.rarity = "common"
    self.groups = ["box"]
    self.findable = false
    add_sfx_redirect("magpie")

    self.texture = load_texture("res://mimimod/symbols/firework.png")
    self.name = "Firework"
    self.description = "Gives <icon_coin><color_FBF236><value_1><end> for each row below it when <color_E14A68>destroyed<end>. <color_E14A68>Destroys<end> self after <value_1> spins."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().change_value_bonus((values[0] * ((modloader.globals.reels.reel_height) - symbol.grid_position.y - 1))))
    symbol.add_effect(effect().set_destroyed())