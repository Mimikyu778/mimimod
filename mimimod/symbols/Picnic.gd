extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "picnic"
    self.value = 3
    self.values = [35]
    self.rarity = "rare"
    self.groups = ["sunbuffs", "flowerbuffs"]
    self.sfx = ["Unwrap"]
    
    self.texture = load_texture("res://mimimod/symbols/picnic.png")
    self.name = "Picnic Basket"
    self.description = "Adds <all_or_picnicadds> when destroyed."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("bear").add_symbol_group("picnicadds", "rare"))