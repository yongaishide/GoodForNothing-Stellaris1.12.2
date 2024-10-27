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
// =============================================================焦炉==============================================================
RecipeBuilder.newBuilder("jl_1", "jiaolu", 500)
    .addItemInputs([
    <minecraft:coal:1>,
    ])
    .addItemOutputs(<thermalfoundation:material:802>)
    .addFluidOutputs(<liquid:creosote>*500)
.build();
RecipeBuilder.newBuilder("jl_2", "jiaolu", 500)
    .addItemInputs([
    <minecraft:coal>,
    ])
    .addItemOutputs(<immersiveengineering:material:6>)
    .addFluidOutputs(<liquid:creosote>*500)
.build();
RecipeBuilder.newBuilder("jl_3", "jiaolu", 4000)
    .addItemInputs([
    <minecraft:coal_block>,
    ])
    .addItemOutputs(<immersiveengineering:stone_decoration:3>)
    .addFluidOutputs(<liquid:creosote>*5000)
.build();
RecipeBuilder.newBuilder("jl_4", "jiaolu", 4000)
    .addItemInputs([
    <mekanism:basicblock:3>,
    ])
    .addItemOutputs(<thermalfoundation:storage_resource:1>)
    .addFluidOutputs(<liquid:creosote>*5000)
.build();
RecipeBuilder.newBuilder("jl_5", "jiaolu", 500)
    .addItemInputs([
    <ore:logWood>,
    ])
    .addItemOutputs(<minecraft:coal:1>)
    .addFluidOutputs(<liquid:creosote>*250)
.build();