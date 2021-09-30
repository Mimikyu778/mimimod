extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "miner"
    
func patch_groups(groups):
    groups.push_back("canarylikes")
    return groups