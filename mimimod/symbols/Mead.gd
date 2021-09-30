extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "mead"
    self.value = 4
    self.values = []
    self.rarity = "very_rare"
    self.groups = ["food", "booze", "dwarflikes", "anvillikes"]
    self.sfx = ["Drink"]

    self.texture = load_texture("res://mimimod/symbols/mead.png")
    self.name = "Mead"
    self.description = ""