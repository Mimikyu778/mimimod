extends "res://modloader/ModSymbol.gd"


func init(modloader: Reference, params):
	
	self.modloader = modloader
	
	self.id = "penguin"
	self.value = 2
	self.values = [2]
	self.rarity = "uncommon"
	self.groups = ["snowlikes", "bird", "organism", "animal"]
	add_sfx_redirect("magpie")
	
	self.texture = load_texture("res://mimimod/symbols/penguin.png")
	self.name = "Penguin"
	self.description = ""