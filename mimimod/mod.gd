extends Reference
var starting_symbols
var symbol_list
func load(modloader: Reference, mod_info, tree: SceneTree):
    modloader.add_mod_symbol("res://mimimod/symbols/Frog.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Prince.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Princess.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Dndplayer.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Santa.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Stork.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Catlady.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Umbrella.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Snow.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Penguin.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Picnic.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Mead.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Canary.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Firework.gd")
    modloader.add_mod_symbol("res://mimimod/symbols/Fireworkexplodes.gd")

    modloader.add_symbol_patch("res://mimimod/symbols/patches/Rain.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Dwarf.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Witch.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Cat.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Sun.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Flower.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Apple.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Strawberry.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Watermelon.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Pear.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Bear.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Honey.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Mine.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Miner.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Coal.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Big_ore.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Ore.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Mouse.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Golem.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Hooligan.gd")
    modloader.add_symbol_patch("res://mimimod/symbols/patches/Joker.gd")

#only for testing
#func modify_starting_symbols(current):
#return ["joker", "penguin"]