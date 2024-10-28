
//========================================================世界合成=====================================================
//流体转流体
//泥浆
    inWorldCrafting.fluidToFluid.recipeBuilder()
            .fluidInput(fluid('water'))//流体输入
            .input(item('minecraft:sand') * 8)//物品输入
            .input(item('minecraft:gravel') * 8)//物品输入
            .fluidOutput(fluid('mud_liquid'))//流体输出
            .register()
//物品+流体转物品
//修格斯生物质
    inWorldCrafting.fluidToItem.recipeBuilder()
            .fluidInput(fluid('huaxue_61'))//流体输入(流体无法不消耗)
            .input(item('abyssalcraft:shoggothflesh')*2)//物品输入
            .input(item('abyssalcraft:stone', 7)*3)//物品输入
            .output(item('abyssalcraft:shoggothbiomass'))//物品输出
            .register()
//水泥
    inWorldCrafting.fluidToItem.recipeBuilder()
            .fluidInput(fluid('mud_liquid'))//流体输入(流体无法不消耗)
            .input(item('minecraft:clay'))//物品输入
            .input(item('immersiveengineering:material', 4)*3)//物品输入
            .output(item('tconstruct:soil')*8)//物品输出
            .register()
//方镁钒混合物
    inWorldCrafting.fluidToItem.recipeBuilder()
            .fluidInput(fluid('creosote'))//流体输入(流体无法不消耗)
            .input(item('minecraft:clay_ball')*8)//物品输入
            .input(item('minecraft:sand')*3)//物品输入
            .input(item('thermalfoundation:material', 64)*2)//物品输入
            .output(item('embers:blend_caminite')*24)//物品输出
            .register()
//防腐木板
    inWorldCrafting.fluidToItem.recipeBuilder()
            .fluidInput(fluid('creosote'))//流体输入(流体无法不消耗)
            .input(ore('plankWood')*4)//物品输入
            .output(item('immersiveengineering:treated_wood')*4)//物品输出
            .register()
//注星木
    inWorldCrafting.fluidToItem.recipeBuilder()
            .fluidInput(fluid('astralsorcery.liquidstarlight'))//流体输入(流体无法不消耗)
            .input(item('botania:livingwood')*16)//物品输入
            .output(item('astralsorcery:blockinfusedwood')*16)//物品输出
            .register()
//爆炸合成
//钻石
//mods.pneumaticcraft.explosion.recipeBuilder()
        //.input(item('minecraft:coal')*16)//物品输入
        //.output(item('minecraft:diamond'))//物品输出
        //.register()
//燃烧合成
//煤炭块 
    inWorldCrafting.burning.recipeBuilder()
        .input(item('minecraft:diamond_ore'))//物品输入
        .output(item('minecraft:coal_block'))//物品输出
        .ticks(10)//燃烧用时
        .register()
//木炭
    inWorldCrafting.burning.recipeBuilder()
        .input(ore('logWood'))//物品输入
        .output(item('minecraft:coal', 1))//物品输出
        .ticks(200)//燃烧用时
        .register()
//褐铁矿石
    inWorldCrafting.burning.recipeBuilder()
        .input(item('minecraft:iron_ore'))//物品输入
        .output(item('aoa3:limonite_ore'))//物品输出
        .ticks(10)//燃烧用时
        .register()
//活塞压制合成
//铁板
    inWorldCrafting.pistonPush.recipeBuilder()
        .input(item('minecraft:iron_ingot')*3)//物品输入
        .output(item('thermalfoundation:material', 32))//物品输出
        .register()
//铁棒
    inWorldCrafting.pistonPush.recipeBuilder()
        .input(item('thermalfoundation:material', 32))//物品输入
        .output(item('immersiveengineering:material', 1))//物品输出
        .register()
//铜板
    inWorldCrafting.pistonPush.recipeBuilder()
        .input(item('thermalfoundation:material', 128)*3)//物品输入
        .output(item('thermalfoundation:material', 320))//物品输出
        .register()

//========================================================运算工艺=========================================================
//=============================计算机==============================
//========================================================气动工艺=========================================================
//=============================压力室==============================
mods.pneumaticcraft.pressure_chamber.removeByOutput(item('minecraft:diamond'))
mods.pneumaticcraft.pressure_chamber.recipeBuilder()
    .input(item('minecraft:coal')*16)
    .output(item('minecraft:diamond'))
    .pressure(4)
    .register()
mods.pneumaticcraft.pressure_chamber.recipeBuilder()
    .input(item('additions:stone_decoration')*4,item('immersiveengineering:material', 26),item('immersiveengineering:metal_decoration0', 4))
    .output(item('modularmachinery:qianghuajiaolu_controller'))
    .pressure(4)
    .register()
mods.pneumaticcraft.assembly_controller.recipeBuilder()
    .input(item('modularmachinery:small_manufacturing_machine_controller'))
    .output(item('modularmachinery:small_assembler_line_controller'))
    .laser()
    .register()
//========================================================末影接口=========================================================
//=============================合金炉==============================
mods.enderio.alloy_smelter.remove(item('enderio:item_material', 50))//删除
mods.enderio.alloy_smelter.remove(item('enderio:item_material', 49))//删除
mods.enderio.alloy_smelter.remove(item('enderio:item_material', 48))//删除
mods.enderio.alloy_smelter.remove(item('enderio:item_alloy_ingot', 3))//删除
//工业机器框架
mods.enderio.alloy_smelter.remove(item('enderio:item_material', 1))//删除
mods.enderio.alloy_smelter.recipeBuilder()
    .input(item('enderio:item_material', 51), item('thermalexpansion:frame'),item('jaopca:plate.lead_platinum')*4)
    .output(item('enderio:item_material', 1))//输出物品
    .tierAny()
    .register()
//灵魂机器框架
mods.enderio.alloy_smelter.remove(item('enderio:item_material', 53))
mods.enderio.alloy_smelter.recipeBuilder()
    .input(item('enderio:item_material', 1), item('enderio:item_material', 52))
    .output(item('enderio:item_material', 53))//输出物品
    .tierAny()
    .register()
//强化机器框架
mods.enderio.alloy_smelter.remove(item('enderio:item_material', 54))
mods.enderio.alloy_smelter.recipeBuilder()
    .input(item('enderio:item_material', 66), item('enderio:item_material', 67)*2,item('nuclearcraft:alloy', 1)*4)
    .output(item('enderio:item_material', 54))//输出物品
    .tierAny()
    .register()
//暮色合金锭
mods.enderio.alloy_smelter.recipeBuilder()
    .input(item('additions:snow_ingot'), item('twilightforest:fiery_ingot'),item('additions:twilit_ingot'))
    .output(item('additions:twilight_alloy_ingot'))//输出物品
    .tierAny()
    .register()
//红石琥珀金
mods.enderio.alloy_smelter.recipeBuilder()
    .input(item('thermalfoundation:material', 161), item('minecraft:redstone'))
    .output(item('redstonearsenal:material', 32))//输出物品
    .tierAny()
    .register()
//=======================================================龙之研究=======================================================
//能量核心
mods.draconicevolution.energy_core.setInnerBlock(7, blockstate('minecraft:stone', 1))
mods.draconicevolution.energy_core.setOuterBlock(7, blockstate('minecraft:diamond_block'))
//飞龙核心
mods.draconicevolution.fusion.removeByCatalyst(item('tconevo:material'))
mods.draconicevolution.fusion.recipeBuilder()
    .catalyst(item('draconicevolution:draconic_core'))
    .input(item('tconevo:metal'), item('draconicevolution:wyvern_energy_core'))
    .output(item('draconicevolution:wyvern_core'))
    .energy(520000)
    .tier(0)
    .register()
//飞龙金属
mods.draconicevolution.fusion.recipeBuilder()
    .catalyst(item('tconevo:material'))
    .input(item('draconicevolution:draconic_core'),item('actuallyadditions:item_crystal', 2), item('botania:manaresource', 9),item('minecraft:redstone_block'),item('minecraft:dragon_breath'))
    .output(item('tconevo:metal'))
    .energy(520000)
    .tier(0)
    .register()
//神龙金属
mods.draconicevolution.fusion.recipeBuilder()
    .catalyst(item('tconevo:metal'))
    .input(item('draconicevolution:wyvern_energy_core'), item('draconicevolution:draconic_ingot'),item('draconicevolution:draconic_ingot'),item('minecraft:nether_star'))
    .output(item('tconevo:metal', 5))
    .energy(52000000)
    .tier(2)
    .register()
//混沌金属
mods.draconicevolution.fusion.recipeBuilder()
    .catalyst(item('tconevo:metal', 5))
    .input(item('draconicevolution:awakened_core'), item('draconicevolution:draconic_energy_core'),item('minecraft:dragon_egg'),item('minecraft:dragon_egg'))
    .output(item('tconevo:metal', 10))
    .energy(5120000000)
    .tier(3)
    .register()

//=======================================================星辉魔法=======================================================
mods.astralsorcery.starlight_altar.removeByOutput(item('packagedastral:discovery_crafter'))
mods.astralsorcery.starlight_altar.removeByOutput(item('packagedastral:attunement_crafter'))
mods.astralsorcery.starlight_altar.removeByOutput(item('packagedastral:constellation_focus'))
mods.astralsorcery.starlight_altar.removeByOutput(item('astralsorcery:itemcraftingcomponent', 3))

//=======================================================血魔法=======================================================

//=============================炼金术桌==============================
mods.bloodmagic.alchemy_table.removeByOutput(item('thermalfoundation:material', 70)*2)
mods.bloodmagic.alchemy_table.removeByOutput(item('jaopca:dust.naquadria')*2)
mods.bloodmagic.alchemy_table.removeByOutput(item('jaopca:dust.naquadah')*2)