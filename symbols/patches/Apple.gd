extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "apple"
    
func patch_groups(groups):
    groups.push_back("picnicadds", "princesslikes")
    return groups