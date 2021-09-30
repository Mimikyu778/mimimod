extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "frogprince"
    self.value = 1
    self.values = [2]
    self.rarity = "common"
    self.groups = ["organism", "animal", "poslikes", "rainlikes", "witchlikes", "princessloves"]
    self.sfx = ["Bubbling"]

    self.texture = load_texture("res://mimimod/symbols/frogprince.png")
    self.name = "Frog"
    self.description = "Gives <icon_coin><color_FBF236><value_1><end> more if in a higher row than it last appeared."

func add_conditional_effects(symbol, adjacent):
    if symbol.times_displayed < 2:
        symbol.add_effect(effect().set_persistent_data("last_y", symbol.grid_position.y))
    if symbol.get_persistent_data("last_y") > symbol.grid_position.y:
        symbol.add_effect(effect().change_value_bonus(values[0]))
    symbol.add_effect(effect().set_persistent_data("last_y", symbol.grid_position.y))
