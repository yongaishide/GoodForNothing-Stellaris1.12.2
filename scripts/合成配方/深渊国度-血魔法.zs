#reloadable
#modloaded extendedcrafting
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;


import mods.abyssalcraft.Transmutator;

mods.abyssalcraft.InfusionRitual.addRitual("hunjin", 0, -1, 1000, true, <enderio:item_alloy_ingot:7>, <minecraft:gold_ingot>, [<minecraft:soul_sand>, <mysticalagriculture:crafting:28>, <minecraft:soul_sand>, <mysticalagriculture:crafting:28>, <minecraft:soul_sand>, <mysticalagriculture:crafting:28>, <minecraft:soul_sand>, <mysticalagriculture:crafting:28>], false);
game.setLocalization("ac.ritual.hunjin", " 魂金仪式");
game.setLocalization("ac.ritual.hunjin.desc", "通过献祭,将灵魂注入到金子中,然而，这样的祭祀也带来了巨大的代价，因为一旦灵魂被注入金子中，就再也无法返回人世间。有人说，这些被注入灵魂的金子拥有着神秘的力量，能够带来财富和力量，但也会带来不可预料的后果。因此，这样的祭祀早已被世人所遗忘，只留下了神秘的传说。");
mods.abyssalcraft.InfusionRitual.addRitual("linghunduanlukongzhiqi", 0, -1, 1000, true, <modularmachinery:soul_forging_furnace_controller>, <bloodmagic:soul_forge>, [<contenttweaker:blueprint_1>, <modularmachinery:blockcasing:4>, <enderio:item_material:1>, <enderio:item_alloy_ingot:3>, <mysticalagriculture:crafting:38>, <minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>], false);
game.setLocalization("ac.ritual.linghunduanlukongzhiqi", " 灵魂锻炉");
game.setLocalization("ac.ritual.linghunduanlukongzhiqi.desc", "通过献祭,将灵魂注入到狱火熔炉中");
mods.abyssalcraft.InfusionRitual.addRitual("linghunxietiaotuliao", 0, -1, 1000, false, <enderio:item_material:52>, <enderio:item_material:51>, [<enderio:item_material:74>, <mysticalagriculture:crafting:29>, <enderio:item_material:74>, <mysticalagriculture:crafting:29>, <enderio:item_material:74>, <mysticalagriculture:crafting:29>, <enderio:item_material:74>, <mysticalagriculture:crafting:29>], false);
game.setLocalization("ac.ritual.linghunxietiaotuliao", " 灵魂协调涂料");
game.setLocalization("ac.ritual.linghunxietiaotuliao.desc", "科技与灵魂的结合");
mods.abyssalcraft.Crystallizer.removeFuel(<abyssalcraft:dhelmet>);
mods.abyssalcraft.Crystallizer.removeFuel(<abyssalcraft:dplate>);
mods.abyssalcraft.Crystallizer.removeFuel(<abyssalcraft:dlegs>);
mods.abyssalcraft.Crystallizer.removeFuel(<abyssalcraft:dboots>);
mods.abyssalcraft.Crystallizer.removeFuel(<abyssalcraft:depthshelmet>);
mods.abyssalcraft.Crystallizer.removeFuel(<abyssalcraft:depthsplate>);
mods.abyssalcraft.Crystallizer.removeFuel(<abyssalcraft:depthslegs>);
mods.abyssalcraft.Crystallizer.removeFuel(<abyssalcraft:depthsboots>);
//炼金矩阵

//狱火熔炉
mods.bloodmagic.TartaricForge.addRecipe(<tconevo:metal:30>,[<enderio:item_alloy_ingot:7>, <bloodmagic:soul_gem>.withTag({}),<minecraft:dye:15>], 16,8);
mods.bloodmagic.TartaricForge.addRecipe(<deepmoblearningbm:digital_will_injector>,[<additions:nightmare>,  <nuclearcraft:part:10>,<actuallyadditions:block_crystal_empowered:1>,<jaopca:mysticalagriculture_essence.blood_infused_glitch>], 16000,8000);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:altar>,[<extrabotany:pedestal>, <twilightforest:fiery_blood>,<extrabotany:material:10>,<minecraft:nether_brick>], 256,128);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:altar>,[<extrabotany:pedestal>, <twilightforest:fiery_tears>,<extrabotany:material:10>,<minecraft:nether_brick>], 256,128);
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<tconevo:material>]);
//炼金术桌
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:blood_shard>, [<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <bloodmagic:component:8>, <minecraft:diamond_sword>], 200,100,1);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:decorative_brick:2>, [<contenttweaker:wss>, <contenttweaker:wss>, <contenttweaker:wss>,<contenttweaker:wss>,<minecraft:beacon>,<tconevo:metal:25>], 10000,100,5);
mods.bloodmagic.AlchemyTable.addRecipe(<modularmachinery:board_assembly_controller>, [<bloodmagic:altar>, <bloodmagic:decorative_brick:1>, <bloodmagic:decorative_brick:1>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<embers:mech_core>], 200000,1000,6);
mods.bloodmagic.AlchemyTable.addRecipe(<modularmachinery:board_assembly_4_factory_controller>, [<modularmachinery:board_assembly_controller>, <bloodmagic:decorative_brick:3>, <bloodmagic:decorative_brick:3>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<modularmachinery:blockparallelcontroller>], 800000,10000,6);
//血之祭坛
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:diamond>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate>, <botania:livingrock>, 0, 1000, 50, 50);
mods.bloodmagic.BloodAltar.addRecipe(<modularmachinery:blocklifeessenceproviderinput>, <modularmachinery:blockfluidinputhatch>, 2, 1000, 50, 5);
mods.bloodmagic.BloodAltar.addRecipe(<modularmachinery:blocklifeessenceprovideroutput>, <modularmachinery:blockfluidoutputhatch>, 2, 1000, 50, 5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),<botania:manaresource:1>,  0, 2000, 2, 1);