#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.MachineBuilder;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MultiblockModifierBuilder;
import mods.modularmachinery.BlockArrayBuilder;


import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.Sync;

import crafttweaker.world.IBlockPos;
import crafttweaker.world.IWorld;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mod.mekanism.gas.IGasStack;
import mods.astralsorcery.Altar;
  
// =============================================================天空工厂(LV1)==============================================================
RecipeBuilder.newBuilder("SkyFactory_1_01", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
    .addItemOutput(<minecraft:apple>).setChance(0.3)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_02", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:sapling:5>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log2:1>*4)
    .addItemOutput(<minecraft:leaves2:1>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
    .addItemOutput(<minecraft:apple>).setChance(0.3)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_03", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:sapling:1>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log:1>*4)
    .addItemOutput(<minecraft:leaves:1>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_04", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:sapling:2>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log:2>*4)
    .addItemOutput(<minecraft:leaves:2>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_05", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:sapling:3>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log:3>*4)
    .addItemOutput(<minecraft:leaves:3>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_06", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:sapling:4>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log2>*4)
    .addItemOutput(<minecraft:leaves2>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_07", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:tamarind_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:tamarinditem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_08", "SkyFactory_1", 600)
    .addItemInputs([
    <abyssalcraft:dltsapling>,
    ]).setChance(0)
    .addItemOutput(<abyssalcraft:dltlog>*4)
    .addItemOutput(<abyssalcraft:dltleaves>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_09", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:cherry_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:cherryitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_12", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:olive_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:oliveitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_13", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:lime_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:limeitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_14", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:gooseberry_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:gooseberryitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_15", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:nutmeg_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:nutmegitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_16", "SkyFactory_1", 600)
    .addItemInputs([
    <twilightforest:twilight_sapling:7>,
    ]).setChance(0)
    .addItemOutput(<twilightforest:magic_log:2>*4)
    .addItemOutput(<twilightforest:magic_leaves:2>)
    .addItemOutput(<twilightforest:root>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_17", "SkyFactory_1", 600)
    .addItemInputs([
    <tconstruct:slime_sapling>,
    ]).setChance(0)
    .addItemOutput(<tconstruct:slime_congealed>)
    .addItemOutput(<tconstruct:slime_leaves>)
    .addItemOutput(<tconstruct:edible:1>).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_18", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:mango_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:mangoitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_19", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:peach_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:peachitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_20", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:breadfruit_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:breadfruititem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_21", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:dragonfruit_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:dragonfruititem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_22", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:paperbark_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<minecraft:paper>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_23", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:coconut_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:coconutitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_24", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:orange_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:orangeitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_25", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:grapefruit_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:grapefruititem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_27", "SkyFactory_1", 600)
    .addItemInputs([
    <lost_aether:crystal_sapling>,
    ]).setChance(0)
    .addItemOutput(<aether_legacy:aether_log>*4)
    .addItemOutput(<aether_legacy:crystal_leaves:4>)
    .addItemOutput(<aether_legacy:white_apple>)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_28", "SkyFactory_1", 600)
    .addItemInputs([
    <twilightforest:twilight_sapling:6>,
    ]).setChance(0)
    .addItemOutput(<twilightforest:magic_log:1>*4)
    .addItemOutput(<twilightforest:magic_leaves:1>)
    .addItemOutput(<twilightforest:root>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_30", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:cinnamon_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:cinnamonitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_31", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:durian_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:durianitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_32", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:maple_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:maplesyrupitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_33", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:rambutan_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:rambutanitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_34", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:spiderweb_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<minecraft:string>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_35", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:pawpaw_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:pawpawitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_36", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:walnut_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:walnutitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_37", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:guava_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:guavaitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_38", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:pomegranate_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:pomegranateitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_39", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:soursop_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:soursopitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_40", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:lychee_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:lycheeitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_41", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:apple_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<minecraft:apple>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_42", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:hazelnut_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:hazelnutitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_43", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:papaya_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:papayaitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_44", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:pistachio_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:pistachioitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_45", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:apricot_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:apricotitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_46", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:plum_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:plumitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_47", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:chestnut_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:chestnutitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_48", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:lemon_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:lemonitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_49", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:pecan_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:pecanitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_50", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:persimmon_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:persimmonitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_51", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:date_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:dateitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_52", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:cashew_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:cashewitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_53", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:avocado_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:avocadoitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_54", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:banana_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:bananaitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_55", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:jackfruit_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:jackfruititem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_56", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:almond_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:almonditem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_57", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:fig_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:figitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_58", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:pear_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:pearitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_59", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:vanillabean_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:vanillabeanitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_60", "SkyFactory_1", 600)
    .addItemInputs([
    <tconstruct:slime_sapling:1>,
    ]).setChance(0)
    .addItemOutput(<tconstruct:slime_congealed>)
    .addItemOutput(<tconstruct:slime_leaves:1>)
    .addItemOutput(<tconstruct:edible:2>)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_61", "SkyFactory_1", 600)
    .addItemInputs([
    <tconstruct:slime_sapling:2>,
    ]).setChance(0)
    .addItemOutput(<tconstruct:slime_congealed:4>)
    .addItemOutput(<tconstruct:slime_leaves:2>)
    .addItemOutput(<tconstruct:edible:4>)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_62", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:passionfruit_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:passionfruititem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_63", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:starfruit_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:starfruititem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_64", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:chorus_fruit>,
    <minecraft:end_stone>,
    ]).setChance(0)
    .addItemOutput(<minecraft:chorus_fruit>)
    .addItemOutput(<minecraft:chorus_fruit_popped>)
    .addItemOutput(<minecraft:ender_pearl>)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_65", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:chorus_flower>,
    <minecraft:end_stone>,
    ]).setChance(0)
    .addItemOutput(<minecraft:chorus_fruit>)
    .addItemOutput(<minecraft:chorus_flower>)
    .addItemOutput(<minecraft:ender_pearl>)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_66", "SkyFactory_1", 600)
    .addItemInputs([
    <minecraft:reeds>,
    <minecraft:sand>,
    ]).setChance(0)
    .addItemOutput(<minecraft:reeds>)
    .addItemOutput(<minecraft:sugar>)
    .addItemOutput(<minecraft:reeds>).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_67", "SkyFactory_1", 600)
    .addItemInputs([
    <harvestcraft:peppercorn_sapling>,
    ]).setChance(0)
    .addItemOutput(<minecraft:log>*4)
    .addItemOutput(<minecraft:leaves>)
    .addItemOutput(<harvestcraft:peppercornitem>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_68", "SkyFactory_1", 600)
    .addItemInputs([
    <twilightforest:twilight_sapling:9>,
    ]).setChance(0)
    .addItemOutput(<twilightforest:twilight_log>*4)
    .addItemOutput(<twilightforest:twilight_leaves:3>)
    .addItemOutput(<twilightforest:root>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_69", "SkyFactory_1", 600)
    .addItemInputs([
    <twilightforest:twilight_sapling:5>,
    ]).setChance(0)
    .addItemOutput(<twilightforest:magic_log>*4)
    .addItemOutput(<twilightforest:magic_leaves>)
    .addItemOutput(<twilightforest:root>)
    .addItemOutput(<minecraft:stick>*2).setChance(0.5)
.build();
RecipeBuilder.newBuilder("SkyFactory_1_70", "SkyFactory_1", 600)
    .addItemInputs([
    <aether_legacy:golden_oak_sapling>,
    ]).setChance(0)
    .addItemOutput(<aether_legacy:aether_log:1>*4)
    .addItemOutput(<aether_legacy:aether_leaves:1>)
    .addItemOutput(<minecraft:gold_nugget>).setChance(0.5)
.build();

//=============================================================天空工厂(LV2)==============================================================
//配方适配器
RecipeAdapterBuilder.create("SkyFactory_2", "modularmachinery:SkyFactory_1")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.8F, 1, false).build())
    .addEnergyPerTickInput(16)
    .addFluidInput(<liquid:water> * 500)
.build();
//=============================================================天空工厂(LV3)==============================================================
//配方适配器
RecipeAdapterBuilder.create("SkyFactory_3", "modularmachinery:SkyFactory_1")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.6F, 1, false).build())
    .addEnergyPerTickInput(64)
    .addFluidInput(<liquid:water> * 2500)
.build();
RecipeAdapterBuilder.create("SkyFactory_3", "thermalexpansion:insolator")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.75F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 3.2F, 1, false).build())
.build();