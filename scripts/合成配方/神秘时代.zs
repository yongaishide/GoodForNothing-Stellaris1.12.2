//============================================================坩埚==========================================================
//炼金煤炭
mods.thaumcraft.Crucible.registerRecipe("pefuel1", "", <projecte:item.pe_fuel>, <immersiveengineering:material:6>, [<aspect:alkimia>*300]);
//炼金煤炭
mods.thaumcraft.Crucible.registerRecipe("pefuel2", "", <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel>, [<aspect:alkimia>*600]);
//炼金煤炭
mods.thaumcraft.Crucible.registerRecipe("pefuel3", "", <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:1>, [<aspect:alkimia>*900]);
//============================================================注魔合成==========================================================
//贤者之石
mods.thaumcraft.Infusion.registerRecipe("xianzhezhishi", "", <projecte:item.pe_philosophers_stone>, 10, [<aspect:alkimia>*200, <aspect:cognitio>*200,<aspect:praecantatio>*200,<aspect:auram>*200], <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), [<contenttweaker:atm_2>, <thaumicwonders:alchemist_stone>, <projecte:item.pe_matter>]);
//贤者燃料
mods.thaumcraft.Infusion.registerRecipe("xianzheranliao", "", <contenttweaker:atm_2>, 10, [<aspect:alkimia>*300,<aspect:praecantatio>*200], <projecte:item.pe_fuel:2>, [<minecraft:furnace>, <mysticalagriculture:supremium_furnace>, <actuallyadditions:block_furnace_double>,<tconstruct:seared_furnace_controller>]);