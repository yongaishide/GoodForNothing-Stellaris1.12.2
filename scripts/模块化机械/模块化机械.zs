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


//=============================================================蒸馏塔==============================================================
//最大线程数 4
MachineModifier.setMaxThreads("distillation_tower", 4);
RecipeBuilder.newBuilder("zhengliuta_1", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_11>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addFluidOutputs(<liquid:huaxue_16>*300)
    .addFluidOutputs(<liquid:refined_oil>*50)
    .addFluidOutputs(<liquid:huaxue_17>*25)
    .addFluidOutputs(<liquid:huaxue_1>*125)
    .addGasOutput(<gas:qiti_3>*25)
    .addGasOutput(<gas:qiti_4>*15)
    .addGasOutput(<gas:qiti_5>*3)
    .addGasOutput(<gas:C3H6>*30)
    .addGasOutput(<gas:qiti_6>*5)
    .addGasOutput(<gas:ethene>*50)
    .addGasOutput(<gas:qiti_7>*50)
.build();
RecipeBuilder.newBuilder("zhengliuta_2", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:crude_oil>*50)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addFluidOutputs(<liquid:huaxue_19>*15)
    .addFluidOutputs(<liquid:huaxue_20>*50)
    .addFluidOutputs(<liquid:huaxue_21>*20)
    .addGasOutput(<gas:qiti_8>*60)
.build();
//炼油气
RecipeBuilder.newBuilder("zhengliuta_3", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_28>*1000)

    .addGasOutput(<gas:qiti_2>*60)
    .addGasOutput(<gas:qiti_5>*70)
    .addGasOutput(<gas:qiti_6>*100)
    .addGasOutput(<gas:qiti_7>*750)
    .addGasOutput(<gas:Helium>*20)
.build();
//轻度加氢裂化炼油气
RecipeBuilder.newBuilder("zhengliuta_4", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_19>*1000)

    .addGasOutput(<gas:qiti_7>*1400)
    .addGasOutput(<gas:hydrogen>*1340)
    .addGasOutput(<gas:Helium>*20)
.build();
//重度加氢裂化炼油气
RecipeBuilder.newBuilder("zhengliuta_5", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_18>*1000)

    .addGasOutput(<gas:qiti_7>*1400)
    .addGasOutput(<gas:hydrogen>*4340)
    .addGasOutput(<gas:Helium>*20)
.build();
//轻度蒸汽裂化炼油气
RecipeBuilder.newBuilder("zhengliuta_6", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_10>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addGasOutput(<gas:C3H6>*45)
    .addGasOutput(<gas:qiti_6>*8)
    .addGasOutput(<gas:qiti_3>*85)
    .addGasOutput(<gas:qiti_7>*1026)
    .addGasOutput(<gas:Helium>*20)
.build();
//重度蒸汽裂化炼油气
RecipeBuilder.newBuilder("zhengliuta_7", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_9>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addGasOutput(<gas:C3H6>*8)
    .addGasOutput(<gas:qiti_6>*45)
    .addGasOutput(<gas:qiti_3>*92)
    .addGasOutput(<gas:qiti_7>*1018)
    .addGasOutput(<gas:Helium>*20)
.build();
//轻度加氢裂化石脑油
RecipeBuilder.newBuilder("zhengliuta_8", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_32>*1000)

    .addGasOutput(<gas:qiti_2>*800)
    .addGasOutput(<gas:qiti_5>*300)
    .addGasOutput(<gas:qiti_6>*250)
    .addGasOutput(<gas:qiti_7>*250)
.build();
//重度加氢裂化石脑油
RecipeBuilder.newBuilder("zhengliuta_9", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_33>*1000)

    .addGasOutput(<gas:qiti_2>*125)
    .addGasOutput(<gas:qiti_5>*125)
    .addGasOutput(<gas:qiti_6>*1500)
    .addGasOutput(<gas:qiti_7>*1500)
.build();
//轻度蒸汽裂化轻燃油
RecipeBuilder.newBuilder("zhengliuta_10", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_23>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addFluidOutputs(<liquid:huaxue_22>*150)
    .addFluidOutputs(<liquid:refined_oil>*400)
    .addFluidOutputs(<liquid:huaxue_17>*40)
    .addFluidOutputs(<liquid:huaxue_1>*200)
    .addGasOutput(<gas:qiti_3>*75)
    .addGasOutput(<gas:qiti_4>*60)
    .addGasOutput(<gas:qiti_5>*20)
    .addGasOutput(<gas:C3H6>*150)
    .addGasOutput(<gas:qiti_6>*10)
    .addGasOutput(<gas:ethene>*500)
    .addGasOutput(<gas:qiti_7>*500)
.build();
//重度蒸汽裂化轻燃油
RecipeBuilder.newBuilder("zhengliuta_11", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_24>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addFluidOutputs(<liquid:huaxue_22>*50)
    .addFluidOutputs(<liquid:refined_oil>*100)
    .addFluidOutputs(<liquid:huaxue_17>*30)
    .addFluidOutputs(<liquid:huaxue_1>*150)
    .addGasOutput(<gas:qiti_3>*65)
    .addGasOutput(<gas:qiti_4>*50)
    .addGasOutput(<gas:qiti_5>*50)
    .addGasOutput(<gas:C3H6>*250)
    .addGasOutput(<gas:qiti_6>*50)
    .addGasOutput(<gas:ethene>*250)
    .addGasOutput(<gas:qiti_7>*250)
.build();
//重度蒸汽裂化重燃油
RecipeBuilder.newBuilder("zhengliuta_12", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_11>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addFluidOutputs(<liquid:huaxue_16>*100)
    .addFluidOutputs(<liquid:refined_oil>*125)
    .addFluidOutputs(<liquid:huaxue_17>*80)
    .addFluidOutputs(<liquid:huaxue_1>*400)
    .addGasOutput(<gas:qiti_3>*80)
    .addGasOutput(<gas:qiti_4>*50)
    .addGasOutput(<gas:qiti_5>*10)
    .addGasOutput(<gas:C3H6>*100)
    .addGasOutput(<gas:qiti_6>*15)
    .addGasOutput(<gas:ethene>*150)
    .addGasOutput(<gas:qiti_7>*150)
.build();
//轻度蒸汽裂化石脑油
RecipeBuilder.newBuilder("zhengliuta_13", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_26>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addFluidOutputs(<liquid:huaxue_22>*75)
    .addFluidOutputs(<liquid:huaxue_16>*150)
    .addFluidOutputs(<liquid:huaxue_17>*40)
    .addFluidOutputs(<liquid:huaxue_1>*150)
    .addGasOutput(<gas:qiti_3>*80)
    .addGasOutput(<gas:qiti_4>*150)
    .addGasOutput(<gas:qiti_5>*15)
    .addGasOutput(<gas:C3H6>*200)
    .addGasOutput(<gas:qiti_6>*35)
    .addGasOutput(<gas:ethene>*200)
    .addGasOutput(<gas:qiti_7>*200)
.build();
//重度蒸汽裂化石脑油
RecipeBuilder.newBuilder("zhengliuta_14", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_27>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.11)
    .addFluidOutputs(<liquid:huaxue_22>*25)
    .addFluidOutputs(<liquid:huaxue_16>*50)
    .addFluidOutputs(<liquid:huaxue_17>*20)
    .addFluidOutputs(<liquid:huaxue_1>*100)
    .addGasOutput(<gas:qiti_3>*50)
    .addGasOutput(<gas:qiti_4>*50)
    .addGasOutput(<gas:qiti_5>*15)
    .addGasOutput(<gas:C3H6>*300)
    .addGasOutput(<gas:qiti_6>*65)
    .addGasOutput(<gas:ethene>*500)
    .addGasOutput(<gas:qiti_7>*500)
.build();
//加氢裂化乙烷
RecipeBuilder.newBuilder("zhengliuta_15", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_20>*1000)

    .addGasOutput(<gas:qiti_7>*2000)
    .addGasOutput(<gas:Helium>*2000)
.build();
//蒸汽裂化乙烷
RecipeBuilder.newBuilder("zhengliuta_16", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_11>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.25)
    .addGasOutput(<gas:qiti_3>*250)
    .addGasOutput(<gas:qiti_7>*1250)
.build();
//加氢裂化乙稀
RecipeBuilder.newBuilder("zhengliuta_17", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_21>*1000)

    .addGasOutput(<gas:qiti_6>*1000)
.build();
//蒸汽裂化乙稀
RecipeBuilder.newBuilder("zhengliuta_18", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_12>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(1)
    .addGasOutput(<gas:qiti_7>*1000)
.build();
//加氢裂化丙烷
RecipeBuilder.newBuilder("zhengliuta_19", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_20>*1000)

    .addGasOutput(<gas:qiti_7>*2000)
    .addGasOutput(<gas:Helium>*2000)
.build();
//蒸汽裂化丙烷
RecipeBuilder.newBuilder("zhengliuta_20", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_11>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.25)
    .addGasOutput(<gas:qiti_3>*250)
    .addGasOutput(<gas:qiti_7>*1250)
.build();
//加氢裂化丁烷
RecipeBuilder.newBuilder("zhengliuta_21", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_24>*1000)

    .addGasOutput(<gas:qiti_5>*750)
    .addGasOutput(<gas:qiti_6>*750)
    .addGasOutput(<gas:qiti_7>*500)
.build();
//蒸汽裂化丁烷
RecipeBuilder.newBuilder("zhengliuta_22", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_15>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.25)
    .addGasOutput(<gas:qiti_5>*125)
    .addGasOutput(<gas:qiti_6>*750)
    .addGasOutput(<gas:ethene>*750)
    .addGasOutput(<gas:qiti_7>*500)
.build();
//加氢裂化丁稀
RecipeBuilder.newBuilder("zhengliuta_23", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_25>*1000)

    .addGasOutput(<gas:qiti_2>*500)
    .addGasOutput(<gas:C3H6>*250)
    .addGasOutput(<gas:qiti_6>*250)
    .addGasOutput(<gas:ethene>*250)
    .addGasOutput(<gas:qiti_7>*250)
.build();
//蒸汽裂化丁稀
RecipeBuilder.newBuilder("zhengliuta_24", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_16>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.25)
    .addGasOutput(<gas:C3H6>*250)
    .addGasOutput(<gas:ethene>*1500)
    .addGasOutput(<gas:qiti_7>*250)
.build();
//加氢裂化丁二稀
RecipeBuilder.newBuilder("zhengliuta_25", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_26>*1000)

    .addGasOutput(<gas:qiti_3>*750)
    .addGasOutput(<gas:ethene>*500)
.build();
//蒸汽裂化丁二稀
RecipeBuilder.newBuilder("zhengliuta_26", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_17>*1000)

    .addItemOutputs(<thermalfoundation:material:769>).setChance(0.25)
    .addGasOutput(<gas:C3H6>*125)
    .addGasOutput(<gas:ethene>*250)
    .addGasOutput(<gas:qiti_7>*1125)
.build();
//杂酚油
RecipeBuilder.newBuilder("zhengliuta_27", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:creosote>*24)

    .addFluidOutputs(<liquid:lubricant>*1000)
.build();
//稀盐酸
RecipeBuilder.newBuilder("zhengliuta_28", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_12>*2000)

    .addFluidOutputs(<liquid:water>*1000)
    .addFluidOutputs(<liquid:huaxue_8>*1000)
.build();
//木炭副产物
RecipeBuilder.newBuilder("zhengliuta_29", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_35>*1000)

    .addItemOutputs(<mekanism:otherdust:8>).setChance(0.25)
    .addFluidOutputs(<liquid:huaxue_36>*250)
    .addFluidOutputs(<liquid:huaxue_37>*400)
    .addGasOutput(<gas:qiti_29>*250)
    .addFluidOutputs(<liquid:huaxue_39>*100)
.build();
//木焦油
RecipeBuilder.newBuilder("zhengliuta_30", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_36>*1000)

    .addFluidOutputs(<liquid:creosote>*300)
    .addFluidOutputs(<liquid:huaxue_2>*75)
    .addFluidOutputs(<liquid:huaxue_1>*350)
    .addFluidOutputs(<liquid:huaxue_17>*75)
    .addFluidOutputs(<liquid:huaxue_38>*200)
.build();
//木醋酸
RecipeBuilder.newBuilder("zhengliuta_31", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_37>*1000)

    .addFluidOutputs(<liquid:huaxue_39>*100)
    .addFluidOutputs(<liquid:water>*500)
    .addFluidOutputs(<liquid:ethanol>*10)
    .addFluidOutputs(<liquid:methanol>*300)
    .addFluidOutputs(<liquid:huaxue_9>*50)
    .addFluidOutputs(<liquid:huaxue_40>*10)
.build();
//木煤气
RecipeBuilder.newBuilder("zhengliuta_32", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_29>*1000)

    .addGasOutput(<gas:qiti_1>*490)
    .addGasOutput(<gas:ethene>*20)
    .addGasOutput(<gas:qiti_7>*130)
    .addGasOutput(<gas:qiti_30>*340)
    .addGasOutput(<gas:hydrogen>*20)
.build();
//水
RecipeBuilder.newBuilder("zhengliuta_33", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:water>*576)

    .addFluidOutputs(<liquid:zhengliushui>*520)
.build();
//丙酮
RecipeBuilder.newBuilder("zhengliuta_34", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_9>*1000)

    .addFluidOutputs(<liquid:huaxue_41>*1000)
    .addGasOutput(<gas:qiti_7>*1000)
.build();
//溶解乙酸钙
RecipeBuilder.newBuilder("zhengliuta_35", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_42>*1000)

    .addFluidOutputs(<liquid:huaxue_9>*1000)
    .addFluidOutputs(<liquid:water>*1000)
    .addGasOutput(<gas:qiti_1>*1000)
.build();
//种子油
RecipeBuilder.newBuilder("zhengliuta_36", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:seed_oil>*1000)

    .addFluidOutputs(<liquid:lubricant>*500)
.build();
//稀硫酸
RecipeBuilder.newBuilder("zhengliuta_37", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_34>*3000)

    .addFluidOutputs(<liquid:sulfuricacid>*2000)
    .addFluidOutputs(<liquid:water>*1000)
.build();
//鱼油
RecipeBuilder.newBuilder("zhengliuta_38", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_43>*1000)

    .addFluidOutputs(<liquid:lubricant>*500)
.build();
//发酵生物质
RecipeBuilder.newBuilder("zhengliuta_39", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_44>*1000)

    .addItemOutputs(<thermalfoundation:fertilizer>).setChance(1)
    .addFluidOutputs(<liquid:huaxue_39>*25)
    .addFluidOutputs(<liquid:water>*375)
    .addFluidOutputs(<liquid:ethanol>*150)
    .addFluidOutputs(<liquid:methanol>*150)
    .addGasOutput(<gas:qiti_31>*100)
    .addGasOutput(<gas:qiti_1>*400)
    .addGasOutput(<gas:qiti_7>*600)
.build();
//生物质
RecipeBuilder.newBuilder("zhengliuta_40", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_61>*1000)

    .addItemOutputs(<mekanism:sawdust>).setChance(0.5)
    .addFluidOutputs(<liquid:ethanol>*600)
    .addFluidOutputs(<liquid:water>*300)
.build();
//煤气
RecipeBuilder.newBuilder("zhengliuta_41", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_32>*1000)

    .addItemOutputs(<immersiveengineering:material:17>).setChance(0.25)
    .addFluidOutputs(<liquid:huaxue_45>*200)
    .addFluidOutputs(<liquid:huaxue_46>*250)
    .addGasOutput(<gas:qiti_31>*300)
    .addGasOutput(<gas:qiti_1>*250)
.build();
//煤焦油
RecipeBuilder.newBuilder("zhengliuta_42", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_45>*200)

    .addItemOutputs(<immersiveengineering:material:17>).setChance(0.25)
    .addFluidOutputs(<liquid:huaxue_47>*400)
    .addFluidOutputs(<liquid:creosote>*200)
    .addFluidOutputs(<liquid:huaxue_2>*100)
    .addGasOutput(<gas:qiti_27>*300)
.build();
//液态空气
RecipeBuilder.newBuilder("zhengliuta_43", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_48>*50000)

    .addItemOutputs(<aoa3:ice_crystal>).setChance(0.90)
    .addGasOutput(<gas:qiti_33>*35000)
    .addGasOutput(<gas:oxygen>*11000)
    .addGasOutput(<gas:qiti_1>*2500)
    .addGasOutput(<gas:Helium>*1000)
    .addGasOutput(<gas:Argon>*500)
.build();
//液态下界空气
RecipeBuilder.newBuilder("zhengliuta_44", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_49>*100000)

    .addItemOutputs(<embers:dust_ash>).setChance(0.22)
    .addGasOutput(<gas:qiti_30>*72000)
    .addGasOutput(<gas:qiti_32>*10000)
    .addGasOutput(<gas:qiti_27>*7500)
    .addGasOutput(<gas:sulfurdioxide>*7500)
    .addGasOutput(<gas:qiti_34>*2500)
    .addGasOutput(<gas:Neon>*500)
.build();
//液态末地空气
RecipeBuilder.newBuilder("zhengliuta_45", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_50>*200000)

    .addItemOutputs(<enderio:item_material:28>).setChance(0.10)
    .addGasOutput(<gas:qiti_35>*122000)
    .addGasOutput(<gas:deuterium>*50000)
    .addGasOutput(<gas:Helium>*15000)
    .addGasOutput(<gas:tritium>*10000)
    .addGasOutput(<gas:Krypton>*1000)
    .addGasOutput(<gas:Xenon>*1000)
    .addGasOutput(<gas:Radon>*1000)
.build();
//酸性锇溶液
RecipeBuilder.newBuilder("zhengliuta_46", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_51>*2000)

    .addItemOutputs(<contenttweaker:jinshufen_1>*5)
    .addFluidOutputs(<liquid:huaxue_8>*100)
    .addFluidOutputs(<liquid:water>*100)
.build();
//富集硅岩废液
RecipeBuilder.newBuilder("zhengliuta_47", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_52>*2000)

    .addItemOutputs(<contenttweaker:jinshufen_2>*5).setChance(0.5)
    .addFluidOutputs(<liquid:sulfuricacid>*500)
    .addFluidOutputs(<liquid:huaxue_54>*350)
    .addFluidOutputs(<liquid:huaxue_55>*150)
.build();
//超能硅岩废液
RecipeBuilder.newBuilder("zhengliuta_48", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_53>*2000)

    .addItemOutputs(<contenttweaker:jinshufen_3>*5).setChance(0.5)
    .addFluidOutputs(<liquid:sulfuricacid>*500)
    .addFluidOutputs(<liquid:huaxue_55>*300)
    .addFluidOutputs(<liquid:huaxue_54>*150)
.build();
//甘油
RecipeBuilder.newBuilder("zhengliuta_49", "distillation_tower", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_61>*80)

    .addFluidOutputs(<liquid:huaxue_13>*20)
    .addFluidOutputs(<liquid:ethanol>*20)
    .addFluidOutputs(<liquid:zhengliushui>*50)
    .addGasOutput(<gas:qiti_7>*4)
.build();

//=============================================================酿造室==============================================================
RecipeBuilder.newBuilder("niangzaoshi_1", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addItemInputs([
    <minecraft:redstone>*3,
    ])
    .addFluidInputs(<liquid:crude_oil>*1000)

    .addFluidOutputs(<liquid:lubricant>*1000)
.build();
RecipeBuilder.newBuilder("niangzaoshi_2", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addItemInputs([
    <minecraft:redstone>*3,
    ])
    .addFluidInputs(<liquid:creosote>*1000)

    .addFluidOutputs(<liquid:lubricant>*1000)
.build();
RecipeBuilder.newBuilder("niangzaoshi_3", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addItemInputs([
    <minecraft:redstone>*3,
    ])
    .addFluidInputs(<liquid:seed_oil>*1000)

    .addFluidOutputs(<liquid:lubricant>*1000)
.build();
RecipeBuilder.newBuilder("niangzaoshi_4", "brewing_room", 800)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <ore:treeSapling>,
    ])
    .addFluidInputs(<liquid:water>*100)

    .addFluidOutputs(<liquid:huaxue_61>*100)
.build();
RecipeBuilder.newBuilder("niangzaoshi_5", "brewing_room", 160)
    .addEnergyPerTickInput(5120)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <minecraft:potato>,
            <minecraft:carrot>,
            <minecraft:cactus>,
            <minecraft:reeds>,
            <minecraft:red_mushroom>,
            <minecraft:brown_mushroom>,
            <minecraft:beetroot>,
        ])
    )
    .addFluidInputs(<liquid:water>*20)

    .addFluidOutputs(<liquid:huaxue_61>*20)
.build();

RecipeBuilder.newBuilder("niangzaoshi_6", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addItemInputs([
    <thermalfoundation:material:816>,
    ])
    .addFluidInputs(<liquid:water>*750)

    .addFluidOutputs(<liquid:huaxue_61>*750)
.build();

//种子油
RecipeBuilder.newBuilder("niangzaoshi_7", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:seed_oil>*1000)
    .addItemInputs([
    <minecraft:redstone>*3,
    ])

    .addFluidOutputs(<liquid:lubricant>*1000)
.build();
//鱼油
RecipeBuilder.newBuilder("niangzaoshi_8", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_43>*1000)
    .addItemInputs([
    <minecraft:redstone>*3,
    ])

    .addFluidOutputs(<liquid:lubricant>*1000)
.build();
//深渊露水
RecipeBuilder.newBuilder("niangzaoshi_9", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:nutrient_distillation>*4000)
    .addItemInput(<enderio:item_material:37>)
    .addItemInput(<enderio:item_material:36>)

    .addFluidOutputs(<liquid:ender_distillation>*1000)
.build();
//营养精华液
RecipeBuilder.newBuilder("niangzaoshi_10", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:water>*2000)
    .addItemInput(<ore:itemSkull>)
    .addItemInput(<minecraft:sugar>)

    .addFluidOutputs(<liquid:nutrient_distillation>*1000)
.build();
//轻盈之气
RecipeBuilder.newBuilder("niangzaoshi_11", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:ender_distillation>*1000)
    .addItemInput(<enderio:item_material:34>)
    .addItemInput(<enderio:item_material:36>)

    .addFluidOutputs(<liquid:vapor_of_levity>*1000)
.build();
//火箭燃料
RecipeBuilder.newBuilder("niangzaoshi_12", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:hootch>*1000)
    .addItemInput(<minecraft:redstone>)
    .addItemInput(<minecraft:gunpowder>)

    .addFluidOutputs(<liquid:rocket_fuel>*1000)
.build();
//火焰水
RecipeBuilder.newBuilder("niangzaoshi_13", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:hootch>*1000)
    .addItemInput(<minecraft:redstone>)
    .addItemInput(<minecraft:blaze_powder>)

    .addFluidOutputs(<liquid:fire_water>*1000)
.build();
//液态阳光
RecipeBuilder.newBuilder("niangzaoshi_14", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:fire_water>*1000)
    .addItemInput(<minecraft:glowstone>)
    .addItemInput(<minecraft:double_plant>)

    .addFluidOutputs(<liquid:liquid_sunshine>*1000)
.build();
//云之精华
RecipeBuilder.newBuilder("niangzaoshi_15", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:fire_water>*1000)
    .addItemInput(<minecraft:clay>)
    .addItemInput(<aether_legacy:aercloud>)

    .addFluidOutputs(<liquid:cloud_seed>*500)
.build();
//浓缩云之精华
RecipeBuilder.newBuilder("niangzaoshi_16", "brewing_room", 100)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:cloud_seed>*1000)
    .addItemInput(<minecraft:clay>)

    .addFluidOutputs(<liquid:cloud_seed_concentrated>*500)
.build();
//=============================================================石油裂化机==============================================================
//重燃油
RecipeBuilder.newBuilder("liehuashiyouji_1", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_22>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_11>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_2", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:huaxue_22>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_25>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_3", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_22>*1000)
    .addGasInput(<gas:hydrogen>*2000)//水蒸气

    .addFluidOutputs(<liquid:huaxue_28>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_4", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:huaxue_22>*1000)
    .addGasInput(<gas:hydrogen>*6000)

    .addFluidOutputs(<liquid:huaxue_29>*1000)
.build();
//轻燃油
RecipeBuilder.newBuilder("liehuashiyouji_5", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_16>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_23>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_6", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:huaxue_16>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_24>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_7", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_16>*1000)
    .addGasInput(<gas:hydrogen>*2000)

    .addFluidOutputs(<liquid:huaxue_30>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_8", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:huaxue_16>*1000)
    .addGasInput(<gas:hydrogen>*6000)

    .addFluidOutputs(<liquid:huaxue_31>*1000)
.build();
//石脑油
RecipeBuilder.newBuilder("liehuashiyouji_9", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_26>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_10", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_27>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_11", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addGasInput(<gas:hydrogen>*2000)//水蒸气

    .addFluidOutputs(<liquid:huaxue_32>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_12", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addGasInput(<gas:hydrogen>*6000)

    .addFluidOutputs(<liquid:huaxue_33>*1000)
.build();
//乙烷
RecipeBuilder.newBuilder("liehuashiyouji_13", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_6>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_11>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_14", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_6>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_20>*1000)
.build();
//乙稀
RecipeBuilder.newBuilder("liehuashiyouji_15", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:ethene>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_12>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_16", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:ethene>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_21>*1000)
.build();
//丙烯
RecipeBuilder.newBuilder("liehuashiyouji_17", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:C3H6>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_13>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_18", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:C3H6>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_22>*1000)
.build();
//丙烷
RecipeBuilder.newBuilder("liehuashiyouji_19", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_5>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_14>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_20", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_5>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_23>*1000)
.build();
//丁烷
RecipeBuilder.newBuilder("liehuashiyouji_21", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_2>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_15>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_22", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_2>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_24>*1000)
.build();
//丁稀
RecipeBuilder.newBuilder("liehuashiyouji_23", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_3>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_16>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_24", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_3>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_25>*1000)
.build();
//丁二稀
RecipeBuilder.newBuilder("liehuashiyouji_25", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_4>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_17>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_26", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_4>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_26>*1000)
.build();
//石脑油
RecipeBuilder.newBuilder("liehuashiyouji_27", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_26>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_28", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_27>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_29", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addGasInput(<gas:hydrogen>*2000)//水蒸气

    .addFluidOutputs(<liquid:huaxue_32>*1000)
.build();
RecipeBuilder.newBuilder("liehuashiyouji_30", "petroleum_cracking_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addGasInput(<gas:hydrogen>*6000)

    .addFluidOutputs(<liquid:huaxue_33>*1000)
.build();
//=============================================================化学反应室==============================================================
//重燃油
RecipeBuilder.newBuilder("huaxuefanyingshi_01", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_22>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_11>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_02", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:huaxue_22>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_25>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_03", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_22>*1000)
    .addGasInput(<gas:hydrogen>*2000)//水蒸气

    .addFluidOutputs(<liquid:huaxue_28>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_04", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:huaxue_22>*1000)
    .addGasInput(<gas:hydrogen>*6000)

    .addFluidOutputs(<liquid:huaxue_29>*500)
.build();
//轻燃油
RecipeBuilder.newBuilder("huaxuefanyingshi_05", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_16>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_23>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_06", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:huaxue_16>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_24>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_07", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_16>*1000)
    .addGasInput(<gas:hydrogen>*2000)//水蒸气

    .addFluidOutputs(<liquid:huaxue_30>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_08", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:huaxue_16>*1000)
    .addGasInput(<gas:hydrogen>*6000)

    .addFluidOutputs(<liquid:huaxue_31>*500)
.build();
//石脑油
RecipeBuilder.newBuilder("huaxuefanyingshi_09", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_26>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_010", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addFluidOutputs(<liquid:huaxue_27>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_011", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addGasInput(<gas:hydrogen>*2000)//水蒸气

    .addFluidOutputs(<liquid:huaxue_32>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_012", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addFluidInputs(<liquid:refined_oil>*1000)
    .addGasInput(<gas:hydrogen>*6000)

    .addFluidOutputs(<liquid:huaxue_33>*500)
.build();
//乙烷
RecipeBuilder.newBuilder("huaxuefanyingshi_013", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_6>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_11>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_014", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_6>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_20>*500)
.build();
//乙稀
RecipeBuilder.newBuilder("huaxuefanyingshi_015", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:ethene>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_12>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_016", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:ethene>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_21>*500)
.build();
//丙烯
RecipeBuilder.newBuilder("huaxuefanyingshi_017", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:C3H6>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_13>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_018", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:C3H6>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_22>*500)
.build();
//丙烷
RecipeBuilder.newBuilder("huaxuefanyingshi_019", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_5>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_14>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_020", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_5>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_23>*500)
.build();
//丁烷
RecipeBuilder.newBuilder("huaxuefanyingshi_021", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_2>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_15>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_022", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_2>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_24>*500)
.build();
//丁稀
RecipeBuilder.newBuilder("huaxuefanyingshi_023", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_3>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_16>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_024", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_3>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_25>*500)
.build();
//丁二稀
RecipeBuilder.newBuilder("huaxuefanyingshi_025", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_4>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_17>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_026", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_2>).setChance(0)
    .addGasInput(<gas:qiti_4>*1000)
    .addGasInput(<gas:hydrogen>*4000)

    .addGasOutput(<gas:qiti_26>*500)
.build();
//炼油气
RecipeBuilder.newBuilder("huaxuefanyingshi_027", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addGasInput(<gas:qiti_28>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_10>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_028", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addGasInput(<gas:qiti_28>*1000)
    .addFluidInputs(<liquid:steam>*1000)

    .addGasOutput(<gas:qiti_9>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_029", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addGasInput(<gas:qiti_28>*1000)
    .addGasInput(<gas:hydrogen>*2000)//水蒸气

    .addGasOutput(<gas:qiti_19>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_030", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_3>).setChance(0)
    .addGasInput(<gas:qiti_28>*1000)
    .addGasInput(<gas:hydrogen>*6000)

    .addGasOutput(<gas:qiti_18>*500)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_031", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs([
    <nuclearcraft:compound:5>*3,
    ])
    .addFluidInputs(<liquid:huaxue_9>*1000)
    .addFluidInputs(<liquid:huaxue_2>*2000)
    .addFluidInputs(<liquid:huaxue_4>*1000)
    .addFluidInputs(<liquid:huaxue_8>*1000)
    .addFluidOutputs(<liquid:epoxy_resin>*1000)
    .addFluidOutputs(<liquid:brine>*1000)
    .addFluidOutputs(<liquid:huaxue_12>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_032", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    //输入
    .addFluidInputs(<liquid:huaxue_1>*1000)
    .addFluidInputs(<liquid:huaxue_10>*100)
    .addGasInput(<gas:oxygen>*1000)
    .addGasInput(<gas:C3H6>*1000)
    //输出
    .addFluidOutputs(<liquid:huaxue_9>*1000)
    .addFluidOutputs(<liquid:huaxue_2>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_033", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    //输入
    .addItemInputs([
    <contenttweaker:linfen>*2,
    ])
    .addFluidInputs(<liquid:water>*3000)
    .addGasInput(<gas:oxygen>*5000)
    //输出
    .addFluidOutputs(<liquid:huaxue_10>*2000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_034", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs([
    <nuclearcraft:compound:5>*3,
    ])
    .addFluidInputs(<liquid:huaxue_3>*2000)
    .addFluidInputs(<liquid:huaxue_4>*1000)

    .addFluidOutputs(<liquid:epoxy_resin>*1000)
    .addFluidOutputs(<liquid:brine>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_035", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs([
    <nuclearcraft:compound:5>*3,
    ])
    .addFluidInputs(<liquid:water>*1000)
    .addGasInput(<gas:C3H6>*1000)
    .addGasInput(<gas:chlorine>*4000)

    .addFluidOutputs(<liquid:huaxue_4>*1000)
    .addFluidOutputs(<liquid:huaxue_8>*2000)
    .addFluidOutputs(<liquid:brine>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_036", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_20>*12000)
    .addGasInput(<gas:hydrogen>*2000)

    .addFluidOutputs(<liquid:huaxue_16>*12000)
    .addGasOutput(<gas:qiti_27>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_037", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_19>*12000)
    .addGasInput(<gas:hydrogen>*2000)

    .addFluidOutputs(<liquid:huaxue_22>*12000)
    .addGasOutput(<gas:qiti_27>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_038", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_21>*12000)
    .addGasInput(<gas:hydrogen>*2000)

    .addFluidOutputs(<liquid:refined_oil>*12000)
    .addGasOutput(<gas:qiti_27>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_039", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addGasInput(<gas:qiti_8>*1000)
    .addGasInput(<gas:hydrogen>*2000)

    .addGasOutput(<gas:qiti_28>*1000)
    .addGasOutput(<gas:qiti_27>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_040", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<contenttweaker:jinshufen_1>*5)
    .addGasInput(<gas:hydrogen>*8000)

    .addItemOutputs(<mekanism:dust:2>)
    .addFluidOutputs(<liquid:water>*4000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_041", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<contenttweaker:jinshufen_5>*7)
    .addFluidInputs(<liquid:huaxue_8>*4000)

    .addItemOutputs(<contenttweaker:jinshufen_6>*5)
    .addFluidOutputs(<liquid:huaxue_51>*2000)
    .addGasOutput(<gas:hydrogen>*4000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_042", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<contenttweaker:jinshufen_7>*4)
    .addGasInput(<gas:hydrogen>*3000)

    .addItemOutputs(<thermalfoundation:material:71>)
    .addFluidOutputs(<liquid:huaxue_8>*2000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_043", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<contenttweaker:jinshufen_11>*6)
    .addFluidInputs(<liquid:sulfuricacid>*1500)

    .addItemOutputs(<contenttweaker:jinshufen_12>*5)
    .addFluidOutputs(<liquid:huaxue_59>*500)
    .addGasOutput(<gas:hydrogen>*3000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_044", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<contenttweaker:jinshufen_12>*5)
    .addItemInputs(<thermalfoundation:material:768>*2)

    .addItemOutputs(<jaopca:dust.ruthen>)
    .addGasOutput(<gas:qiti_1>*3000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_046", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<nuclearcraft:part:6>*2)
    .addFluidInput(<liquid:water>*10)
    .addGasInput(<gas:hydrogen>*100)
    

    .addItemOutput(<mekanism:substrate>)
    .addGasOutput(<gas:ethene>*100)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_047", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<mekanism:substrate>)
    .addFluidInput(<liquid:water>*200)
    .addGasInput(<gas:ethene>*100)

    .addItemOutput(<mekanism:substrate>*8)
    .addGasOutput(<gas:oxygen>*10)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_048", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addFluidInput(<liquid:ethanol>*1000)

    .addFluidOutput(<liquid:water>*1000)
    .addGasOutput(<gas:ethene>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_049", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<contenttweaker:jinshufen_18>*4)
    .addFluidInputs(<liquid:sulfuricacid>*250)

    .addItemOutputs(<minecraft:tnt>)
.build();
//王水
RecipeBuilder.newBuilder("huaxuefanyingshi_050", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:programmed_circuit_1>).setChance(0)
    .addFluidInputs(<liquid:huaxue_8>*1000)
    .addFluidInputs(<liquid:huaxue_56>*1000)

    .addFluidOutputs(<liquid:huaxue_60>*2000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_051", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<thermalfoundation:material:771>)
    .addGasInput(<gas:oxygen>*1000)//氧气

    .addFluidOutputs(<liquid:liquidsulfurdioxide>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_052", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs(<liquid:liquidsulfurdioxide>*1000)
    .addGasInput(<gas:oxygen>*500)//氧气

    .addFluidOutputs(<liquid:liquidsulfurtrioxide>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_053", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs(<liquid:liquidsulfurtrioxide>*1000)
    .addFluidInputs(<liquid:water>*1000)

    .addFluidOutputs(<liquid:sulfuricacid>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_054", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:jinshufen_13>*5)
    .addFluidInputs(<liquid:sulfuricacid>*7000)

    .addItemOutputs(<contenttweaker:jinshufen_15>*7)
    .addFluidOutputs(<liquid:huaxue_56>*5000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_055", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<contenttweaker:jinshufen_14>*5)
    .addFluidInputs(<liquid:sulfuricacid>*7000)

    .addItemOutputs(<contenttweaker:jinshufen_16>*7)
    .addFluidOutputs(<liquid:huaxue_56>*5000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_056", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInput(<mekanism:salt>*3)
    .addFluidInputs(<liquid:brine>*4000)
    .addGasInput(<gas:oxygen>*100)//氧气
    .addFluidInputs(<liquid:liquidsulfurdioxide>*3000)

    .addItemOutputs(<contenttweaker:jinshufen_17>*7)
    .addFluidOutputs(<liquid:huaxue_8>*5000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_057", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<thermalfoundation:ore:6>)
    .addFluidInputs(<liquid:huaxue_56>*100)

    .addItemOutputs(<contenttweaker:jinshufen_10>*4)
    .addFluidOutputs(<liquid:huaxue_57>*1000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_058", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<contenttweaker:jinshufen_20>*4)
    .addFluidInputs(<liquid:hydrofluoric_acid>*4000)

    .addFluidOutputs(<liquid:huaxue_64>*1000)
    .addGasOutput(<gas:hydrogen>*2000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_059", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(5120)
    .addItemInputs(<contenttweaker:jinshufen_21>*5)
    .addFluidInputs(<liquid:hydrofluoric_acid>*6000)

    .addItemOutputs(<contenttweaker:jinshufen_20>*8)
    .addFluidOutputs(<liquid:water>*3000)
.build();
RecipeBuilder.newBuilder("huaxuefanyingshi_060", "chemical_reaction_room", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs(<minecraft:sugar>)
    .addFluidInputs(<liquid:huaxue_17>*133)

    .addItemOutputs(<contenttweaker:jinshufen_18>*2)
.build();
//=============================================================大型化学反应釜==============================================================
RecipeAdapterBuilder.create("large_scale_chemical_reactor", "modularmachinery:chemical_reaction_room")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.75F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();
RecipeBuilder.newBuilder("large_scale_chemical_reactor_01", "large_scale_chemical_reactor", 100)
    .addEnergyPerTickInput(20480)
    .addItemInputs(<jaopca:dust.naquadah>*6)
    .addFluidInputs(<liquid:huaxue_64>*1000)

    .addItemOutputs(<contenttweaker:jinshufen_23>*4)
    .addFluidOutputs(<liquid:huaxue_65>*2000)
    .addFluidOutputs(<liquid:huaxue_66>*2000)
.build();
//=============================================================搅拌机==============================================================
RecipeBuilder.newBuilder("jiaobanji_01", "mixer", 1000)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_54>*1000)
    .addFluidInputs(<liquid:sulfuricacid>*2000)

    .addFluidOutputs(<liquid:huaxue_63>*3000)
.build();
RecipeBuilder.newBuilder("jiaobanji_02", "mixer", 1000)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_13>*280)
    .addFluidInputs(<liquid:huaxue_56>*300)
    .addFluidInputs(<liquid:sulfuricacid>*700)

    .addFluidOutputs(<liquid:huaxue_62>*400)
    .addFluidOutputs(<liquid:liquidsulfurdioxide>*120)
.build();
RecipeBuilder.newBuilder("jiaobanji_03", "mixer", 1000)
    .addEnergyPerTickInput(5120)
    .addFluidInputs(<liquid:huaxue_55>*1000)
    .addFluidInputs(<liquid:sulfuricacid>*2000)

    .addFluidOutputs(<liquid:huaxue_67>*3000)
.build();
//=============================================================气体收集装置==============================================================
//液态空气
RecipeBuilder.newBuilder("qtsjzz_1", "gas_collection_device", 100)
    .addEnergyPerTickInput(1280)
    .addItemInputs(<minecraft:packed_ice>)

    .addFluidOutput(<liquid:huaxue_48>*1000)
.build();
RecipeBuilder.newBuilder("qtsjzz_2", "gas_collection_device", 100)
    .addEnergyPerTickInput(1280)
    .addItemInputs(<aoa3:ice_crystal>)

    .addFluidOutput(<liquid:huaxue_48>*10000)
.build();
// =============================================================小型离心机==============================================================
RecipeBuilder.newBuilder("xiaoxinglixinji_1", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:sand>,
    ])
    .addItemOutput(<astralsorcery:itemcraftingcomponent>).setChance(0.005)//海蓝宝石
    .addItemOutput(<minecraft:blaze_powder>).setChance(0.01)//烈焰粉
    .addItemOutput(<minecraft:dye:15>).setChance(0.01)//骨粉
    .addItemOutput(<minecraft:glowstone_dust>).setChance(0.01)//萤石粉
    .addItemOutput(<minecraft:redstone>).setChance(0.01)//红石粉
    .addItemOutput(<minecraft:gunpowder>).setChance(0.01)//火药
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_2", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:gravel>,
    ])
    .addItemOutput(<minecraft:sand>).setChance(0.8)//沙子
    .addItemOutput(<minecraft:gravel>).setChance(0.5)//燧石
    .addItemOutput(<thermalfoundation:material>).setChance(0.07)//铁粉
    .addItemOutput(<thermalfoundation:material:1>).setChance(0.06)//金粉
    .addItemOutput(<thermalfoundation:material:64>).setChance(0.08)//铜粉
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_3", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <ore:dustSaltpeter>,
    ])
    .addItemOutput(<contenttweaker:jinshufen_13>)
    .addItemOutput(<contenttweaker:jinshufen_14>)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_4", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs(<mekanism:oreblock>)
    .addFluidInputs(<liquid:huaxue_56>*100)

    .addItemOutputs(<contenttweaker:jinshufen_5>*7)
    .addFluidOutputs(<liquid:huaxue_57>*1000)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_5", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs(<contenttweaker:jinshufen_6>*5)

    .addItemOutputs(<contenttweaker:jinshufen_7>*4)
    .addItemOutputs(<contenttweaker:jinshufen_8>)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_6", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs(<contenttweaker:jinshufen_8>*5)

    .addItemOutputs(<nuclearcraft:gem_dust:2>*2)
    .addItemOutputs(<thermalfoundation:material:1>*3)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_7", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs(<contenttweaker:jinshufen_10>*6)
    .addFluidInputs(<liquid:huaxue_60>*1200)

    .addItemOutputs(<thermalfoundation:material:70>*3)
    .addItemOutputs(<taiga:palladium_dust>*3)
    .addItemOutputs(<contenttweaker:jinshufen_11>*2)
    .addItemOutputs(<contenttweaker:jinshufen_5>)
    .addItemOutputs(<contenttweaker:jinshufen_8>*2)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_8", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs(<aoa3:scrap_metal>*9)

    .addItemOutputs(<jaopca:dust.rosite>*5)
    .addItemOutputs(<jaopca:dust.limonite>*5)
    .addItemOutputs(<thermalfoundation:material>)
    .addItemOutputs(<thermalfoundation:material:1>)
.build();
//液态空气
RecipeBuilder.newBuilder("xiaoxinglixinji_9", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs(<liquid:huaxue_48>*50000)

    .addGasOutput(<gas:qiti_33>*35000)
    .addGasOutput(<gas:oxygen>*11000)
    .addGasOutput(<gas:qiti_1>*2500)
    .addGasOutput(<gas:Helium>*1000)
    .addGasOutput(<gas:Argon>*500)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_10", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs(<jaopca:mekanism_dirty_dust.naquadah>)

    .addItemOutputs(<jaopca:dust.naquadah>)
    .addItemOutputs(<jaopca:dust.enrichednaquadah>).setChance(0.1)
    .addItemOutputs(<jaopca:dust.enrichednaquadah>).setChance(0.05)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_11", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs(<liquid:huaxue_63>*3000)

    .addItemOutputs(<contenttweaker:jinshufen_19>)
    .addFluidOutputs(<liquid:huaxue_52>*2000)
    .addGasOutput(<gas:Fluorine>*250)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_12", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs(<liquid:huaxue_65>*2000)

    .addItemOutputs(<contenttweaker:jinshufen_22>)
    .addItemOutputs(<contenttweaker:jinshufen_20>*2)
    .addFluidOutputs(<liquid:huaxue_54>*1000)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_13", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs(<draconicevolution:draconium_ore:1>)

    .addItemOutputs(<draconicevolution:draconium_dust>*2)
    .addItemOutputs(<jaopca:dust.antimony>).setChance(0.15)
    .addItemOutputs(<contenttweaker:jinshufen_21>).setChance(0.05)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_14", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs(<liquid:huaxue_67>*3000)

    .addItemOutputs(<contenttweaker:jinshufen_24>*6)
    .addFluidOutputs(<liquid:huaxue_53>*2000)
    .addGasOutput(<gas:Fluorine>*250)
.build();
RecipeBuilder.newBuilder("xiaoxinglixinji_15", "small_centrifuge", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs(<liquid:huaxue_66>*2000)

    .addItemOutputs(<contenttweaker:jinshufen_25>)
    .addItemOutputs(<contenttweaker:jinshufen_20>*2)
    .addFluidOutputs(<liquid:huaxue_55>*1000)
.build();
//=============================================================离心机==============================================================
//配方适配器
RecipeAdapterBuilder.create("centrifuge", "modularmachinery:small_centrifuge")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();
//=============================================================小型提取机==============================================================
RecipeBuilder.newBuilder("xiaoxingtiquji_1", "small_extractor", 100)
    .addEnergyPerTickInput(512)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <aoa3:skullbone_fragment>,
            <aoa3:chestbone_fragment>,
            <aoa3:legbone_fragment>,
            <aoa3:footbone_fragment>,
        ])
    )
    .addItemOutputs(<minecraft:dye:15>*5)
.build();
RecipeBuilder.newBuilder("xiaoxingtiquji_2", "small_extractor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <aoa3:unpowered_rune>*16,
    ])
    .addItemOutputs(<aoa3:runium_chunk>)
.build();
RecipeBuilder.newBuilder("xiaoxingtiquji_3", "small_extractor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <aoa3:charged_rune>*16,
    ])
    .addItemOutputs(<aoa3:charged_runium_chunk>)
.build();
RecipeBuilder.newBuilder("xiaoxingtiquji_5", "small_extractor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <aoa3:rusted_iron_ingot>,
    ])
    .addItemOutputs(<aoa3:scrap_metal>)
.build();
RecipeBuilder.newBuilder("xiaoxingtiquji_6", "small_extractor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <aoa3:gold_coin>,
    ])
    .addItemOutputs(<minecraft:gold_ingot>*10)
.build();
RecipeBuilder.newBuilder("xiaoxingtiquji_8", "small_extractor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <aoa3:copper_coin>,
    ])
    .addItemOutputs(<thermalfoundation:material:128>)
.build();
RecipeBuilder.newBuilder("xiaoxingtiquji_9", "small_extractor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <aoa3:silver_coin>,
    ])
    .addItemOutputs(<thermalfoundation:material:130>)
.build();

//=============================================================压缩机==============================================================

RecipeAdapterBuilder.create("duty_compressor", "nuclearcraft:pressurizer")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 1.25F, 1, false).build())
    .build();
//=============================================================重型压缩机==============================================================
RecipeBuilder.newBuilder("zxysj_1", "heavy_duty_compressor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <jaopca:dense_plate.steel>,//致密钢板
    <jaopca:dense_plate.aluminium>,
    <jaopca:dense_plate.bronze>,//致密青铜板
    ])
    .addItemOutputs(<galacticraftcore:heavy_plating>)
.build();
RecipeBuilder.newBuilder("zxysj_2", "heavy_duty_compressor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <galacticraftcore:heavy_plating>,
    <jaopca:dense_plate.enderium>,
    ])
    .addItemOutputs(<galacticraftplanets:item_basic_mars:3>)
.build();
RecipeBuilder.newBuilder("zxysj_3", "heavy_duty_compressor", 100)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <galacticraftplanets:item_basic_mars:3>,
    <galacticraftplanets:item_basic_mars:5>*9,
    ])
    .addItemOutputs(<galacticraftplanets:item_basic_asteroids:5>)
.build();
//=============================================================小型装配机==============================================================
//最大线程数 4
MachineModifier.setMaxThreads("small_manufacturing_machine", 4);
RecipeBuilder.newBuilder("xxzhizaoj_1", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <minecraft:diamond>,
    <appliedenergistics2:material:5>*2,
    <minecraft:redstone>,
    <minecraft:dye:4>,
    ])
    .addItemOutputs(<galacticraftcore:basic_item:12>*9)
.build();
RecipeBuilder.newBuilder("xxzhizaoj_2", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <actuallyadditions:item_crystal:2>,
    <appliedenergistics2:material:5>*4,
    <minecraft:redstone>*4,
    <minecraft:redstone_torch>*2,
    ])
    .addItemOutputs(<galacticraftcore:basic_item:13>*8)
.build();
RecipeBuilder.newBuilder("xxzhizaoj_3", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <jaopca:dust.cast__iron>,
    <appliedenergistics2:material:5>*2,
    <nuclearcraft:dust:8>,
    <galacticraftcore:basic_item:13>,
    ])
    .addItemOutputs(<galacticraftcore:basic_item:14>)
.build();
RecipeBuilder.newBuilder("xxzhizaoj_4", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <minecraft:diamond>,
    <appliedenergistics2:material:5>*2,
    <minecraft:redstone>,
    <galacticraftplanets:basic_item_venus:4>,
    ])
    .addItemOutputs(<galacticraftplanets:basic_item_venus:6>*3)
.build();
RecipeBuilder.newBuilder("xxzhizaoj_5", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <embers:aspectus_copper>,
    <extendedcrafting:material:14>,
    <thermalfoundation:material:320>*2,
    ])
    .addItemOutputs(<contenttweaker:mechanical_component_1>*2)
.build();
//真空管
RecipeBuilder.newBuilder("xxzhizaoj_6", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <immersiveengineering:stone_decoration:8>,
    <enderio:item_alloy_ingot:3>,
    <immersiveengineering:material:20>*2,
    <galacticraftcore:basic_item:13>,
    <thermalfoundation:material:325>,
    ])
    .addItemOutputs(<immersiveengineering:material:26>*2)
.build();
//镜面
RecipeBuilder.newBuilder("xxzhizaoj_7", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <minecraft:glass>*3,
    <galacticraftcore:basic_item:13>,
    ])
    .addItemOutputs(<solarflux:mirror>*3)
.build();
//红石接收线圈
RecipeBuilder.newBuilder("xxzhizaoj_8", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <minecraft:gold_ingot>,
    <enderio:item_alloy_ingot:3>,
    <immersiveengineering:material:21>,
    ])
    .addItemOutputs(<thermalfoundation:material:513>)
.build();
//红石传导线圈
RecipeBuilder.newBuilder("xxzhizaoj_9", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <thermalfoundation:material:161>,
    <enderio:item_alloy_ingot:3>,
    <immersiveengineering:material:21>,
    ])
    .addItemOutputs(<thermalfoundation:material:515>)
.build();
//红石传输线圈
RecipeBuilder.newBuilder("xxzhizaoj_10", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <thermalfoundation:material:130>,
    <enderio:item_alloy_ingot:3>,
    <immersiveengineering:material:21>,
    ])
    .addItemOutputs(<thermalfoundation:material:514>)
.build();
//红石传输线圈
RecipeBuilder.newBuilder("xxzhizaoj_11", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:dyeGreen>,
    <minecraft:glass>,
    <thermalfoundation:material>*2,
    ])
    .addItemOutputs(<immersiveengineering:stone_decoration:8>)
.build();
//机械零件
RecipeBuilder.newBuilder("xxzhizaoj_12", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <embers:aspectus_iron>,
    <extendedcrafting:material:14>*2,
    <thermalfoundation:material:32>*2,
    ])
    .addItemOutputs(<immersiveengineering:material:8>*2)
.build();
//小型装配线
RecipeBuilder.newBuilder("xxzhizaoj_13", "small_manufacturing_machine", 20)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <modularmachinery:blockcasing>*4,
    <thermalexpansion:frame:64>,
    <contenttweaker:robot_arm_lv2>,
    <contenttweaker:conveyor_module_lv2>*4,
    ])
    .addItemOutputs(<modularmachinery:small_assembler_line_controller>)
.build();
//=============================================================装配线==============================================================

RecipeAdapterBuilder.create("small_assembler_line", "modularmachinery:small_manufacturing_machine")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();
//机器框架
RecipeBuilder.newBuilder("xiaoxingzhuangpeixian_1", "small_assembler_line", 20)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalexpansion:frame:64>,
    <thermalfoundation:material:324>*2,
    <jaopca:plate.cast__iron>*4,
    <environmentaltech:connector>*2,
    ])
    .addFluidInputs(<liquid:lubricant>*1000)
    .addItemOutputs(<thermalexpansion:frame>)
.build();
//=============================================================小型采油机==============================================================
RecipeBuilder.newBuilder("xiaoxingcaiyouji_1", "small_oil_extraction_machine", 200)
    .addEnergyPerTickInput(512)
    .addFluidOutputs(<liquid:crude_oil>*1000)
.build();

//=============================================================蒸汽能源引擎==============================================================
RecipeBuilder.newBuilder("zhengqinengyuanyinq_1", "steam_energy_engine", 200)
    .addFluidPerTickInputs(<liquid:steam>*100)

    .addFluidPerTickOutputs(<liquid:water>*10)
    .addEnergyPerTickOutput(256)
.build();
//=============================================================小型锅炉==============================================================
RecipeBuilder.newBuilder("xiaoxingguolu_1", "small_boilers", 200)
    .addFluidInputs(<liquid:water>*1000)
    .addItemInputs([
    <ore:coal>,
    ])
    .addFluidPerTickOutputs(<liquid:steam>*100)
.build();
RecipeBuilder.newBuilder("xiaoxingguolu_2", "small_boilers", 1600)
    .addFluidInputs(<liquid:water>*10000)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <ore:blockCoal>,
            <ore:blockCharcoal>,
        ])
    )
    .addFluidPerTickOutputs(<liquid:steam>*100)
.build();
RecipeBuilder.newBuilder("xiaoxingguolu_3", "small_boilers", 400)
    .addFluidInputs(<liquid:water>*2000)
    .addItemInputs([
    <immersiveengineering:material:6>,
    ])
    .addFluidPerTickOutputs(<liquid:steam>*100)
.build();
RecipeBuilder.newBuilder("xiaoxingguolu_4", "small_boilers", 400)
    .addFluidInputs(<liquid:water>*2000)
    .addItemInputs([
    <thermalfoundation:material:802>,
    ])
    .addFluidPerTickOutputs(<liquid:steam>*100)
.build();
RecipeBuilder.newBuilder("xiaoxingguolu_5", "small_boilers", 3200)
    .addFluidInputs(<liquid:water>*20000)
    .addItemInputs([
    <thermalfoundation:storage_resource:1>,
    ])
    .addFluidPerTickOutputs(<liquid:steam>*100)
.build();
RecipeBuilder.newBuilder("xiaoxingguolu_6", "small_boilers", 3200)
    .addFluidInputs(<liquid:water>*20000)
    .addItemInputs([
    <immersiveengineering:stone_decoration:3>,
    ])
    .addFluidPerTickOutputs(<liquid:steam>*100)
.build();
//=============================================================裂变反应堆==============================================================
RecipeBuilder.newBuilder("liebianfanyingdui_1", "fission_reactor", 1)
    .addFluidInputs(<liquid:water>*10000)
    .addGasInputs(<gas:fissilefuel>*52)

    .addFluidOutputs(<liquid:steam>*10000)
    .addGasOutput(<gas:nuclearwaste>*52)
    .build();
RecipeBuilder.newBuilder("liebianfanyingdui_2", "fission_reactor", 1)
    .addFluidInputs(<liquid:emergency_coolant>*1000)
    .addGasInputs(<gas:fissilefuel>*520)

    .addFluidOutputs(<liquid:emergency_coolant_heated>*1000)
    .addGasOutput(<gas:nuclearwaste>*520)
    .build();

//=============================================================蒸汽研磨机==============================================================
//最大线程
MachineModifier.setMaxThreads("steam_grinder", 16);
RecipeBuilder.newBuilder("zhengqiyanmoji_1", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreAbyssalnite>,
    ])
    .addItemOutputs(<acintegration:dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_2", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <taiga:abyssum_ore>,
    ])
    .addItemOutputs(<taiga:abyssum_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_3", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreVibranium>,
    ])
    .addItemOutputs(<taiga:vibranium_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_4", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreVarsium>,
    ])
    .addItemOutputs(<jaopca:dust.varsium>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_5", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreValyrium>,
    ])
    .addItemOutputs(<taiga:valyrium_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_6", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreUru>,
    ])
    .addItemOutputs(<taiga:uru_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_7", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreUmbrium>,
    ])
    .addItemOutputs(<jaopca:dust.umbrium>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_8", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreTwilit>,
    ])
    .addItemOutputs(<jaopca:dust.twilit>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_9", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreTitanium>,
    ])
    .addItemOutputs(<galacticraftplanets:item_basic_asteroids:9>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_10", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreTiberium>,
    ])
    .addItemOutputs(<taiga:tiberium_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_11", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreThorium>,
    ])
    .addItemOutputs(<nuclearcraft:dust:3>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_12", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreSnow>,
    ])
    .addItemOutputs(<jaopca:dust.snow>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_13", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreMithril>,
    ])
    .addItemOutputs(<thermalfoundation:material:72>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_14", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreMystite>,
    ])
    .addItemOutputs(<jaopca:dust.mystite>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_15", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreNickel>,
    ])
    .addItemOutputs(<thermalfoundation:material:69>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_16", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreOsmium>,
    ])
    .addItemOutputs(<mekanism:dust:2>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_17", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreOsram>,
    ])
    .addItemOutputs(<taiga:osram_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_18", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreOvium>,
    ])
    .addItemOutputs(<taiga:ovium_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_19", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:orePalladium>,
    ])
    .addItemOutputs(<taiga:palladium_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_21", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:orePrometheum>,
    ])
    .addItemOutputs(<taiga:prometheum_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_22", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreRosite>,
    ])
    .addItemOutputs(<jaopca:dust.rosite>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_23", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreScarlet>,
    ])
    .addItemOutputs(<jaopca:dust.scarlet>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_24", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreShyrestone>,
    ])
    .addItemOutputs(<jaopca:dust.shyrestone>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_25", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreMeteoricIron>,
    ])
    .addItemOutputs(<jaopca:dust.meteoric_iron>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_26", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreMagnesium>,
    ])
    .addItemOutputs(<nuclearcraft:dust:7>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_27", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreMagicMineral>,
    ])
    .addItemOutputs(<jaopca:dust.magic_mineral>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_28", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreLyon>,
    ])
    .addItemOutputs(<jaopca:dust.lyon>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_29", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreLithium>,
    ])
    .addItemOutputs(<taiga:dilithium_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_30", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreLiquifiedCoralium>,
    ])
    .addItemOutputs(<acintegration:dust:1>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_31", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreLimonite>,
    ])
    .addItemOutputs(<jaopca:dust.limonite>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_32", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreLieyang>,
    ])
    .addItemOutputs(<jaopca:dust.lieyang>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_33", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreKarmesine>,
    ])
    .addItemOutputs(<taiga:karmesine_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_34", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreJauxum>,
    ])
    .addItemOutputs(<taiga:jauxum_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_35", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreIridium>,
    ])
    .addItemOutputs(<thermalfoundation:material:71>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_36", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreGhoulish>,
    ])
    .addItemOutputs(<jaopca:dust.ghoulish>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_37", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreAurorium>,
    ])
    .addItemOutputs(<taiga:aurorium_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_38", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreBaronyte>,
    ])
    .addItemOutputs(<jaopca:dust.baronyte>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_39", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreBlazium>,
    ])
    .addItemOutputs(<jaopca:dust.blazium>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_40", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreBoron>,
    ])
    .addItemOutputs(<nuclearcraft:dust:5>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_41", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreCelestial>,
    ])
    .addItemOutputs(<jaopca:dust.celestial>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_42", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreCobalt>,
    ])
    .addItemOutputs(<qmd:dust:4>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_43", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreDraconium>,
    ])
    .addItemOutputs(<draconicevolution:draconium_dust>*7)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_44", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreDuranite>,
    ])
    .addItemOutputs(<taiga:duranite_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_45", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreEezo>,
    ])
    .addItemOutputs(<taiga:eezo_dust>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_46", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreElecanium>,
    ])
    .addItemOutputs(<jaopca:dust.elecanium>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_47", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreEmberstone>,
    ])
    .addItemOutputs(<jaopca:dust.emberstone>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_48", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreGhastly>,
    ])
    .addItemOutputs(<jaopca:dust.ghastly>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_49", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreAstralStarmetal>,
    ])
    .addItemOutputs(<astralsorcery:itemcraftingcomponent:2>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_50", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreArdite>,
    ])
    .addItemOutputs(<jaopca:dust.ardite>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_51", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreAluminum>,
    ])
    .addItemOutputs(<thermalfoundation:material:68>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_52", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreCoal>,
    ])
    .addItemOutputs(<minecraft:coal>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_53", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreIron>,
    ])
    .addItemOutputs(<thermalfoundation:material>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_54", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreGold>,
    ])
    .addItemOutputs(<thermalfoundation:material:1>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_55", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <ore:oreCopper>,
    ])
    .addItemOutputs(<thermalfoundation:material:64>*3)
    .build();
RecipeBuilder.newBuilder("zhengqiyanmoji_56", "steam_grinder", 600)
    .addFluidInputs(<liquid:steam>*1000)
    .addItemInputs([
    <additions:naquadah_ore>,
    ])
    .addItemOutputs(<jaopca:mekanism_clump.naquadah>*3)
    .build();
//=============================================================小型研磨机==============================================================
//最大线程
MachineModifier.setMaxThreads("small_grinding_machine", 16);
RecipeBuilder.newBuilder("xiaoxingyanmoji_1", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreAbyssalnite>,
    ])
    .addItemOutputs(<acintegration:dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_2", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <taiga:abyssum_ore>,
    ])
    .addItemOutputs(<taiga:abyssum_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_3", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreVibranium>,
    ])
    .addItemOutputs(<taiga:vibranium_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_4", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreVarsium>,
    ])
    .addItemOutputs(<jaopca:dust.varsium>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_5", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreValyrium>,
    ])
    .addItemOutputs(<taiga:valyrium_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_6", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreUru>,
    ])
    .addItemOutputs(<taiga:uru_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_7", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreUmbrium>,
    ])
    .addItemOutputs(<jaopca:dust.umbrium>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_8", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreTwilit>,
    ])
    .addItemOutputs(<jaopca:dust.twilit>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_9", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreTitanium>,
    ])
    .addItemOutputs(<galacticraftplanets:item_basic_asteroids:9>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_10", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreTiberium>,
    ])
    .addItemOutputs(<taiga:tiberium_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_11", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreThorium>,
    ])
    .addItemOutputs(<nuclearcraft:dust:3>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_12", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreSnow>,
    ])
    .addItemOutputs(<jaopca:dust.snow>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_13", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreMithril>,
    ])
    .addItemOutputs(<thermalfoundation:material:72>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_14", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreMystite>,
    ])
    .addItemOutputs(<jaopca:dust.mystite>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_15", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreNickel>,
    ])
    .addItemOutputs(<thermalfoundation:material:69>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_16", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreOsmium>,
    ])
    .addItemOutputs(<mekanism:dust:2>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_17", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreOsram>,
    ])
    .addItemOutputs(<taiga:osram_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_18", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreOvium>,
    ])
    .addItemOutputs(<taiga:ovium_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_19", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:orePalladium>,
    ])
    .addItemOutputs(<taiga:palladium_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_21", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:orePrometheum>,
    ])
    .addItemOutputs(<taiga:prometheum_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_22", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreRosite>,
    ])
    .addItemOutputs(<jaopca:dust.rosite>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_23", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreScarlet>,
    ])
    .addItemOutputs(<jaopca:dust.scarlet>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_24", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreShyrestone>,
    ])
    .addItemOutputs(<jaopca:dust.shyrestone>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_25", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreMeteoricIron>,
    ])
    .addItemOutputs(<jaopca:dust.meteoric_iron>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_26", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreMagnesium>,
    ])
    .addItemOutputs(<nuclearcraft:dust:7>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_27", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreMagicMineral>,
    ])
    .addItemOutputs(<jaopca:dust.magic_mineral>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_28", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreLyon>,
    ])
    .addItemOutputs(<jaopca:dust.lyon>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_29", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreLithium>,
    ])
    .addItemOutputs(<taiga:dilithium_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_30", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreLiquifiedCoralium>,
    ])
    .addItemOutputs(<acintegration:dust:1>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_31", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreLimonite>,
    ])
    .addItemOutputs(<jaopca:dust.limonite>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_32", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreLieyang>,
    ])
    .addItemOutputs(<jaopca:dust.lieyang>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_33", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreKarmesine>,
    ])
    .addItemOutputs(<taiga:karmesine_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_34", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreJauxum>,
    ])
    .addItemOutputs(<taiga:jauxum_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_35", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreIridium>,
    ])
    .addItemOutputs(<thermalfoundation:material:71>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_36", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreGhoulish>,
    ])
    .addItemOutputs(<jaopca:dust.ghoulish>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_37", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreAurorium>,
    ])
    .addItemOutputs(<taiga:aurorium_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_38", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreBaronyte>,
    ])
    .addItemOutputs(<jaopca:dust.baronyte>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_39", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreBlazium>,
    ])
    .addItemOutputs(<jaopca:dust.blazium>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_40", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreBoron>,
    ])
    .addItemOutputs(<nuclearcraft:dust:5>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_41", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreCelestial>,
    ])
    .addItemOutputs(<jaopca:dust.celestial>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_42", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreCobalt>,
    ])
    .addItemOutputs(<qmd:dust:4>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_43", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreDraconium>,
    ])
    .addItemOutputs(<draconicevolution:draconium_dust>*7)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_44", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreDuranite>,
    ])
    .addItemOutputs(<taiga:duranite_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_45", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreEezo>,
    ])
    .addItemOutputs(<taiga:eezo_dust>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_46", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreElecanium>,
    ])
    .addItemOutputs(<jaopca:dust.elecanium>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_47", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreEmberstone>,
    ])
    .addItemOutputs(<jaopca:dust.emberstone>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_48", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreGhastly>,
    ])
    .addItemOutputs(<jaopca:dust.ghastly>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_49", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreAstralStarmetal>,
    ])
    .addItemOutputs(<astralsorcery:itemcraftingcomponent:2>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_50", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreArdite>,
    ])
    .addItemOutputs(<jaopca:dust.ardite>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_51", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreAluminum>,
    ])
    .addItemOutputs(<thermalfoundation:material:68>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_52", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreCoal>,
    ])
    .addItemOutputs(<minecraft:coal>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_53", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreIron>,
    ])
    .addItemOutputs(<thermalfoundation:material>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_54", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreGold>,
    ])
    .addItemOutputs(<thermalfoundation:material:1>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_55", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <ore:oreCopper>,
    ])
    .addItemOutputs(<thermalfoundation:material:64>*3)
    .build();
RecipeBuilder.newBuilder("xiaoxingyanmoji_56", "small_grinding_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <additions:naquadah_ore>,
    ])
    .addItemOutputs(<jaopca:mekanism_clump.naquadah>*3)
    .build();
//=============================================================星能闪耀祭坛==============================================================
//配方适配器
RecipeAdapterBuilder.create("shining_altar", "modularmachinery:starlight_infusion")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
.build();
RecipeBuilder.newBuilder("shining_altar_01", "shining_altar", 100)
    .addStarlightInput(1000)
    .addItemInputs([
    <botania:lens>,
    <botania:manaresource:7>,
    <botania:elfglass>,
    ])
    .addFluidInputs(<liquid:astralsorcery.liquidstarlight>*500)
    .addItemOutputs(<botania:lens:21>)
.build();

//=============================================================血之祭坛==============================================================
RecipeBuilder.newBuilder("board_assembly_1", "board_assembly", 200)
    .addLifeEssenceInput(50, true)
    .addInputs([
        <bloodmagic:lava_crystal> * 1,
    ])
    .addOutputs(<bloodmagic:activation_crystal> * 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_2", "board_assembly", 200)
    .addLifeEssenceInput(1000, true)
    .addInputs([
        <minecraft:glowstone> * 1,
    ])
    .addOutputs(<bloodmagic:inscription_tool:6>.withTag({uses: 10}) * 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_3", "board_assembly", 200)
    .addLifeEssenceInput(10, true)
    .addInputs([
        <botania:manaresource:1> * 1,
    ])
    .addOutputs(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"})* 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_4", "board_assembly", 200)
    .addLifeEssenceInput(10, true)
    .addInputs([
        <bloodmagic:slate> * 1,
    ])
    .addOutputs(<bloodmagic:slate:1>* 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_5", "board_assembly", 200)
    .addLifeEssenceInput(150, true)
    .addInputs([
        <tconevo:material> * 1,
    ])
    .addOutputs(<tconevo:metal:25>* 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_6", "board_assembly", 200)
    .addLifeEssenceInput(25, true)
    .addInputs([
        <bloodmagic:slate:1> * 1,
    ])
    .addOutputs(<bloodmagic:slate:2>* 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_7", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([
        <modularmachinery:blockfluidoutputhatch> * 1,
    ])
    .addOutputs(<modularmachinery:blocklifeessenceprovideroutput>* 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_8", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([
        <minecraft:book> * 1,
    ])
    .addOutputs(<bloodmagic:sanguine_book>* 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_9", "board_assembly", 200)
    .addLifeEssenceInput(25, true)
    .addInputs([
        <minecraft:redstone_block> * 1,
    ])
    .addOutputs(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"})* 1)
    .build();
    RecipeBuilder.newBuilder("board_assembly_10", "board_assembly", 200)
    .addLifeEssenceInput(400, true)
    .addInputs([
        <minecraft:nether_star>,
    ])
    .addOutputs(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_11", "board_assembly", 200)
    .addLifeEssenceInput(150, true)
    .addInputs([<bloodmagic:slate:3>,])
    .addOutputs(<bloodmagic:slate:4>)
    .build();
    RecipeBuilder.newBuilder("board_assembly_12", "board_assembly", 200)
    .addLifeEssenceInput(10, true)
    .addInputs([<minecraft:ender_pearl>,])
    .addOutputs(<bloodmagic:teleposition_focus>)
    .build();
    RecipeBuilder.newBuilder("board_assembly_13", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([<minecraft:lapis_block>,])
    .addOutputs(<bloodmagic:inscription_tool:1>.withTag({uses: 10}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_14", "board_assembly", 200)
    .addLifeEssenceInput(1000, true)
    .addInputs([<bloodmagic:decorative_brick:2>,])
    .addOutputs(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_15", "board_assembly", 200)
    .addLifeEssenceInput(50, true)
    .addInputs([<deepmoblearning:glitch_infused_ingot>,])
    .addOutputs(<deepmoblearningbm:blood_infused_glitch_ingot>)
    .build();
    RecipeBuilder.newBuilder("board_assembly_16", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([<modularmachinery:blockfluidinputhatch>,])
    .addOutputs(<modularmachinery:blocklifeessenceproviderinput>)
    .build();
    RecipeBuilder.newBuilder("board_assembly_17", "board_assembly", 200)
    .addLifeEssenceInput(125, true)
    .addInputs([<minecraft:gold_block>,])
    .addOutputs(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_18", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([<minecraft:ghast_tear>,])
    .addOutputs(<bloodmagic:inscription_tool:4>.withTag({uses: 10}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_19", "board_assembly", 200)
    .addLifeEssenceInput(10, true)
    .addInputs([<minecraft:coal_block>,])
    .addOutputs(<bloodmagic:inscription_tool:5>.withTag({uses: 10}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_20", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([<minecraft:bucket>,])
    .addOutputs(<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_21", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([<minecraft:obsidian>,])
    .addOutputs(<bloodmagic:inscription_tool:3>.withTag({uses: 10}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_22", "board_assembly", 200)
    .addLifeEssenceInput(75, true)
    .addInputs([<bloodmagic:slate:2>,])
    .addOutputs(<bloodmagic:slate:3>)
    .build();
    RecipeBuilder.newBuilder("board_assembly_23", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([<minecraft:magma_cream>,])
    .addOutputs(<bloodmagic:inscription_tool:2>.withTag({uses: 10}))
    .build();
    RecipeBuilder.newBuilder("board_assembly_24", "board_assembly", 200)
    .addLifeEssenceInput(5, true)
    .addInputs([<botania:livingrock>,])
    .addOutputs(<bloodmagic:slate>)
    .build();
    RecipeBuilder.newBuilder("board_assembly_25", "board_assembly", 200)
    .addLifeEssenceInput(15, true)
    .addInputs([<minecraft:iron_sword>,])
    .addOutputs(<bloodmagic:dagger_of_sacrifice>)
    .build();
    RecipeBuilder.newBuilder("board_assembly_26", "board_assembly", 200)
    .addLifeEssenceInput(50, true)
    .addInputs([<bloodmagic:teleposition_focus>,])
    .addOutputs(<bloodmagic:teleposition_focus:1>)
    .build();
    RecipeBuilder.newBuilder("board_assembly_27", "board_assembly", 200)
    .addLifeEssenceInput(200, true)
    .addInputs([<bloodmagic:blood_shard>,])
    .addOutputs(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}))
    .build();
//=============================================================四联血之祭坛工厂==============================================================
//配方适配器
RecipeAdapterBuilder.create("board_assembly_4", "modularmachinery:board_assembly")
.build();
//最大线程数
MachineModifier.setMaxThreads("board_assembly_4", 4);