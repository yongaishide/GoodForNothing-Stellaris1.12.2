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
  
// =============================================================工业造石机==============================================================
RecipeBuilder.newBuilder("stone_01", "stone", 20)
    .addFluidInput(<liquid:water> * 1000).setChance(0)
    .addFluidInput(<liquid:lava> * 1000).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addItemOutput(<minecraft:cobblestone>)
.build();
RecipeBuilder.newBuilder("stone_02", "stone", 20)
    .addFluidInput(<liquid:water> * 1000)
    .addFluidInput(<liquid:lava> * 250)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addItemOutput(<chisel:basalt2:7>)
.build();
RecipeBuilder.newBuilder("stone_03", "stone", 20)
    .addFluidInput(<liquid:water> * 1000)
    .addFluidInput(<liquid:lava> * 1000).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addItemOutput(<minecraft:stone>)
.build();
RecipeBuilder.newBuilder("stone_04", "stone", 20)
    .addFluidInput(<liquid:water> * 1000)
    .addFluidInput(<liquid:lava> * 1000).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_4>).setChance(0)
    .addItemOutput(<minecraft:stone:3>)
.build();
RecipeBuilder.newBuilder("stone_05", "stone", 20)
    .addFluidInput(<liquid:water> * 1000)
    .addFluidInput(<liquid:lava> * 1000)
    .addItemInput(<contenttweaker:programmed_circuit_5>).setChance(0)
    .addItemOutput(<minecraft:stone:5>)
.build();
RecipeBuilder.newBuilder("stone_06", "stone", 20)
    .addFluidInput(<liquid:water> * 1000)
    .addFluidInput(<liquid:lava> * 1000).setChance(0)
    .addItemInput(<contenttweaker:programmed_circuit_6>).setChance(0)
    .addItemOutput(<minecraft:stone:1>)
.build();