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
RecipeBuilder.newBuilder("small_refining_tower_1", "small_refining_tower", 1200)
    .addEnergyPerTickInput(32)
    .addFluidInputs(<liquid:crude_oil>*1000)
    .addFluidOutputs(<liquid:diesel>*200)
    .addFluidOutputs(<liquid:kerosene>*300)
    .addFluidOutputs(<liquid:fuel>*300)
    .addFluidOutputs(<liquid:lpg>*200)
.build();