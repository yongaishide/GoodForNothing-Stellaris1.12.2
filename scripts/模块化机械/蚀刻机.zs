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
//=============================================================精密激光蚀刻机==============================================================
RecipeBuilder.newBuilder("jingmijiguangshikeji_1", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<additions:chargingmagicemeraldcrystal>)
    .addItemInput(<industrialforegoing:laser_lens:5>).setChance(0.1)

    .addItemOutputs(<additions:crystal>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_2", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<additions:crystal_chip>)
    .addItemInput(<botania:quartz:1>)
    .addItemInput(<industrialforegoing:laser_lens:3>).setChance(0.1)

    .addItemOutputs(<additions:central_processing>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_3", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<additions:central_processing>)
    .addItemInput(<botania:manaresource:2>)

    .addItemInput(<industrialforegoing:laser_lens:11>).setChance(0.1)

    .addItemOutputs(<additions:system_on_chip>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_4", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<additions:crystal_chip>)
    .addItemInput(<contenttweaker:dianluban_5>)

    .addItemInput(<industrialforegoing:laser_lens:13>).setChance(0.1)

    .addItemOutputs(<mekanism:controlcircuit>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_5", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<mekanism:controlcircuit>)
    .addItemInput(<mekanism:enrichedalloy>*2)

    .addItemInput(<industrialforegoing:laser_lens:14>).setChance(0.1)

    .addItemOutputs(<mekanism:controlcircuit:1>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_6", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<mekanism:controlcircuit:1>)
    .addItemInput(<mekanism:reinforcedalloy>*2)
    .addItemInput(<draconicevolution:wyvern_core>)

    .addItemInput(<industrialforegoing:laser_lens:3>).setChance(0.1)

    .addItemOutputs(<mekanism:controlcircuit:2>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_7", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<mekanism:controlcircuit:2>)
    .addItemInput(<mekanism:atomicalloy>*2)
    .addItemInput(<draconicevolution:wyvern_core>)

    .addItemInput(<industrialforegoing:laser_lens:10>).setChance(0.1)

    .addItemOutputs(<mekanism:controlcircuit:3>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_8", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<mekanism:controlcircuit:3>)
    .addItemInput(<mekanismecoenergistics:alloyavaritia>*2)
    .addItemInput(<draconicevolution:wyvern_core>)

    .addItemInput(<industrialforegoing:laser_lens:15>).setChance(0.1)

    .addItemOutputs(<mekanismecoenergistics:controlcircuitavaritia>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_9", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<mekanismecoenergistics:controlcircuitavaritia:1>)
    .addItemInput(<mekanismecoenergistics:morealloy:3>*2)
    .addItemInput(<draconicevolution:wyvern_core>)

    .addItemInput(<industrialforegoing:laser_lens:13>).setChance(0.1)

    .addItemOutputs(<mekanismecoenergistics:morecontrolcircuit:3>)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_10", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<minecraft:redstone>)
    .addItemInput(<appliedenergistics2:material:5>)
    .addItemInput(<minecraft:gold_ingot>*2)

    .addItemOutputs(<appliedenergistics2:material:22>*2)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_11", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<minecraft:redstone>)
    .addItemInput(<appliedenergistics2:material:5>)
    .addItemInput(<appliedenergistics2:material:10>*2)

    .addItemOutputs(<appliedenergistics2:material:23>*2)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_12", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<minecraft:redstone>)
    .addItemInput(<appliedenergistics2:material:5>)
    .addItemInput(<minecraft:diamond>*2)

    .addItemOutputs(<appliedenergistics2:material:24>*2)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_13", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<minecraft:redstone>)
    .addItemInput(<appliedenergistics2:material:5>)
    .addItemInput(<appliedenergistics2:material:12>*2)

    .addItemOutputs(<contenttweaker:chuliqi_1>*2)
.build();
RecipeBuilder.newBuilder("jingmijiguangshikeji_14", "precision_laser_etching_machine", 20)
    .addEnergyPerTickInput(2560)
    .addItemInput(<mekanismecoenergistics:controlcircuitavaritia>)
    .addItemInput(<mekanismecoenergistics:alloyavaritia:1>*2)
    .addItemInput(<draconicevolution:wyvern_core>)

    .addItemInput(<industrialforegoing:laser_lens_inverted:15>).setChance(0.1)

    .addItemOutputs(<mekanismecoenergistics:controlcircuitavaritia:1>)
.build();