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

//=============================================================一级火箭中心==============================================================
RecipeBuilder.newBuilder("rocket_center_LV1_1", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftcore:heavy_plating>*8,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    ])
    .addItemOutput(<galacticraftcore:rocket_t1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_2", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftcore:heavy_plating>*8,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<galacticraftcore:rocket_t1:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_3", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftcore:heavy_plating>*8,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<galacticraftcore:rocket_t1:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_4", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftcore:heavy_plating>*8,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<galacticraftcore:rocket_t1:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_5", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftcore:schematic:1>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_mars:3>*10,
    <galacticraftcore:engine:1>*2,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_6", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftcore:schematic:1>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_mars:3>*10,
    <galacticraftcore:engine:1>*2,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t2:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_7", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftcore:schematic:1>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_mars:3>*10,
    <galacticraftcore:engine:1>*2,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t2:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_8", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftcore:schematic:1>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_mars:3>*10,
    <galacticraftcore:engine:1>*2,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t2:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_9", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftplanets:schematic>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <galacticraftplanets:heavy_nose_cone>,
    <galacticraftplanets:item_basic_asteroids:5>*10,
    <galacticraftcore:engine:1>*2,
    <galacticraftplanets:item_basic_asteroids:2>*4,
    <galacticraftplanets:item_basic_asteroids:1>,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_10", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftplanets:schematic>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <galacticraftplanets:heavy_nose_cone>,
    <galacticraftplanets:item_basic_asteroids:5>*10,
    <galacticraftcore:engine:1>*2,
    <galacticraftplanets:item_basic_asteroids:2>*4,
    <galacticraftplanets:item_basic_asteroids:1>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t3:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_11", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftplanets:schematic>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <galacticraftplanets:heavy_nose_cone>,
    <galacticraftplanets:item_basic_asteroids:5>*10,
    <galacticraftcore:engine:1>*2,
    <galacticraftplanets:item_basic_asteroids:2>*4,
    <galacticraftplanets:item_basic_asteroids:1>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t3:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_12", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftplanets:schematic>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <galacticraftplanets:heavy_nose_cone>,
    <galacticraftplanets:item_basic_asteroids:5>*10,
    <galacticraftcore:engine:1>*2,
    <galacticraftplanets:item_basic_asteroids:2>*4,
    <galacticraftplanets:item_basic_asteroids:1>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t3:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_13", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftplanets:schematic:2>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <galacticraftcore:heavy_plating>*4,
    <galacticraftplanets:item_basic_asteroids:8>,
    <galacticraftcore:steel_pole>*2,
    <galacticraftcore:basic_item:14>,
    <galacticraftplanets:orion_drive>*4,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<galacticraftplanets:astro_miner>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_14", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftplanets:schematic:1>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_mars:3>*6,
    <galacticraftcore:basic_item:14>*2,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t2:11>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_15", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftplanets:schematic:1>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_mars:3>*6,
    <galacticraftcore:basic_item:14>*2,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t2:12>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_16", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<galacticraftplanets:schematic:1>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_mars:3>*6,
    <galacticraftcore:basic_item:14>*2,
    <galacticraftcore:rocket_fins>*4,
    <galacticraftcore:engine>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<galacticraftplanets:rocket_t2:13>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_17", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <galacticraftcore:heavy_plating>*11,
    <galacticraftcore:buggymat>*4,
    <galacticraftcore:buggymat:1>,
    ])
    .addItemOutput(<galacticraftcore:buggy>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_18", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <galacticraftcore:heavy_plating>*11,
    <galacticraftcore:buggymat>*4,
    <galacticraftcore:buggymat:1>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<galacticraftcore:buggy:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_19", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <galacticraftcore:heavy_plating>*11,
    <galacticraftcore:buggymat>*4,
    <galacticraftcore:buggymat:1>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<galacticraftcore:buggy:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_20", "rocket_center_LV1", 3600)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <galacticraftcore:heavy_plating>*11,
    <galacticraftcore:buggymat>*4,
    <galacticraftcore:buggymat:1>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<galacticraftcore:buggy:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_21", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier4>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier4>,
    <extraplanets:tier4_items:3>*10,
    <extraplanets:tier4_items:1>*2,
    <extraplanets:tier4_items:2>*4,
    <extraplanets:tier4_items>,
    ])
    .addItemOutput(<extraplanets:item_tier4_rocket>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_22", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier4>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier4>,
    <extraplanets:tier4_items:3>*10,
    <extraplanets:tier4_items:1>*2,
    <extraplanets:tier4_items:2>*4,
    <extraplanets:tier4_items>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<extraplanets:item_tier4_rocket:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_23", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier4>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier4>,
    <extraplanets:tier4_items:3>*10,
    <extraplanets:tier4_items:1>*2,
    <extraplanets:tier4_items:2>*4,
    <extraplanets:tier4_items>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<extraplanets:item_tier4_rocket:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_24", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier4>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <extraplanets:tier4_items:3>*10,
    <extraplanets:tier4_items:1>*2,
    <extraplanets:tier4_items:2>*4,
    <extraplanets:tier4_items>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<extraplanets:item_tier4_rocket:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_25", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier5>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier5>,
    <extraplanets:tier5_items:3>*10,
    <extraplanets:tier5_items:1>*2,
    <extraplanets:tier5_items:2>*4,
    <extraplanets:tier5_items>,
    ])
    .addItemOutput(<extraplanets:item_tier5_rocket>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_26", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier5>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier5>,
    <extraplanets:tier5_items:3>*10,
    <extraplanets:tier5_items:1>*2,
    <extraplanets:tier5_items:2>*4,
    <extraplanets:tier5_items>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<extraplanets:item_tier5_rocket:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_27", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier5>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier5>,
    <extraplanets:tier5_items:3>*10,
    <extraplanets:tier5_items:1>*2,
    <extraplanets:tier5_items:2>*4,
    <extraplanets:tier5_items>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<extraplanets:item_tier5_rocket:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_28", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier5>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <extraplanets:tier5_items:3>*10,
    <extraplanets:tier5_items:1>*2,
    <extraplanets:tier5_items:2>*4,
    <extraplanets:tier5_items>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<extraplanets:item_tier5_rocket:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_29", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier6>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier6>,
    <extraplanets:tier6_items:3>*10,
    <extraplanets:tier6_items:1>*2,
    <extraplanets:tier6_items:2>*4,
    <extraplanets:tier6_items>,
    ])
    .addItemOutput(<extraplanets:item_tier6_rocket>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_30", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier6>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier6>,
    <extraplanets:tier6_items:3>*10,
    <extraplanets:tier6_items:1>*2,
    <extraplanets:tier6_items:2>*4,
    <extraplanets:tier6_items>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<extraplanets:item_tier6_rocket:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_31", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier6>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier6>,
    <extraplanets:tier6_items:3>*10,
    <extraplanets:tier6_items:1>*2,
    <extraplanets:tier6_items:2>*4,
    <extraplanets:tier6_items>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<extraplanets:item_tier6_rocket:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_32", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier6>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <extraplanets:tier6_items:3>*10,
    <extraplanets:tier6_items:1>*2,
    <extraplanets:tier6_items:2>*4,
    <extraplanets:tier6_items>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<extraplanets:item_tier6_rocket:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_33", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier7>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier7>,
    <extraplanets:tier7_items:3>*10,
    <extraplanets:tier7_items:1>*2,
    <extraplanets:tier7_items:2>*4,
    <extraplanets:tier7_items>,
    ])
    .addItemOutput(<extraplanets:item_tier7_rocket>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_34", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier7>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier7>,
    <extraplanets:tier7_items:3>*10,
    <extraplanets:tier7_items:1>*2,
    <extraplanets:tier7_items:2>*4,
    <extraplanets:tier7_items>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<extraplanets:item_tier7_rocket:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_35", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier7>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier7>,
    <extraplanets:tier7_items:3>*10,
    <extraplanets:tier7_items:1>*2,
    <extraplanets:tier7_items:2>*4,
    <extraplanets:tier7_items>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<extraplanets:item_tier7_rocket:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_36", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier7>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <extraplanets:tier7_items:3>*10,
    <extraplanets:tier7_items:1>*2,
    <extraplanets:tier7_items:2>*4,
    <extraplanets:tier7_items>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<extraplanets:item_tier7_rocket:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_37", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier8>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier8>,
    <extraplanets:tier8_items:3>*10,
    <extraplanets:tier8_items:1>*2,
    <extraplanets:tier8_items:2>*4,
    <extraplanets:tier8_items>,
    ])
    .addItemOutput(<extraplanets:item_tier8_rocket>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_38", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier8>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier8>,
    <extraplanets:tier8_items:3>*10,
    <extraplanets:tier8_items:1>*2,
    <extraplanets:tier8_items:2>*4,
    <extraplanets:tier8_items>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<extraplanets:item_tier8_rocket:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_39", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier8>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier8>,
    <extraplanets:tier8_items:3>*10,
    <extraplanets:tier8_items:1>*2,
    <extraplanets:tier8_items:2>*4,
    <extraplanets:tier8_items>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<extraplanets:item_tier8_rocket:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_40", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier8>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <extraplanets:tier8_items:3>*10,
    <extraplanets:tier8_items:1>*2,
    <extraplanets:tier8_items:2>*4,
    <extraplanets:tier8_items>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<extraplanets:item_tier8_rocket:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_41", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier9>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier9>,
    <extraplanets:tier9_items:3>*10,
    <extraplanets:tier9_items:1>*2,
    <extraplanets:tier9_items:2>*4,
    <extraplanets:tier9_items>,
    ])
    .addItemOutput(<extraplanets:item_tier9_rocket>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_42", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier9>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier9>,
    <extraplanets:tier9_items:3>*10,
    <extraplanets:tier9_items:1>*2,
    <extraplanets:tier9_items:2>*4,
    <extraplanets:tier9_items>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<extraplanets:item_tier9_rocket:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_43", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier9>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier9>,
    <extraplanets:tier9_items:3>*10,
    <extraplanets:tier9_items:1>*2,
    <extraplanets:tier9_items:2>*4,
    <extraplanets:tier9_items>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<extraplanets:item_tier9_rocket:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_44", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier9>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <extraplanets:tier9_items:3>*10,
    <extraplanets:tier9_items:1>*2,
    <extraplanets:tier9_items:2>*4,
    <extraplanets:tier9_items>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<extraplanets:item_tier9_rocket:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_45", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier10>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier10>,
    <extraplanets:tier10_items:3>*10,
    <extraplanets:tier10_items:1>*2,
    <extraplanets:tier10_items:2>*4,
    <extraplanets:tier10_items>,
    ])
    .addItemOutput(<extraplanets:item_tier10_rocket>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_46", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier10>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier10>,
    <extraplanets:tier10_items:3>*10,
    <extraplanets:tier10_items:1>*2,
    <extraplanets:tier10_items:2>*4,
    <extraplanets:tier10_items>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<extraplanets:item_tier10_rocket:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_47", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier10>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier10>,
    <extraplanets:tier10_items:3>*10,
    <extraplanets:tier10_items:1>*2,
    <extraplanets:tier10_items:2>*4,
    <extraplanets:tier10_items>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<extraplanets:item_tier10_rocket:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_48", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier10>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <extraplanets:tier10_items:3>*10,
    <extraplanets:tier10_items:1>*2,
    <extraplanets:tier10_items:2>*4,
    <extraplanets:tier10_items>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<extraplanets:item_tier10_rocket:3>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_45", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier10_electric_rocket>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier10>,
    <extraplanets:tier10_items:3>*8,
    <extraplanets:item_tier10_rocket>*2,
    <extraplanets:electric_parts:1>*2,
    <extraplanets:tier10_items:2>*4,
    <extraplanets:tier10_items>,
    ])
    .addItemOutput(<extraplanets:item_tier10_electric_rocket>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_46", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier10_electric_rocket>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier10>,
    <extraplanets:tier10_items:3>*8,
    <extraplanets:item_tier10_rocket:1>*2,
    <extraplanets:electric_parts:1>*2,
    <extraplanets:tier10_items:2>*4,
    <extraplanets:tier10_items>,
    <thermalexpansion:device:12>,
    ])
    .addItemOutput(<extraplanets:item_tier10_electric_rocket:1>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_47", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier10_electric_rocket>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemInputs([
    <extraplanets:nose_cone_tier10>,
    <extraplanets:tier10_items:3>*8,
    <extraplanets:item_tier10_rocket:2>*2,
    <extraplanets:electric_parts:1>*2,
    <extraplanets:tier10_items:2>*4,
    <extraplanets:tier10_items>,
    <thermalexpansion:device:12>*2,
    ])
    .addItemOutput(<extraplanets:item_tier10_electric_rocket:2>)
.build();
RecipeBuilder.newBuilder("rocket_center_LV1_48", "rocket_center_LV1", 6400)
    .addEnergyPerTickInput(512)
    .addItemInput(<extraplanets:schematic_tier10_electric_rocket>).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemInputs([
    <extraplanets:tier10_items:3>*8,
    <extraplanets:item_tier10_rocket:3>*2,
    <extraplanets:electric_parts:1>*2,
    <extraplanets:tier10_items:2>*4,
    <extraplanets:tier10_items>,
    <thermalexpansion:device:12>*3,
    ])
    .addItemOutput(<extraplanets:item_tier10_electric_rocket:3>)
.build();