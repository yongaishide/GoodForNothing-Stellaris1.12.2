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
// =============================================================砖制合金炉控制器==============================================================
//最大线程数 4
MachineModifier.setMaxThreads("zhuanzhihejinlu", 4);
RecipeBuilder.newBuilder("zzhjl_01", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <thermalfoundation:material:161>,
    <thermalfoundation:material:162>,
    <thermalfoundation:material:163>,
    ])
    .addItemOutputs(<additions:modular_alloy>*3)
.build();
RecipeBuilder.newBuilder("zzhjl_02", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <thermalfoundation:material:161>,
    <minecraft:redstone>*2,
    ])
    .addItemOutputs(<redstonearsenal:material:32>)
.build();
//玛玉灵
RecipeBuilder.newBuilder("zzhjl_1", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <tconstruct:ingots>,
            <qmd:dust:4>,
        ])
    )
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <tconstruct:ingots:1>,
            <jaopca:dust.ardite>,
        ])
    )
    .addItemOutputs(<tconstruct:ingots:2>)
.build();
//殷钢锭
RecipeBuilder.newBuilder("zzhjl_2", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <minecraft:iron_ingot>*2,
            <thermalfoundation:material>*2,
        ])
    )
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:133>,
            <thermalfoundation:material:69>,
        ])
    )
    .addItemOutputs(<thermalfoundation:material:162>*3)
.build();
//康铜锭
RecipeBuilder.newBuilder("zzhjl_3", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:128>,
            <thermalfoundation:material:133>,
        ])
    )
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:133>,
            <thermalfoundation:material:69>,
        ])
    )
    .addItemOutputs(<thermalfoundation:material:164>*2)
.build();
//琥珀金锭
RecipeBuilder.newBuilder("zzhjl_4", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <minecraft:gold_ingot>,
            <thermalfoundation:material:1>,
        ])
    )
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:130>,
            <thermalfoundation:material:66>,
        ])
    )
    .addItemOutputs(<thermalfoundation:material:161>*2)
.build();
//青铜锭
RecipeBuilder.newBuilder("zzhjl_5", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:128>*3,
            <thermalfoundation:material:64>*3,
        ])
    )
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:129>,
            <thermalfoundation:material:65>,
        ])
    )
    .addItemOutputs(<thermalfoundation:material:163>*4)
.build();
//流明锭
RecipeBuilder.newBuilder("zzhjl_6", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:129>*3,
            <thermalfoundation:material:65>*3,
        ])
    )
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:130>,
            <thermalfoundation:material:66>,
        ])
    )
    .addItemInputs([
    <minecraft:glowstone_dust>,
    ])
    .addItemOutputs(<thermalfoundation:material:166>*4)
.build();
//红石合金锭
RecipeBuilder.newBuilder("zzhjl_7", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <minecraft:redstone>,
    <refinedstorage:quartz_enriched_iron>,
    <appliedenergistics2:material:5>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:3>)
.build();
//工业高炉MK1
RecipeBuilder.newBuilder("zzhjl_8", "zhuanzhihejinlu", 2000)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <modularmachinery:blockcasing>*4,
    <contenttweaker:emitter_lv1>,
    <nuclearcraft:ingot:8>*3,
    <fd:blast_furnace>,
    ])
    .addItemOutputs(<modularmachinery:industrial_blast_furnace_mk1_controller>)
.build();
//黑铁锭
RecipeBuilder.newBuilder("zzhjl_9", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <minecraft:iron_ingot>,
            <thermalfoundation:material>,
        ])
    )
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <ore:coal>,
            <thermalfoundation:material:769>,
            <thermalfoundation:material:768>,
        ])
    )
    .addItemOutputs(<extendedcrafting:material>)
.build();
//玄钢
RecipeBuilder.newBuilder("zzhjl_10", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:160>,
            <thermalfoundation:material:96>,
        ])
    )
    .addItemInputs([
    <minecraft:obsidian>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:6>)
.build();
//硬化玻璃
RecipeBuilder.newBuilder("zzhjl_11", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <appliedenergistics2:quartz_glass>,
    <thermalfoundation:material:67>,
    <thermalfoundation:material:770>*2,
    ])
    .addItemOutputs(<thermalfoundation:glass:3>)
.build();
RecipeBuilder.newBuilder("zzhjl_12", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <minecraft:glass>*2,
    <minecraft:sand>,
    ])
    .addItemOutputs(<enderio:block_fused_glass>*2)
.build();
RecipeBuilder.newBuilder("zzhjl_13", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <minecraft:iron_ingot>,
    <minecraft:ender_pearl>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:5>)
.build();
RecipeBuilder.newBuilder("zzhjl_14", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:karmesine_ingot>,
    <taiga:ovium_ingot>,
    <taiga:jauxum_ingot>,
    ])
    .addItemOutputs(<taiga:terrax_ingot>*2)
.build();
RecipeBuilder.newBuilder("zzhjl_15", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:abyssum_ingot>,
    <taiga:prometheum_ingot>,
    <taiga:duranite_ingot>*3,
    ])
    .addItemOutputs(<taiga:imperomite_ingot>*2)
.build();
RecipeBuilder.newBuilder("zzhjl_16", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:osram_ingot>,
    <taiga:abyssum_ingot>,
    <taiga:proxii_ingot>*3,
    ])
    .addItemOutputs(<taiga:nucleum_ingot>*3)
.build();
RecipeBuilder.newBuilder("zzhjl_17", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:eezo_ingot>*2,
    <taiga:osram_ingot>*2,
    <taiga:abyssum_ingot>*2,
    <taiga:obsidiorite_ingot>*9,
    ])
    .addItemOutputs(<taiga:iox_ingot>)
.build();
RecipeBuilder.newBuilder("zzhjl_18", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:osram_ingot>,
    <taiga:duranite_ingot>,
    <taiga:palladium_ingot>*3,
    ])
    .addItemOutputs(<taiga:niob_ingot>*3)
.build();
RecipeBuilder.newBuilder("zzhjl_19", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:eezo_ingot>,
    <taiga:prometheum_ingot>*3,
    <taiga:palladium_ingot>*3,
    ])
    .addItemOutputs(<taiga:proxii_ingot>*3)
.build();
RecipeBuilder.newBuilder("zzhjl_20", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:eezo_ingot>,
    <taiga:triberium_ingot>*2,
    <minecraft:obsidian>*4,
    ])
    .addItemOutputs(<taiga:proxii_ingot>*4)
.build();
RecipeBuilder.newBuilder("zzhjl_21", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:abyssum_ingot>,
    <taiga:triberium_ingot>*3,
    <minecraft:obsidian>*3,
    ])
    .addItemOutputs(<taiga:fractum_ingot>*2)
.build();
RecipeBuilder.newBuilder("zzhjl_22", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:dilithium_ingot>*2,
    <taiga:tiberium_ingot>*5,
    ])
    .addItemOutputs(<taiga:triberium_ingot>)
.build();
RecipeBuilder.newBuilder("zzhjl_23", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <taiga:nucleum_ingot>,
    <taiga:tiberium_ingot>*2,
    <taiga:uru_ingot>*2,
    ])
    .addItemOutputs(<taiga:solarium_ingot>*2)
.build();
RecipeBuilder.newBuilder("zzhjl_24", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <minecraft:iron_ingot>*2,
    <minecraft:quartz>*5,
    ])
    .addItemOutputs(<refinedstorage:quartz_enriched_iron>*2)
.build();
RecipeBuilder.newBuilder("zzhjl_25", "zhuanzhihejinlu", 5760)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <thermalfoundation:storage_alloy:1>,
    <thermalfoundation:storage_alloy:2>,
    <thermalfoundation:storage_alloy:3>,
    ])
    .addItemOutputs(<jaopca:block.modular_alloy>*3)
.build();
RecipeBuilder.newBuilder("zzhjl_26", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <immersiveengineering:material:8>*2,
    <thermalfoundation:material:133>,
    ])
    .addItemOutputs(<contenttweaker:mechanical_component_4>*2)
.build();
RecipeBuilder.newBuilder("zzhjl_27", "zhuanzhihejinlu", 640)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <contenttweaker:mechanical_component_1>*3,
    <thermalfoundation:material:129>,
    ])
    .addItemOutputs(<contenttweaker:mechanical_component_3>*3)
.build();



//=============================================================钢制合金炉==============================================================
//配方适配器
RecipeAdapterBuilder.create("steel_alloy_furnace", "modularmachinery:zhuanzhihejinlu")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();

RecipeBuilder.newBuilder("gzhjl_1", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:iron_ingot>,
    <minecraft:gravel>,
    <minecraft:clay_ball>,
    <ore:cobblestone>,
    ])
    .addItemOutputs(<enderio:item_alloy_endergy_ingot>)
.build();
RecipeBuilder.newBuilder("gzhjl_2", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:item_material:51>,
    <thermalexpansion:frame>,
    <jaopca:plate.lead_platinum>*4,
    <contenttweaker:mechanical_component_6>,
    <contenttweaker:dianluban_3>,
    ])
    .addItemOutputs(<enderio:item_material:1>)
.build();
RecipeBuilder.newBuilder("gzhjl_3", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:block_fused_glass>,
    <minecraft:glowstone_dust>*4,
    ])
    .addItemOutputs(<enderio:block_enlightened_fused_glass>)
.build();
RecipeBuilder.newBuilder("gzhjl_4", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:block_fused_glass>,
    <ore:dyeBlack>*2,
    ])
    .addItemOutputs(<enderio:block_dark_fused_glass>)
.build();
RecipeBuilder.newBuilder("gzhjl_5", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:item_material:46>*6,
    <ore:slimeball>,
    ])
    .addItemOutputs(<enderio:item_material:48>)
.build();
RecipeBuilder.newBuilder("gzhjl_6", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:item_material:47>*4,
    <ore:slimeball>,
    ])
    .addItemOutputs(<enderio:item_material:49>)
.build();
RecipeBuilder.newBuilder("gzhjl_7", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <ore:dustWheat>*3,
    <ore:egg>,
    ])
    .addItemOutputs(<enderio:item_material:70>)
.build();
RecipeBuilder.newBuilder("gzhjl_8", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:item_material:20>,
    <immersiveengineering:material:17>,
    ])
    .addItemOutputs(<enderio:item_material:75>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_9", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:glowstone_dust>,
    <minecraft:clay_ball>,
    ])
    .addItemOutputs(<enderio:item_material:76>)
.build();
RecipeBuilder.newBuilder("gzhjl_10", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:clay_ball>*6,
    <ore:ingotBrickNether>,
    <minecraft:nether_wart>*4,
    ])
    .addItemOutputs(<enderio:item_material:72>)
.build();
RecipeBuilder.newBuilder("gzhjl_11", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <immersiveengineering:material:17>*2,
    <ore:slimeball>,
    ])
    .addItemOutputs(<enderio:item_material:50>)
.build();
RecipeBuilder.newBuilder("gzhjl_12", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:131>*3,
            <thermalfoundation:material:67>*3,
        ])
    )
    .addIngredientArrayInput(
        IngredientArrayBuilder.newBuilder()
        .addIngredients([
            <thermalfoundation:material:134>,
        ])
    )
    .addItemInputs([
    <minecraft:ender_pearl>*4,
    ])
    .addItemOutputs(<enderio:item_material:39>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_13", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:wool>,
    <thermalfoundation:material:65>,
    ])
    .addItemOutputs(<enderio:block_industrial_insulation>)
.build();
RecipeBuilder.newBuilder("gzhjl_14", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:iron_ingot>,
    <nuclearcraft:compound:2>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:5>)
.build();
RecipeBuilder.newBuilder("gzhjl_15", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:gold_ingot>,
    <nuclearcraft:compound:2>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:1>)
.build();
RecipeBuilder.newBuilder("gzhjl_16", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:130>,
    <nuclearcraft:compound:2>,
    ])
    .addItemOutputs(<enderio:item_alloy_endergy_ingot:5>)
.build();
RecipeBuilder.newBuilder("gzhjl_17", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:item_alloy_ingot:1>,
    <minecraft:ender_pearl>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:2>)
.build();
RecipeBuilder.newBuilder("gzhjl_18", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:160>,
    <appliedenergistics2:material:5>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot>)
.build();
RecipeBuilder.newBuilder("gzhjl_19", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:166>,
    <thermalfoundation:material:164>,
    ])
    .addItemOutputs(<embers:ingot_dawnstone>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_20", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:iron_ingot>,
    <minecraft:ender_pearl>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:5>)
.build();
RecipeBuilder.newBuilder("gzhjl_21", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:iron_ingot>,
    <minecraft:redstone>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:4>)
.build();
RecipeBuilder.newBuilder("gzhjl_22", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:iron_ingot>,
    <thermalfoundation:material:131>*2,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:9>*3)
.build();
RecipeBuilder.newBuilder("gzhjl_23", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:gold_ingot>,
    <enderio:item_material:36>,
    ])
    .addItemOutputs(<enderio:item_alloy_endergy_ingot:1>)
.build();
RecipeBuilder.newBuilder("gzhjl_24", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <industrialforegoing:pink_slime_ingot>,
    <enderio:item_material:36>,
    ])
    .addItemOutputs(<enderio:item_alloy_endergy_ingot:4>)
.build();
RecipeBuilder.newBuilder("gzhjl_25", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <nuclearcraft:alloy:6>,
    <nuclearcraft:ingot:6>,
    ])
    .addItemOutputs(<nuclearcraft:alloy:1>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_26", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <nuclearcraft:ingot:5>,
    <thermalfoundation:material:160>,
    ])
    .addItemOutputs(<nuclearcraft:alloy:6>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_27", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thaumcraft:ingot:2>*6,
    <thermalfoundation:material:132>,
    <tconstruct:ingots>,
    ])
    .addItemOutputs(<additions:cobalt_brass_ingot>*8)
.build();
RecipeBuilder.newBuilder("gzhjl_28", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <appliedenergistics2:quartz_glass>,
    <thermalfoundation:material:770>*2,
    ])
    .addItemOutputs(<enderio:block_fused_quartz>)
.build();
RecipeBuilder.newBuilder("gzhjl_29", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <taiga:aurorium_ingot>*2,
    <taiga:terrax_ingot>*3,
    ])
    .addItemOutputs(<taiga:astrium_ingot>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_30", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <taiga:triberium_ingot>*3,
    <taiga:fractum_ingot>,
    <taiga:seismum_ingot>,
    <taiga:osram_ingot>,
    ])
    .addItemOutputs(<taiga:dyonite_ingot>*3)
.build();
RecipeBuilder.newBuilder("gzhjl_32", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <taiga:terrax_ingot>,
    <taiga:palladium_ingot>,
    ])
    .addItemOutputs(<taiga:lumix_ingot>)
.build();
RecipeBuilder.newBuilder("gzhjl_33", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <taiga:aurorium_ingot>*3,
    <tconstruct:ingots:1>*2,
    ])
    .addItemOutputs(<taiga:violium_ingot>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_35", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <tconstruct:ingots>*3,
    <taiga:terrax_ingot>*2,
    ])
    .addItemOutputs(<taiga:tritonite_ingot>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_36", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <tconstruct:ingots:1>*2,
    <taiga:terrax_ingot>*2,
    <taiga:osram_ingot>,
    ])
    .addItemOutputs(<taiga:ignitz_ingot>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_37", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <taiga:uru_ingot>*3,
    <taiga:valyrium_ingot>*3,
    <taiga:eezo_ingot>,
    ])
    .addItemOutputs(<taiga:yrdeen_ingot>*3)
.build();
RecipeBuilder.newBuilder("gzhjl_38", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <taiga:uru_ingot>*3,
    <taiga:valyrium_ingot>*3,
    <taiga:osram_ingot>,
    ])
    .addItemOutputs(<taiga:yrdeen_ingot>*3)
.build();
RecipeBuilder.newBuilder("gzhjl_39", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <taiga:uru_ingot>*3,
    <taiga:valyrium_ingot>*3,
    <taiga:abyssum_ingot>,
    ])
    .addItemOutputs(<taiga:yrdeen_ingot>*3)
.build();
RecipeBuilder.newBuilder("gzhjl_40", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <nuclearcraft:ingot:8>*2,
    <minecraft:diamond>,
    ])
    .addItemOutputs(<nuclearcraft:alloy:2>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_40", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:131>*3,
    <thermalfoundation:material:134>,
    ])
    .addItemOutputs(<nuclearcraft:alloy:9>*4)
.build();
RecipeBuilder.newBuilder("gzhjl_41", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:132>*3,
    <thermalfoundation:material:128>,
    ])
    .addItemOutputs(<tconstruct:ingots:5>*4)
.build();
RecipeBuilder.newBuilder("gzhjl_42", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:1025>*4,
    <additions:snow_ingot>,
    ])
    .addItemOutputs(<additions:extremely_cold_ingot>)
.build();
RecipeBuilder.newBuilder("gzhjl_43", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:167>,
    <additions:extremely_cold_ingot>,
    ])
    .addItemOutputs(<redstonerepository:material:1>)
.build();
RecipeBuilder.newBuilder("gzhjl_44", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderutilities:enderpart:1>,
    <thermalfoundation:material:167>,
    <enderio:item_material:37>,
    ])
    .addItemOutputs(<enderutilities:enderpart:2>*2)
.build();
RecipeBuilder.newBuilder("gzhjl_45", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderutilities:enderpart>,
    <minecraft:ender_eye>,
    <minecraft:gold_ingot>*4,

    ])
    .addItemOutputs(<enderutilities:enderpart:1>)
.build();
RecipeBuilder.newBuilder("gzhjl_46", "steel_alloy_furnace", 320)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:item_alloy_ingot:8>,
    <enderio:item_alloy_ingot:5>,
    <minecraft:ender_pearl>*4,

    ])
    .addItemOutputs(<enderutilities:enderpart>)
.build();

//=============================================================化工合金炉==============================================================
//配方适配器
RecipeAdapterBuilder.create("chemical_alloy_furnace", "modularmachinery:zhuanzhihejinlu")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 16.0F, 1, false).build())
.build();
RecipeAdapterBuilder.create("chemical_alloy_furnace", "modularmachinery:steel_alloy_furnace")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();
RecipeBuilder.newBuilder("huagonghejinlu_1", "chemical_alloy_furnace", 160)
    .addEnergyPerTickInput(8192)
    .addItemInputs([
    <minecraft:iron_ingot>*6,
    <thermalfoundation:material:133>,
    <nuclearcraft:ingot:11>,
    <qmd:ingot:2>,
    ])
    .addItemOutputs(<qmd:ingot_alloy:2>*9)
.build();
RecipeBuilder.newBuilder("huagonghejinlu_2", "chemical_alloy_furnace", 160)
    .addEnergyPerTickInput(8192)
    .addItemInputs([
    <nuclearcraft:alloy:1>,
    <nuclearcraft:alloy:2>,
    ])
    .addItemOutputs(<nuclearcraft:alloy:10>*2)
.build();
RecipeBuilder.newBuilder("huagonghejinlu_3", "chemical_alloy_furnace", 160)
    .addEnergyPerTickInput(8192)
    .addItemInputs([
    <thermalfoundation:glass:3>*3,
    <jaopca:dust.stainless_steel>*2,
    ])
    .addItemOutputs(<mekanism:basicblock:10>*3)
.build();
RecipeBuilder.newBuilder("huagonghejinlu_4", "chemical_alloy_furnace", 160)
    .addEnergyPerTickInput(8192)
    .addItemInputs([
    <taiga:vibranium_ingot>,
    <taiga:solarium_ingot>,
    ])
    .addItemOutputs(<taiga:nihilite_ingot>)
.build();
RecipeBuilder.newBuilder("huagonghejinlu_5", "chemical_alloy_furnace", 160)
    .addEnergyPerTickInput(8192)
    .addItemInputs([
    <taiga:iox_ingot>*3,
    <taiga:vibranium_ingot>,
    <taiga:solarium_ingot>,
    ])
    .addItemOutputs(<taiga:adamant_ingot>*3)
.build();
RecipeBuilder.newBuilder("huagonghejinlu_6", "chemical_alloy_furnace", 160)
    .addEnergyPerTickInput(8192)
    .addItemInputs([
    <taiga:iox_ingot>*3,
    <taiga:nihilite_ingot>,
    ])
    .addItemOutputs(<taiga:adamant_ingot>*3)
.build();
//=============================================================原子合金炉==============================================================
//配方适配器
RecipeAdapterBuilder.create("atomic_alloy_furnace", "modularmachinery:zhuanzhihejinlu")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.125F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 64.0F, 1, false).build())
.build();
RecipeAdapterBuilder.create("atomic_alloy_furnace", "modularmachinery:steel_alloy_furnace")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 16.0F, 1, false).build())
.build();
RecipeAdapterBuilder.create("atomic_alloy_furnace", "modularmachinery:chemical_alloy_furnace")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();

RecipeBuilder.newBuilder("yuanzihejinlu_1", "atomic_alloy_furnace", 80)
    .addEnergyPerTickInput(32768)
    .addItemInputs([
    <additions:snow_ingot>,
    <twilightforest:fiery_ingot>,
    <additions:twilit_ingot>,
    ])
    .addItemOutputs(<additions:twilight_alloy_ingot>*3)
.build();
// =============================================================聚爆压缩机==============================================================
RecipeBuilder.newBuilder("jbysj_1", "explosive_compressor", 1)
    .addItemInputs([
    <minecraft:coal>*16,
    <minecraft:tnt>*4,
    ])
    .addItemOutputs(<minecraft:diamond>)
.build();
// =============================================================强化焦炉==============================================================
RecipeBuilder.newBuilder("qhjl_1", "qianghuajiaolu", 250)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <minecraft:coal:1>,
    ])
    .addItemOutputs(<thermalfoundation:material:802>)
    .addFluidOutputs(<liquid:creosote>*500)
.build();
RecipeBuilder.newBuilder("qhjl_2", "qianghuajiaolu", 250)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <minecraft:coal>,
    ])
    .addItemOutputs(<immersiveengineering:material:6>)
    .addFluidOutputs(<liquid:creosote>*500)
.build();
RecipeBuilder.newBuilder("qhjl_3", "qianghuajiaolu", 2000)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <minecraft:coal_block>,
    ])
    .addItemOutputs(<immersiveengineering:stone_decoration:3>)
    .addFluidOutputs(<liquid:creosote>*5000)
.build();
RecipeBuilder.newBuilder("qhjl_4", "qianghuajiaolu", 2000)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <mekanism:basicblock:3>,
    ])
    .addItemOutputs(<thermalfoundation:storage_resource:1>)
    .addFluidOutputs(<liquid:creosote>*5000)
.build();
RecipeBuilder.newBuilder("qhjl_5", "qianghuajiaolu", 250)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <ore:logWood>,
    ])
    .addItemOutputs(<minecraft:coal:1>)
    .addFluidOutputs(<liquid:creosote>*250)
.build();
RecipeBuilder.newBuilder("qhjl_6", "qianghuajiaolu", 500)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <immersiveengineering:material:17>*4,
    ])
    .addItemOutputs(<nuclearcraft:dust:8>)
    .addFluidOutputs(<liquid:creosote>*250)
.build();
//===========================================================超临界移相器=============================================================
//维度物质
RecipeBuilder.newBuilder("buwendingweiduqiti_1", "supercritical", 1)
    .addEnergyPerTickInput(2000000000)
    .addGasInput(<gas:unstabledimensional>*1000)

    .addFluidOutputs(<liquid:weiduwuzhi>*1)
.build();
//===========================================================小型电解机=============================================================
RecipeBuilder.newBuilder("xiaoxingdianjieji_1", "small_electrolysis_machine", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs([
    <liquid:water>*20,
    ])
    .addGasOutput(<gas:hydrogen>*20)
    .addGasOutput(<gas:oxygen>*10)
.build();
RecipeBuilder.newBuilder("xiaoxingdianjieji_2", "small_electrolysis_machine", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs([
    <liquid:huaxue_8>*20,
    ])
    .addGasOutput(<gas:hydrogen>*20)
    .addGasOutput(<gas:chlorine>*10)
.build();
RecipeBuilder.newBuilder("xiaoxingdianjieji_3", "small_electrolysis_machine", 200)
    .addEnergyPerTickInput(512)
    .addGasInput(<gas:qiti_27>*1000)

    .addItemOutputs(<thermalfoundation:material:771>)
    .addGasOutput(<gas:hydrogen>*2000)
.build();
RecipeBuilder.newBuilder("xiaoxingdianjieji_4", "small_electrolysis_machine", 200)
    .addEnergyPerTickInput(512)
    .addFluidInput(<liquid:brine>*2000)

    .addFluidOutput(<liquid:sodium_hydroxide_solution>*2000)
    .addGasOutput(<gas:chlorine>*1000)
    .addGasOutput(<gas:hydrogen>*1000)
.build();
//=============================================================大型电解机==============================================================
//配方适配器
RecipeAdapterBuilder.create("large_electrolytic_machine", "modularmachinery:small_electrolysis_machine")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();
//===========================================================树脂加工厂=============================================================
RecipeBuilder.newBuilder("shuzhijiagongchang_1", "resin_processing_plant", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs([
    <liquid:resin>*100,
    ])
    .addItemOutputs(<contenttweaker:shuzhipian_1>)
.build();
RecipeBuilder.newBuilder("shuzhijiagongchang_2", "resin_processing_plant", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <ore:logWood>,
    ])
    .addFluidOutputs(<liquid:sap>*10)
    .addFluidOutputs(<liquid:resin>*500)
    .addFluidOutputs(<liquid:latex>*500)
.build();
RecipeBuilder.newBuilder("shuzhijiagongchang_3", "resin_processing_plant", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs([
    <liquid:resin>*100,
    <liquid:latex>*100,
    ])
    .addItemInputs([
    <minecraft:blaze_powder>,
    ])
    .addItemOutputs(<industrialforegoing:plastic>)
.build();
RecipeBuilder.newBuilder("shuzhijiagongchang_4", "resin_processing_plant", 200)
    .addEnergyPerTickInput(512)
    .addFluidInputs([
    <liquid:resin>*1000,
    <liquid:latex>*1000,
    ])
    .addItemInputs([
    <thermalfoundation:material:1024>,
    ])
    .addItemOutputs(<industrialforegoing:plastic>*10)
.build();
// =============================================================七级虚空采掘机==============================================================
RecipeBuilder.newBuilder("xkcjj7_qidian", "void_mining_machine7", 2000)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <appliedenergistics2:material:47>*512,
    ])

    .addItemOutputs(<contenttweaker:atm_4>)
.build();
RecipeBuilder.newBuilder("xkcjj7_0", "void_mining_machine7", 20)
    .addEnergyPerTickInput(512)
    .setDimension([5])
    .addRecipeTooltip("在金星空间站才能运行")
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.017)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.01)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<contenttweaker:wupin_2>).setChance(0.02)
    .addItemOutput(<thaumcraft:crystal_perditio>).setChance(0.02)
    .addItemOutput(<draconicevolution:chaos_shard:2>).setChance(0.0001)
.build();
//主世界
RecipeBuilder.newBuilder("xkcjj7_1", "void_mining_machine7", 20)
    .addEnergyPerTickInput(512)
    .setDimension([0])
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.17)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.1)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<minecraft:stone>).setChance(0.6)
    .addItemOutput(<minecraft:iron_ore>).setChance(0.6)
    .addItemOutput(<minecraft:gold_ore>).setChance(0.6)
    .addItemOutput(<minecraft:coal_ore>).setChance(0.6)
    .addItemOutput(<minecraft:lapis_ore>).setChance(0.6)
    .addItemOutput(<minecraft:diamond_ore>).setChance(0.6)
    .addItemOutput(<minecraft:redstone_ore>).setChance(0.6)
    .addItemOutput(<minecraft:emerald_ore>).setChance(0.6)
    .addItemOutput(<appliedenergistics2:quartz_ore>).setChance(0.6)
    .addItemOutput(<appliedenergistics2:charged_quartz_ore>).setChance(0.6)
    .addItemOutput(<abyssalcraft:coraliumore>).setChance(0.6)
    .addItemOutput(<abyssalcraft:nitreore>).setChance(0.6)
    .addItemOutput(<additions:naquadah_ore>).setChance(0.06)
.build();
//末地
RecipeBuilder.newBuilder("xkcjj7_2", "void_mining_machine7", 20)
    .addEnergyPerTickInput(512)
    .setDimension([1])
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.17)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.1)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<minecraft:chorus_fruit>).setChance(0.6)
    .addItemOutput(<minecraft:chorus_flower>).setChance(0.6)
    .addItemOutput(<minecraft:end_stone>).setChance(1)
    .addItemOutput(<taiga:obsidiorite_block>).setChance(0.6)
    .addItemOutput(<draconicevolution:draconium_ore:2>).setChance(0.6)
    .addItemOutput(<taiga:uru_ore>).setChance(0.6)
    .addItemOutput(<thermalfoundation:ore_fluid:4>).setChance(0.6)
    .addItemOutput(<taiga:aurorium_ore>).setChance(0.6)
    .addItemOutput(<taiga:abyssum_ore>).setChance(0.6)
    .addItemOutput(<taiga:palladium_ore>).setChance(0.6)
.build();
//下界
RecipeBuilder.newBuilder("xkcjj7_3", "void_mining_machine7", 20)
    .addEnergyPerTickInput(512)
    .setDimension([-1])
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.17)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.1)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<minecraft:netherrack>).setChance(1)
    .addItemOutput(<minecraft:soul_sand>).setChance(0.6)
    .addItemOutput(<minecraft:glowstone>).setChance(0.6)
    .addItemOutput(<minecraft:nether_brick>).setChance(0.6)
    .addItemOutput(<minecraft:nether_wart_block>).setChance(0.6)
    .addItemOutput(<minecraft:nether_wart>).setChance(0.6)
    .addItemOutput(<minecraft:quartz_ore>).setChance(0.6)
    .addItemOutput(<taiga:osram_ore>).setChance(0.3)
    .addItemOutput(<tconstruct:ore>).setChance(0.6)
    .addItemOutput(<netherex:amethyst_ore>).setChance(0.6)
    .addItemOutput(<draconicevolution:draconium_ore:1>).setChance(0.6)
    .addItemOutput(<taiga:valyrium_ore>).setChance(0.3)
    .addItemOutput(<taiga:valyrium_ore>).setChance(0.6)
    .addItemOutput(<taiga:prometheum_ore>).setChance(0.6)
    .addItemOutput(<tconstruct:ore:1>).setChance(0.6)
    .addItemOutput(<minecraft:magma>).setChance(0.6)
    .addItemOutput(<additions:ancient_debris_ore>).setChance(0.06)
    .addItemOutput(<minecraft:netherrack>).setChance(0.6)
.build();
// =============================================================八级虚空采掘机==============================================================
RecipeBuilder.newBuilder("xkcjj8_0", "void_mining_machine8", 4)
    .addEnergyPerTickInput(512)
    .setDimension([5])
    .addRecipeTooltip("在金星空间站才能运行")
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.017)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.01)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<contenttweaker:wupin_1>).setChance(0.01)
    .addItemOutput(<contenttweaker:wupin_2>).setChance(0.02)
    .addItemOutput(<thaumcraft:crystal_perditio>).setChance(0.02)
    .addItemOutput(<draconicevolution:chaos_shard:2>).setChance(0.01)
    
.build();//主世界
RecipeBuilder.newBuilder("xkcjj8_1", "void_mining_machine8", 4)
    .addEnergyPerTickInput(512)
    .setDimension([0])
    .addRecipeTooltip("在主世界才能运行")
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.17)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.1)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<minecraft:stone>).setChance(0.6)
    .addItemOutput(<minecraft:iron_ore>).setChance(0.6)
    .addItemOutput(<minecraft:gold_ore>).setChance(0.6)
    .addItemOutput(<minecraft:coal_ore>).setChance(0.6)
    .addItemOutput(<minecraft:lapis_ore>).setChance(0.6)
    .addItemOutput(<minecraft:diamond_ore>).setChance(0.6)
    .addItemOutput(<minecraft:redstone_ore>).setChance(0.6)
    .addItemOutput(<minecraft:emerald_ore>).setChance(0.6)
    .addItemOutput(<appliedenergistics2:quartz_ore>).setChance(0.6)
    .addItemOutput(<appliedenergistics2:charged_quartz_ore>).setChance(0.6)
    .addItemOutput(<abyssalcraft:coraliumore>).setChance(0.6)
    .addItemOutput(<abyssalcraft:nitreore>).setChance(0.6)
    .addItemOutput(<additions:naquadah_ore>).setChance(0.06)
.build();
//末地
RecipeBuilder.newBuilder("xkcjj8_2", "void_mining_machine8", 4)
    .addEnergyPerTickInput(512)
    .setDimension([1])
    .addRecipeTooltip("在末地才能运行")
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.17)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.1)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<minecraft:chorus_fruit>).setChance(0.6)
    .addItemOutput(<minecraft:chorus_flower>).setChance(0.6)
    .addItemOutput(<minecraft:end_stone>).setChance(1)
    .addItemOutput(<taiga:obsidiorite_block>).setChance(0.6)
    .addItemOutput(<draconicevolution:draconium_ore:2>).setChance(0.6)
    .addItemOutput(<taiga:uru_ore>).setChance(0.6)
    .addItemOutput(<thermalfoundation:ore_fluid:4>).setChance(0.6)
    .addItemOutput(<taiga:aurorium_ore>).setChance(0.6)
    .addItemOutput(<taiga:abyssum_ore>).setChance(0.6)
    .addItemOutput(<taiga:palladium_ore>).setChance(0.6)
.build();
//下界
RecipeBuilder.newBuilder("xkcjj8_3", "void_mining_machine8", 20)
    .addEnergyPerTickInput(512)
    .setDimension([-1])
    .addRecipeTooltip("在下界才能运行")
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.17)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.1)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<minecraft:netherrack>).setChance(1)
    .addItemOutput(<minecraft:soul_sand>).setChance(0.6)
    .addItemOutput(<minecraft:glowstone>).setChance(0.6)
    .addItemOutput(<minecraft:nether_brick>).setChance(0.6)
    .addItemOutput(<minecraft:nether_wart_block>).setChance(0.6)
    .addItemOutput(<minecraft:nether_wart>).setChance(0.6)
    .addItemOutput(<minecraft:quartz_ore>).setChance(0.6)
    .addItemOutput(<taiga:osram_ore>).setChance(0.3)
    .addItemOutput(<tconstruct:ore>).setChance(0.6)
    .addItemOutput(<netherex:amethyst_ore>).setChance(0.6)
    .addItemOutput(<draconicevolution:draconium_ore:1>).setChance(0.6)
    .addItemOutput(<taiga:valyrium_ore>).setChance(0.3)
    .addItemOutput(<taiga:valyrium_ore>).setChance(0.6)
    .addItemOutput(<taiga:prometheum_ore>).setChance(0.6)
    .addItemOutput(<tconstruct:ore:1>).setChance(0.6)
    .addItemOutput(<minecraft:magma>).setChance(0.6)
    .addItemOutput(<additions:ancient_debris_ore>).setChance(0.06)
    .addItemOutput(<minecraft:netherrack>).setChance(0.6)
.build();
//天堂
RecipeBuilder.newBuilder("xkcjj8_4", "void_mining_machine8", 20)
    .addEnergyPerTickInput(512)
    .setDimension([4])
    .addRecipeTooltip("在天堂才能运行")
    .addItemOutput(<environmentaltech:litherite_crystal>).setChance(0.17)
    .addItemOutput(<environmentaltech:erodium_crystal>).setChance(0.13)
    .addItemOutput(<environmentaltech:kyronite_crystal>).setChance(0.1)
    .addItemOutput(<environmentaltech:pladium_crystal>).setChance(0.08)
    .addItemOutput(<environmentaltech:ionite_crystal>).setChance(0.05)
    .addItemOutput(<environmentaltech:aethium_crystal>).setChance(0.03)
    .addItemOutput(<additions:nanuolaishuijing>).setChance(0.015)
    .addItemOutput(<additions:zeluosishuijing>).setChance(0.01)
    .addItemOutput(<environmentaltech:lonsdaleite_crystal>).setChance(0.02)
    .addItemOutput(<aether_legacy:holystone>).setChance(1)
    .addItemOutput(<additions:lieyang_ore>).setChance(0.6)
    .addItemOutput(<additions:celestial_ore>).setChance(0.6)
    .addItemOutput(<aether_legacy:ambrosium_ore>).setChance(0.6)
    .addItemOutput(<aether_legacy:zanite_ore>).setChance(0.6)
    .addItemOutput(<aether_legacy:gravitite_ore>).setChance(0.6)
.build();
// =============================================================工业高炉MK1==============================================================

RecipeBuilder.newBuilder("gygl_MK1_1", "industrial_blast_furnace_mk1", 5120)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <nuclearcraft:dust:8>*2,
    ])
    .addItemOutputs(<immersiveengineering:material:18>)
.build();
RecipeBuilder.newBuilder("gygl_MK1_2", "industrial_blast_furnace_mk1", 5120)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <minecraft:iron_ingot>,
    <minecraft:coal>,
    ])
    .addItemOutputs(<thermalfoundation:material:160>)
.build();
RecipeBuilder.newBuilder("gygl_MK1_3", "industrial_blast_furnace_mk1", 2560)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <immersiveengineering:stone_decoration:8>*2,
    <minecraft:flint>*4,
    <fd:crystal_shard:4>*3,
    <minecraft:diamond>,
    ])
    .addItemOutputs(<environmentaltech:litherite_crystal>*4)
.build();
RecipeBuilder.newBuilder("gygl_MK1_4", "industrial_blast_furnace_mk1", 2560)
    .addEnergyPerTickInput(64)
    .addItemInputs([
    <thermalfoundation:material:68>,
    ])
    .addItemOutputs(<thermalfoundation:material:132>)
.build();
// =============================================================工业高炉MK2==============================================================
//最大线程数
MachineModifier.setMaxThreads("industrial_blast_furnace_mk2", 2);
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk2", "modularmachinery:industrial_blast_furnace_mk1")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.75F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();

RecipeBuilder.newBuilder("gygl_MK2_1", "industrial_blast_furnace_mk2", 3840)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <minecraft:iron_ingot>*2,
    <thermalfoundation:material:802>,
    ])
    .addItemOutputs(<thermalfoundation:material:160>*2)
.build();
RecipeBuilder.newBuilder("gygl_MK2_2", "industrial_blast_furnace_mk2", 3840)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <minecraft:iron_ingot>*2,
    <immersiveengineering:material:6>,
    ])
    .addItemOutputs(<thermalfoundation:material:160>*2)
.build();
RecipeBuilder.newBuilder("gygl_MK2_3", "industrial_blast_furnace_mk2", 3840)
    .addEnergyPerTickInput(256)
    .addItemInputs([
    <thermalfoundation:material:70>,
    ])
    .addItemOutputs(<thermalfoundation:material:134>)
.build();
// =============================================================工业高炉MK3==============================================================
//最大线程数
MachineModifier.setMaxThreads("industrial_blast_furnace_mk3", 3);
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk3", "modularmachinery:industrial_blast_furnace_mk1")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 16.0F, 1, false).build())
.build();
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk3", "modularmachinery:industrial_blast_furnace_mk2")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.75F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();
RecipeBuilder.newBuilder("gygl_MK3_1", "industrial_blast_furnace_mk3", 2560)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <conarm:polishing_kit>.withTag({Material: "emerald_plustic"}),
    <additions:crystal>,
    ])
    .addGasInput(<gas:Helium>*100)
    .addItemOutputs(<additions:crystal_chip>)
.build();
RecipeBuilder.newBuilder("gygl_MK3_2", "industrial_blast_furnace_mk3", 2560)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <nuclearcraft:dust:6>,
    ])
    .addItemOutputs(<nuclearcraft:ingot:6>)
.build();
RecipeBuilder.newBuilder("gygl_MK3_3", "industrial_blast_furnace_mk3", 2560)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <nuclearcraft:dust:7>,
    ])
    .addItemOutputs(<nuclearcraft:ingot:7>)
.build();
// =============================================================工业高炉MK4==============================================================
//最大线程数
MachineModifier.setMaxThreads("industrial_blast_furnace_mk4", 4);
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk4", "modularmachinery:industrial_blast_furnace_mk1")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 64.0F, 1, false).build())
.build();
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk4", "modularmachinery:industrial_blast_furnace_mk2")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 16.0F, 1, false).build())
.build();
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk4", "modularmachinery:industrial_blast_furnace_mk3")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.75F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();
RecipeBuilder.newBuilder("gygl_MK4_1", "industrial_blast_furnace_mk4", 1280)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <draconicevolution:draconium_dust>,
    ])
    .addItemOutputs(<draconicevolution:draconium_ingot>)
.build();
RecipeBuilder.newBuilder("gygl_MK4_2", "industrial_blast_furnace_mk4", 1280)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <jaopca:dust.naquadah>,
    ])
    .addItemOutputs(<additions:hotantimony_ingot>)
.build();
RecipeBuilder.newBuilder("gygl_MK4_3", "industrial_blast_furnace_mk4", 1280)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <jaopca:dust.enrichednaquadah>,
    ])
    .addItemOutputs(<additions:hotenrichednaquadah_ingot>)
.build();
RecipeBuilder.newBuilder("gygl_MK4_4", "industrial_blast_furnace_mk4", 1280)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <contenttweaker:jinshufen_19>*6,
    ])
    .addItemOutputs(<additions:hotenrichednaquadah_ingot>)
.build();
// =============================================================工业高炉MK5==============================================================
//最大线程数
MachineModifier.setMaxThreads("industrial_blast_furnace_mk5", 5);
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk5", "modularmachinery:industrial_blast_furnace_mk1")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.125F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 256.0F, 1, false).build())
.build();
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk5", "modularmachinery:industrial_blast_furnace_mk2")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 64.0F, 1, false).build())
.build();
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk5", "modularmachinery:industrial_blast_furnace_mk3")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 16.0F, 1, false).build())
.build();
//配方适配器
RecipeAdapterBuilder.create("industrial_blast_furnace_mk5", "modularmachinery:industrial_blast_furnace_mk4")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.75F, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0F, 1, false).build())
.build();
RecipeBuilder.newBuilder("gygl_MK5_1", "industrial_blast_furnace_mk5", 640)
    .addEnergyPerTickInput(4096)
    .addItemInputs([
    <jaopca:dust.naquadria>,
    ])
    .addItemOutputs(<additions:hotnaquadria_ingot>)
.build();
RecipeBuilder.newBuilder("gygl_MK5_2", "industrial_blast_furnace_mk5", 640)
    .addEnergyPerTickInput(4096)
    .addItemInputs([
    <contenttweaker:jinshufen_24>*6,
    ])
    .addItemOutputs(<additions:hotnaquadria_ingot>)
.build();
// ============================================================超低温冷却机==============================================================
//最大线程数
MachineModifier.setMaxThreads("chaodiwenlengqueji", 4);
RecipeBuilder.newBuilder("chaodiwenlengqueji_1", "chaodiwenlengqueji", 20)
    .addEnergyPerTickInput(4096)
    .addItemInputs([
    <additions:hotantimony_ingot>,
    ])
    .addItemOutputs(<additions:naquadah_ingot>)
.build();
RecipeBuilder.newBuilder("chaodiwenlengqueji_2", "chaodiwenlengqueji", 20)
    .addEnergyPerTickInput(4096)
    .addItemInputs([
    <additions:hotnaquadria_ingot>,
    ])
    .addItemOutputs(<additions:naquadria_ingot>)
.build();
RecipeBuilder.newBuilder("chaodiwenlengqueji_3", "chaodiwenlengqueji", 20)
    .addEnergyPerTickInput(4096)
    .addItemInputs([
    <additions:hotenrichednaquadah_ingot>,
    ])
    .addItemOutputs(<additions:enrichednaquadah_ingot>)
.build();
// =============================================================余烬锻炉==============================================================
RecipeBuilder.newBuilder("yujinduanlu_1", "yujinduanlu", 40)
    .addEmberInput(300)
    .addItemInput(<embers:stamp_plate>).setChance(0)
    .addItemInputs([
    <minecraft:iron_ingot>,
    <embers:shard_ember>,
    ])
    .addItemOutputs(<embers:aspectus_iron>)
.build();
RecipeBuilder.newBuilder("yujinduanlu_2", "yujinduanlu", 40)
    .addEmberInput(300)
    .addItemInput(<embers:stamp_plate>).setChance(0)
    .addItemInputs([
    <thermalfoundation:material:128>,
    <embers:shard_ember>,
    ])
    .addItemOutputs(<embers:aspectus_copper>)
.build();
RecipeBuilder.newBuilder("yujinduanlu_3", "yujinduanlu", 40)
    .addEmberInput(300)
    .addItemInput(<embers:stamp_plate>).setChance(0)
    .addItemInputs([
    <thermalfoundation:material:131>,
    <embers:shard_ember>,
    ])
    .addItemOutputs(<embers:aspectus_lead>)
.build();
RecipeBuilder.newBuilder("yujinduanlu_4", "yujinduanlu", 40)
    .addEmberInput(300)
    .addItemInput(<embers:stamp_plate>).setChance(0)
    .addItemInputs([
    <thermalfoundation:material:130>,
    <embers:shard_ember>,
    ])
    .addItemOutputs(<embers:aspectus_silver>)
.build();
RecipeBuilder.newBuilder("yujinduanlu_5", "yujinduanlu", 40)
    .addEmberInput(300)
    .addItemInput(<embers:stamp_plate>).setChance(0)
    .addItemInputs([
    <embers:ingot_dawnstone>,
    <embers:shard_ember>,
    ])
    .addItemOutputs(<embers:aspectus_dawnstone>)
.build();
// =============================================================小型组装机==============================================================
RecipeBuilder.newBuilder("xxzuzhuangj_1", "small_assembly_machine", 1000)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <immersiveengineering:metal_decoration0:4>,
    <environmentaltech:structure_frame_1>*4,
    <environmentaltech:diode>*2,
    <contenttweaker:conveyor_module_lv1>,
    <contenttweaker:robot_arm_lv1>,
    ])
    .addItemOutputs(<environmentaltech:void_ore_miner_cont_1>)
.build();
//钢外壳
RecipeBuilder.newBuilder("xxzuzhuangj_2", "small_assembly_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:32>*6,
    <immersiveengineering:material:1>*2,
    ])
    .addItemOutputs(<actuallyadditions:block_misc:9>*2)
.build();
//设备框架
RecipeBuilder.newBuilder("xxzuzhuangj_3", "small_assembly_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <teslacorelib:machine_case>,
    <thermalfoundation:material:321>*8,
    <contenttweaker:dianluban_2>,
    <contenttweaker:crystal_ore_1>,
    ])
    .addItemOutputs(<thermalexpansion:frame:64>)
.build();
RecipeBuilder.newBuilder("xxzuzhuangj_4", "small_assembly_machine", 400)
    .addEnergyPerTickInput(128)
    .addItemInputs([
    <minecraft:pumpkin>,
    <minecraft:iron_block>*4,
    ])
    .addItemOutputs(<additions:iron_puppet_core>)
.build();
//重型工程块
RecipeBuilder.newBuilder("xxzuzhuangj_5", "small_assembly_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <immersiveengineering:material:9>,
    <immersiveengineering:sheetmetal:8>,
    <contenttweaker:dianluban_2>*2,
    <immersiveengineering:metal_decoration0:4>,
    ])
    .addItemOutputs(<immersiveengineering:metal_decoration0:5>*2)
.build();
//青铜外壳
RecipeBuilder.newBuilder("xxzuzhuangj_6", "small_assembly_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:355>*7,
    <jaopca:stick.bronze>*2,
    ])
    .addItemOutputs(<additions:bronze_shell>*2)
.build();
//钢外壳
RecipeBuilder.newBuilder("xxzuzhuangj_7", "small_assembly_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <thermalfoundation:material:352>*6,
    <immersiveengineering:material:2>*2,
    ])
    .addItemOutputs(<additions:steel_shell>*2)
.build();
//铝线圈 
RecipeBuilder.newBuilder("xxzuzhuangj_8", "small_assembly_machine", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <immersiveengineering:metal_decoration0>,
    <immersiveengineering:material:22>*8,
    ])
    .addItemOutputs(<additions:gelei7>)
    .addItemOutputs(<immersiveengineering:material:20>*4)
.build();
//工业高炉mk2
RecipeBuilder.newBuilder("xxzuzhuangj_9", "small_assembly_machine", 1000)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <modularmachinery:industrial_blast_furnace_mk1_controller>,
    <thermalfoundation:material:324>*8,
    <contenttweaker:dianluban_3>*2,
    <industrialforegoing:plastic>*4,
    <jaopca:plate.cast__iron>,
    <additions:steel_shell>,
    ])
    .addItemOutputs(<modularmachinery:industrial_blast_furnace_mk2_factory_controller>)
.build();
//工业高炉mk2
RecipeBuilder.newBuilder("xxzuzhuangj_10", "small_assembly_machine", 1000)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <jaopca:plate.cobalt_brass>*6,
    <jaopca:stick.cobalt_brass>*2,
    ])
    .addItemOutputs(<additions:gelei2>*2)
.build();
//=============================================================先进组装机==============================================================
RecipeBuilder.newBuilder("xianjinzuzhuangji_1", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <threng:material:6>,
    <appliedenergistics2:crafting_unit>,
    ])
    .addItemOutputs(<appliedenergistics2:crafting_accelerator>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_2", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <jaopca:plate.stainless_steel>*6,
    <jaopca:gear.stainless_steel>,
    <jaopca:stick.stainless_steel>*2,
    ])
    .addItemOutputs(<additions:gelei4>*2)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_4", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <additions:steel_shell>,
    <nuclearcraft:alloy:10>*4,
    <minecraft:clay>*4,
    ])
    .addItemOutputs(<additions:gelei1>*2)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_5", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <contenttweaker:dianluban_4>,
    <additions:central_processing>,
    <enderio:item_capacitor_vivid>,
    <threng:material:4>,
    <appliedenergistics2:material:5>*4,
    ])
    .addFluidInputs(<liquid:tin>*288)

    .addItemOutputs(<additions:microprocessor>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_6", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <contenttweaker:dianluban_4>,
    <appliedenergistics2:material:22>*3,
    <threng:material>,
    <appliedenergistics2:material:5>*4,
    ])
    .addFluidInputs(<liquid:tin>*288)

    .addItemOutputs(<additions:basic_integrated>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_7", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <extendedcrafting:pedestal>,
    <draconicevolution:draconic_core>*2,
    <mekanism:controlcircuit:1>*2,
    <botania:quartztypemana>*5,
    <additions:assembly>,
    ])

    .addItemOutputs(<draconicevolution:crafting_injector>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_8", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <threng:material:6>*2,
    <mekanism:controlcircuit>,
    <additions:central_processing>,
    <jaopca:plate.epoxy_resin>*4,
    ])
    .addFluidInputs(<liquid:tin>*288)

    .addItemOutputs(<additions:circuit_processor>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_9", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <extendedcrafting:crafting_core>,
    <appliedenergistics2:molecular_assembler>*4,
    <additions:workstation>,
    <draconicevolution:draconic_core>*2,
    <mekanism:controlcircuit:1>*2,
    ])

    .addItemOutputs(<draconicevolution:fusion_crafting_core>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_10", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <mekanism:controlcircuit:1>,
    <additions:circuit_processor>*2,
    <threng:material:6>*2,
    <thermalfoundation:material:515>*4,
    ])

    .addItemOutputs(<additions:assembly>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_11", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <mekanism:controlcircuit:2>,
    <additions:weimidianluban>*2,
    <threng:material:6>*2,
    <thermalfoundation:material:515>*4,
    ])

    .addItemOutputs(<additions:weimichuliqi>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_12", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <minecraft:glass_pane>,
    <mekanism:basicblock2>*4,
    <mekanism:controlcircuit:1>*2,
    <thermalfoundation:material:515>*4,
    <minecraft:bucket>*2,
    ])

    .addItemOutputs(<mekanism:basicblock:14>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_13", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <mekanism:controlcircuit:2>,
    <additions:nano_processor>*2,
    <threng:material:6>*2,
    <thermalfoundation:material:515>*4,
    ])

    .addItemOutputs(<additions:nano_assembly>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_14", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <mekanismecoenergistics:controlcircuitavaritia>,
    <additions:crystal_processor>*2,
    <threng:material:6>*2,
    <thermalfoundation:material:515>*4,
    ])

    .addItemOutputs(<additions:crystal_assembly>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_15", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <mekanismecoenergistics:morecontrolcircuit:3>,
    <additions:quantum_processor>*2,
    <threng:material:6>*2,
    <thermalfoundation:material:515>*4,
    ])

    .addItemOutputs(<additions:quantum_assembly>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_16", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <mekanism:controlcircuit:2>,
    <additions:wetware_processor>*2,
    <threng:material:6>*2,
    <thermalfoundation:material:515>*4,
    ])

    .addItemOutputs(<additions:wetware_assembly>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_17", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <crazyae:crafting_accelerator_4x>,
    <threng:material:6>*4,
    <refinedstorage:processor_binding>*4,
    ])

    .addItemOutputs(<modularmachinery:blockparallelcontroller>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_18", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <modularmachinery:blockparallelcontroller>,
    <crazyae:crafting_accelerator_16x>,
    <threng:material:6>*16,
    <refinedstorage:processor_binding>*16,
    ])
    .addItemOutputs(<modularmachinery:blockparallelcontroller:1>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_19", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <modularmachinery:blockparallelcontroller:1>,
    <crazyae:crafting_accelerator_64x>,
    <threng:material:6>*64,
    <refinedstorage:processor_binding>*64,
    ])
    .addItemOutputs(<modularmachinery:blockparallelcontroller:2>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_20", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <modularmachinery:blockparallelcontroller:2>,
    <crazyae:crafting_accelerator_256x>,
    <threng:material:6>*256,
    <refinedstorage:processor_binding>*256,
    ])
    .addItemOutputs(<modularmachinery:blockparallelcontroller:3>)
.build();
RecipeBuilder.newBuilder("xianjinzuzhuangji_21", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <modularmachinery:blockparallelcontroller:3>,
    <crazyae:crafting_accelerator_1024x>,
    <threng:material:6>*1024,
    <refinedstorage:processor_binding>*1024,
    ])
    .addItemOutputs(<modularmachinery:blockparallelcontroller:4>)
.build();



// =============================================================末影工作站==============================================================
RecipeBuilder.newBuilder("mygzz_1", "final_whadow_workstation", 1000)
    .addEnergyPerTickInput(1024)
    .addFluidInputs(<liquid:ender>*250)
    .addItemInputs([
    <nuclearcraft:alloy:9>,
    ])
    .addItemOutputs(<thermalfoundation:material:167>)
.build();
RecipeBuilder.newBuilder("mygzz_2", "final_whadow_workstation", 1000)
    .addEnergyPerTickInput(1024)
    .addFluidInputs(<liquid:ender>*250)
    .addItemInputs([
    <jaopca:dust.lead_platinum>,
    ])
    .addItemOutputs(<thermalfoundation:material:103>)
.build();
RecipeBuilder.newBuilder("mygzz_3", "final_whadow_workstation", 1000)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <enderio:item_material:39>,
    ])
    .addItemOutputs(<thermalfoundation:material:167>)
.build();
RecipeBuilder.newBuilder("mygzz_4", "final_whadow_workstation", 1000)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <enderio:item_alloy_ingot:6>,
    <nuclearcraft:compound:9>,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:8>)
.build();
RecipeBuilder.newBuilder("mygzz_5", "final_whadow_workstation", 1000)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <enderio:item_material:1>,
    <jaopca:gear.end_steel>*4,
    <jaopca:plate.end_steel>*4,
    ])
    .addItemOutputs(<enderio:item_material:66>)
.build();
RecipeBuilder.newBuilder("mygzz_6", "final_whadow_workstation", 1000)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <enderio:item_material:15>,
    <enderio:item_material:58>*3,
    ])
    .addItemInput(<enderio:item_material:44>).setChance(0.01)
    .addItemOutputs(<enderio:item_material:16>)
.build();
RecipeBuilder.newBuilder("mygzz_7", "final_whadow_workstation", 1000)
    .addEnergyPerTickInput(1024)
    .addItemInputs([
    <enderio:item_material:15>,
    <enderio:item_material:54>,
    <enderutilities:enderpart:2>*2,
    ])
    .addItemInput(<enderio:item_material:44>).setChance(0.1)
    .addItemOutputs(<nuclearcraft:part:10>)
.build();
//=============================================================灵魂锻炉==============================================================
RecipeBuilder.newBuilder("lhdl_1", "soul_forging_furnace", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <minecraft:gold_ingot>,
    <minecraft:soul_sand>*2,
    <mysticalagriculture:crafting:28>*2,
    ])
    .addItemOutputs(<enderio:item_alloy_ingot:7>)
.build();
RecipeBuilder.newBuilder("lhdl_2", "soul_forging_furnace", 200)
    .addEnergyPerTickInput(512)
    .addItemInputs([
    <enderio:item_material:1>,
    <enderio:item_material:52>,
    ])
    .addItemOutputs(<enderio:item_material:53>)
.build();
