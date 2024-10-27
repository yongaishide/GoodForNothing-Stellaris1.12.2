
import mods.embers.Mixer;
import mods.embers.Melter;
import mods.embers.Stamper;
import mods.embers.Alchemy;
import mods.embers.HeatCoil;
import mods.embers.EmberBore;
import mods.embers.DawnstoneAnvil;
import mods.embers.EmberGeneration;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;

//熔炼炉
mods.embers.Melter.remove(<thermalfoundation:ore:4>);
mods.embers.Melter.remove(<thermalfoundation:ore:6>);
mods.embers.Melter.remove(<draconicevolution:draconium_ore>);
mods.embers.Melter.remove(<nuclearcraft:ore:6>);
mods.embers.Melter.remove(<nuclearcraft:ore:7>);
mods.embers.Melter.remove(<additions:naquadah_ore>);
mods.embers.Melter.remove(<additions:naquadria_ore>);
//融化机
mods.nuclearcraft.Melter.removeRecipeWithInput(<draconicevolution:draconium_dust>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<draconicevolution:draconium_ore>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<thermalfoundation:ore:6>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<thermalfoundation:material:70>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<nuclearcraft:ore:6>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<nuclearcraft:dust:6>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<nuclearcraft:ore:7>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<nuclearcraft:dust:7>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<jaopca:dust.naquadah>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<jaopca:dust.naquadria>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<additions:naquadah_ore>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<additions:naquadria_ore>);

//熔岩炉
mods.thermalexpansion.Crucible.removeRecipe(<draconicevolution:draconium_dust>);
mods.thermalexpansion.Crucible.removeRecipe(<draconicevolution:draconium_ore>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:ore:6>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:70>);
mods.thermalexpansion.Crucible.removeRecipe(<nuclearcraft:ore:6>);
mods.thermalexpansion.Crucible.removeRecipe(<nuclearcraft:dust:6>);
mods.thermalexpansion.Crucible.removeRecipe(<nuclearcraft:ore:7>);
mods.thermalexpansion.Crucible.removeRecipe(<jaopca:dust.naquadah>);
mods.thermalexpansion.Crucible.removeRecipe(<jaopca:dust.naquadria>);
mods.thermalexpansion.Crucible.removeRecipe(<additions:naquadah_ore>);
mods.thermalexpansion.Crucible.removeRecipe(<additions:naquadria_ore>);

//电弧炉
mods.immersiveengineering.ArcFurnace.addRecipe(<additions:cast_iron_ingot>,<minecraft:iron_ingot>, <immersiveengineering:material:7>, 200, 256);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:132>,<thermalfoundation:material:68>, null, 200, 256);
mods.immersiveengineering.ArcFurnace.removeRecipe(<draconicevolution:draconium_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<galacticraftcore:basic_item:5>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:6>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:134>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<additions:naquadah_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<additions:naquadria_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<additions:enrichednaquadah_ingot>);




//灰烬晶体开采机
//炼金术
mods.embers.Alchemy.remove(<embers:dust_metallurgic>);
mods.embers.Alchemy.add(<embers:dust_metallurgic>, [<aoa3:dense_rock>,<deepmoblearning:soot_covered_redstone>,<embers:dust_ember>,<botania:manaresource:23>,<minecraft:quartz>],{"iron":1 to 36,"copper":16 to 40});
//搅拌机
mods.embers.Mixer.remove(<liquid:dawnstone>);
//压印
mods.embers.Stamper.remove(<jaopca:plate.black_iron>);
mods.embers.Stamper.add(<contenttweaker:shuzhipian_1>, <liquid:resin>*144,<embers:stamp_plate>);
mods.embers.Stamper.add(<extendedcrafting:material:2>, <liquid:black_iron>*144,<embers:stamp_plate>);


//流体提取机
mods.nuclearcraft.Extractor.addRecipe(<galacticraftplanets:venus:1>, <minecraft:cobblestone>, <liquid:sky_stone>*144);
mods.nuclearcraft.Extractor.addRecipe(<galacticraftplanets:venus>, <minecraft:gravel>, <liquid:sky_stone>*144);

//小制造机
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<enderio:item_material:32>);
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<nuclearcraft:dust:8>);
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<enderio:item_material:5>);
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<thermalfoundation:material:70>*2);   
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<jaopca:dust.naquadah>*2);     
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<jaopca:dust.naquadria>*2);    


//合金炉
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:7>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<qmd:ingot_alloy:2>*6);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:8>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:3>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:9>*4);
//流体注入器
mods.nuclearcraft.Infuser.removeRecipeWithOutput(<thermalfoundation:material:167>);
mods.nuclearcraft.Infuser.removeRecipeWithOutput(<thermalfoundation:material:103>);
//冷却器
mods.nuclearcraft.IngotFormer.addRecipe(<liquid:if.pink_slime>*144, <industrialforegoing:pink_slime_ingot>);

//流体混合器
mods.nuclearcraft.SaltMixer.removeRecipeWithOutput(<liquid:enderium>*144);
//压缩机
//mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(IIngredient itemOutput);
mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(<jaopca:plate.black_iron>);
mods.nuclearcraft.Pressurizer.addRecipe(<galacticraftplanets:item_basic_mars:2>, <galacticraftplanets:item_basic_mars:5>);
mods.nuclearcraft.Pressurizer.addRecipe(<extendedcrafting:material>, <extendedcrafting:material:2>);
//组合机
mods.nuclearcraft.Assembler.addRecipe(<appliedenergistics2:material:45>, <threng:material:1>,<thermalfoundation:material>, <minecraft:redstone>*2, <threng:material:2>);
mods.nuclearcraft.Assembler.addRecipe(<modularmachinery:small_assembly_machine_controller>, <contenttweaker:dianluban_4>*2,<modularmachinery:blockcasing:4>*4, <threng:material>*2, <modularmachinery:advanced_assembly_machine_controller>);
mods.nuclearcraft.Assembler.addRecipe(<modularmachinery:industrial_blast_furnace_mk3_factory_controller>, <threng:material:4>*1,<additions:basic_integrated>*2, <contenttweaker:dianluban_4>, <modularmachinery:industrial_blast_furnace_mk4_factory_controller>);
//化学反应器
mods.nuclearcraft.ChemicalReactor.removeRecipeWithInput(<liquid:sulfur>*333, <liquid:oxygen>*500);
mods.nuclearcraft.ChemicalReactor.removeRecipeWithInput(<liquid:sulfur_dioxide>*500, <liquid:oxygen>*250);
mods.nuclearcraft.ChemicalReactor.removeRecipeWithInput(<liquid:oxygen_difluoride>*250, <liquid:sulfur_dioxide>*250);
mods.nuclearcraft.ChemicalReactor.removeRecipeWithInput(<liquid:ethene>*250, <liquid:sulfuric_acid>*250);


//流体转置机
mods.thermalexpansion.Transposer.addFillRecipe(<enderio:item_material:20>*3,<embers:dust_metallurgic>,<liquid:fire_water>*200, 2000);
//星辉宝石
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:wupin_3>,<astralsorcery:itemcraftingcomponent>,<liquid:astral_starmetal>*144, 2000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:shuzhipian_1>,<tconstruct:cast_custom:3>,<liquid:resin>*144, 2000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:shuzhipian_1>,<embers:stamp_plate>,<liquid:resin>*144, 2000);
//流体精炼机
mods.thermalexpansion.Refinery.addRecipe(<liquid:hootch>*1000, <minecraft:sugar>,<liquid:ethanol>*1000, 2000);
//感应炉
mods.thermalexpansion.InductionSmelter.addRecipe(<embers:ingot_dawnstone>*2, <thermalfoundation:material:164>, <thermalfoundation:material:166>, 1500, <thermalfoundation:material:864>, 20);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:6>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:70>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:6>, <thermalfoundation:material:865>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:7>, <thermalfoundation:material:866>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:7>, <thermalfoundation:material:865>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:6>, <thermalfoundation:material:866>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:5>, <thermalfoundation:material:866>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material:52>,<enderio:item_material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material:51>,<enderio:item_material>);
//磨粉机
mods.thermalexpansion.Pulverizer.removeRecipe(<thermalfoundation:ore:6>);
mods.thermalexpansion.Pulverizer.removeRecipe(<additions:naquadah_ore>);
mods.thermalexpansion.Pulverizer.removeRecipe(<additions:naquadria_ore>);
mods.thermalexpansion.Pulverizer.removeRecipe(<thermalfoundation:ore:5>);
mods.thermalexpansion.Pulverizer.removeRecipe(<mekanismecoenergistics:oreblock:2>);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:69>*2, <thermalfoundation:ore:5>,2000);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:71>*2, <mekanismecoenergistics:oreblock:2>,2000);
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:46>*2, <atum:oasis_grass>,2000,<jaopca:dust.leafgreen>,30);
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:47>, <minecraft:tallgrass>,2000,<enderio:item_material:47>,50);
mods.thermalexpansion.Pulverizer.addRecipe(<jaopca:mekanism_dirty_dust.naquadah>, <jaopca:mekanism_clump.naquadah>,2000);
//红石炉
//有机灌注机

//粉碎机
mods.immersiveengineering.Crusher.removeRecipe(<mekanism:dust:2>);
mods.immersiveengineering.Crusher.removeRecipe(<jaopca:dust.naquadah>);
mods.immersiveengineering.Crusher.removeRecipe(<jaopca:dust.naquadria>);
mods.immersiveengineering.Crusher.removeRecipe(<thermalfoundation:material:70>);
mods.immersiveengineering.Crusher.removeRecipe(<thermalfoundation:material:69>);
mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:metal:13>);
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:69>*2, <thermalfoundation:ore:5>, 8000, <thermalfoundation:material>, 0.2);
mods.immersiveengineering.Crusher.addRecipe(<jaopca:mekanism_dirty_dust.naquadah>, <jaopca:mekanism_clump.naquadah>, 8000);
mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:46>*2, <atum:oasis_grass>, 8000,<jaopca:dust.leafgreen>,0.3);
mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:47>, <minecraft:tallgrass>, 8000,<enderio:item_material:47>,0.5);  
//焦炉  
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:material:6>);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);
//灌装机
mods.immersiveengineering.BottlingMachine.addRecipe(<immersiveengineering:treated_wood>*8, <ore:plankWood>*8, <liquid:creosote> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"})*4, <minecraft:glass_bottle>*4, <liquid:water> * 1000);
//混合器
mods.immersiveengineering.Mixer.addRecipe(<liquid:mud_liquid>*1000, <liquid:water> * 1000, [<minecraft:sand>*4,<minecraft:gravel>*4],3200);
mods.immersiveengineering.Mixer.addRecipe(<liquid:brine>*1000, <liquid:water> * 1000, [<mekanism:salt>*16],3200);


//高炉
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
//高炉燃料
mods.immersiveengineering.BlastFurnace.removeFuel(<minecraft:coal:1>);
mods.immersiveengineering.BlastFurnace.removeFuel(<thermalfoundation:storage_resource>);
mods.immersiveengineering.BlastFurnace.removeFuel(<thermalfoundation:material:802>);
mods.immersiveengineering.BlastFurnace.removeFuel(<thermalfoundation:storage_resource:1>);
//金属冲压机
mods.immersiveengineering.MetalPress.removeRecipe(<jaopca:plate.black_iron>); 
mods.immersiveengineering.MetalPress.addRecipe(<extendedcrafting:material:2>,<extendedcrafting:material>, <immersiveengineering:mold>, 500);
mods.immersiveengineering.MetalPress.addRecipe(<galacticraftplanets:item_basic_mars:5>,<galacticraftplanets:item_basic_mars:2>, <immersiveengineering:mold>, 500);
//压榨机
mods.immersiveengineering.Squeezer.removeItemRecipe(<immersiveengineering:material:18>);

