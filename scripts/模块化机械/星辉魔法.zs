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

// =============================================================星能聚合器==============================================================
RecipeBuilder.newBuilder("xnjhq_01", "starlight_infusion", 200)
    .addStarlightInput(200)
    .addItemInputs([
    <contenttweaker:wupin_3>,
    <botania:manaresource:23>*2,
    ])
    .addFluidInputs(<liquid:astralsorcery.liquidstarlight>*500)
    .addItemOutputs(<astralsorcery:itemcraftingcomponent:4>)
.build();
RecipeBuilder.newBuilder("xnjhq_02", "starlight_infusion", 200)
    .addStarlightInput(200)
    .addItemInputs([
    <astralsorcery:itemcraftingcomponent>,
    <botania:managlasspane>*4,
    ])
    .addFluidInputs(<liquid:astralsorcery.liquidstarlight>*500)
    .addItemOutputs(<astralsorcery:itemcraftingcomponent:3>)
.build();