#loader contenttweaker

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;

import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;

function getDrawSpeed(inversed as float) as float {
    return (1.0f / inversed as float) as float;
}
val lieyang = ExtendedMaterialBuilder.create("lieyang");  
lieyang.color = Color.fromHex("F48B8B").getIntColor();  //颜色
lieyang.craftable = false;  //部件台是否能制作
lieyang.castable = true;  //冶炼炉制作
lieyang.representativeItem = <item:additions:lieyang_ingot>;  //匠魂宝典显示的物品
lieyang.liquid = <liquid:lieyang>;  //冶炼炉需要的流体
lieyang.localizedName = game.localize("烈阳");  //书中显示的名字
lieyang.addHeadMaterialStats(200, 7.5, 10, 5);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
lieyang.addHandleMaterialStats(0.2, 70);  //手柄：手柄系数，耐久
lieyang.addExtraMaterialStats(-30);  //其他部件：耐久
lieyang.addBowMaterialStats(1.2, 1, 0.2);  //拉弓速度1 范围系数，附加伤害
lieyang.addProjectileMaterialStats();  //箭头
lieyang.addCoreMaterialStats(80, 4);  //基底：耐久，护甲
lieyang.addPlatesMaterialStats(0.25, 10, 0.25);  //护甲板：强化，耐久，韧性
lieyang.addTrimMaterialStats(20);  //夹板：耐久
lieyang.register();

val snow = ExtendedMaterialBuilder.create("snow");  
snow.color = Color.fromHex("86FFFD").getIntColor();  //颜色
snow.craftable = false;  //部件台是否能制作
snow.castable = true;  //冶炼炉制作
snow.representativeItem = <item:additions:snow_ingot>;  //匠魂宝典显示的物品
snow.liquid = <liquid:snow>;  //冶炼炉需要的流体
snow.localizedName = game.localize("冰雪");  //书中显示的名字
snow.addHeadMaterialStats(200, 6.5, 8, 4);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
snow.addHandleMaterialStats(0.9, 70);  //手柄：手柄系数，耐久
snow.addExtraMaterialStats(90);  //其他部件：耐久
snow.addBowMaterialStats(1.2, 1, 0.2);  //拉弓速度1 范围系数，附加伤害
snow.addProjectileMaterialStats();  //箭头
snow.addCoreMaterialStats(80, 21);  //基底：耐久，护甲
snow.addPlatesMaterialStats(1, 90, 5);  //护甲板：强化，耐久，韧性
snow.addTrimMaterialStats(200);  //夹板：耐久
snow.register();
val celestial = ExtendedMaterialBuilder.create("celestial");  
celestial.color = Color.fromHex("FFEA81").getIntColor();  //颜色
celestial.craftable = false;  //部件台是否能制作
celestial.castable = true;  //冶炼炉制作
celestial.representativeItem = <item:additions:celestial_ingot>;  //匠魂宝典显示的物品
celestial.liquid = <liquid:celestial>;  //冶炼炉需要的流体
celestial.localizedName = game.localize("天神");  //书中显示的名字
celestial.addHeadMaterialStats(200, 6.5, 8, 4);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
celestial.addHandleMaterialStats(0.9, 70);  //手柄：手柄系数，耐久
celestial.addExtraMaterialStats(90);  //其他部件：耐久
celestial.addBowMaterialStats(1.2, 1, 0.2);  //拉弓速度1 范围系数，附加伤害
celestial.addProjectileMaterialStats();  //箭头
celestial.addCoreMaterialStats(80, 21);  //基底：耐久，护甲
celestial.addPlatesMaterialStats(1, 90, 5);  //护甲板：强化，耐久，韧性
celestial.addTrimMaterialStats(200);  //夹板：耐久
celestial.register();
val diamond = ExtendedMaterialBuilder.create("diamond");  
diamond.color = Color.fromHex("4AEDD9").getIntColor();  //颜色
diamond.craftable = false;  //部件台是否能制作
diamond.castable = true;  //冶炼炉制作
diamond.representativeItem = <item:minecraft:diamond>;  //匠魂宝典显示的物品
diamond.liquid = <liquid:diamond>;  //冶炼炉需要的流体
diamond.localizedName = game.localize("钻石");  //书中显示的名字
diamond.addHeadMaterialStats(1561, 5, 6, 3);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
diamond.addHandleMaterialStats(1, 70);  //手柄：手柄系数，耐久
diamond.addExtraMaterialStats(70);  //其他部件：耐久
diamond.addBowMaterialStats(1, 1, 4.8);  //拉弓速度1 范围系数，附加伤害
diamond.addProjectileMaterialStats();  //箭头
diamond.addCoreMaterialStats(70, 18);  //基底：耐久，护甲
diamond.addPlatesMaterialStats(1, 70, 7);  //护甲板：强化，耐久，韧性
diamond.addTrimMaterialStats(200);  //夹板：耐久
diamond.register();
val molizuanshi = ExtendedMaterialBuilder.create("molizuanshi");  
molizuanshi.color = Color.fromHex("4AEDD9").getIntColor();  //颜色
molizuanshi.craftable = true;  //部件台是否能制作
molizuanshi.representativeItem = <item:botania:manaresource:2>;  //匠魂宝典显示的物品
molizuanshi.localizedName = game.localize("魔力钻石");  //书中显示的名字
molizuanshi.addItem(<item:botania:manaresource:2>);  //需要的物品
molizuanshi.addHeadMaterialStats(1000, 6, 7, 4);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
molizuanshi.addHandleMaterialStats(1.25, 50);  //手柄：手柄系数，耐久
molizuanshi.addExtraMaterialStats(80);  //其他部件：耐久
molizuanshi.addBowMaterialStats(1.1, 1.3, 5.5);  //拉弓速度1 范围系数，附加伤害
molizuanshi.addProjectileMaterialStats();  //箭头
molizuanshi.addCoreMaterialStats(24, 21.5);  //基底：耐久，护甲
molizuanshi.addPlatesMaterialStats(1.4, 16, 4.5);  //护甲板：强化，耐久，韧性
molizuanshi.addTrimMaterialStats(16);  //夹板：耐久
molizuanshi.register();
val cosmic = ExtendedMaterialBuilder.create("cosmic");  
cosmic.color = Color.fromHex("9954b0").getIntColor();  //颜色
cosmic.craftable = false;  //部件台是否能制作
cosmic.castable = true;  //冶炼炉制作
cosmic.representativeItem = <item:additions:cosmic_ingot>;  //匠魂宝典显示的物品
cosmic.liquid = <liquid:cosmic>;  //冶炼炉需要的流体
cosmic.localizedName = game.localize("宇宙");  //书中显示的名字
cosmic.addHeadMaterialStats(9999, 32, 99, 13);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
cosmic.addHandleMaterialStats(2, 3000);  //手柄：手柄系数，耐久
cosmic.addExtraMaterialStats(700);  //其他部件：耐久
cosmic.addBowMaterialStats(0.5, 2, 49);  //拉弓速度1 范围系数，附加伤害
cosmic.addProjectileMaterialStats();  //箭头
cosmic.addCoreMaterialStats(1680, 200);  //基底：耐久，护甲
cosmic.addPlatesMaterialStats(44, 700, 10);  //护甲板：强化，耐久，韧性
cosmic.addTrimMaterialStats(200);  //夹板：耐久
cosmic.register();
val chongnengzuanshishuijing = ExtendedMaterialBuilder.create("chongnengzuanshishuijing");  
chongnengzuanshishuijing.color = Color.fromHex("4AEDD9").getIntColor();  //颜色
chongnengzuanshishuijing.craftable = true;  //部件台是否能制作
chongnengzuanshishuijing.representativeItem = <item:actuallyadditions:item_crystal_empowered:2>;  //匠魂宝典显示的物品
chongnengzuanshishuijing.localizedName = game.localize("充能钻石水晶");  //书中显示的名字
chongnengzuanshishuijing.addHeadMaterialStats(1380, 6.4, 7.2, 4);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
chongnengzuanshishuijing.addHandleMaterialStats(1.25, 50);  //手柄：手柄系数，耐久
chongnengzuanshishuijing.addItem(<item:actuallyadditions:item_crystal_empowered:2>);  //需要的物品
chongnengzuanshishuijing.addExtraMaterialStats(80);  //其他部件：耐久
chongnengzuanshishuijing.addBowMaterialStats(1, 1.3, 6);  //拉弓速度1 范围系数，附加伤害
chongnengzuanshishuijing.addProjectileMaterialStats();  //箭头
chongnengzuanshishuijing.addCoreMaterialStats(22, 22);  //基底：耐久，护甲
chongnengzuanshishuijing.addPlatesMaterialStats(1.35, 15, 6);  //护甲板：强化，耐久，韧性
chongnengzuanshishuijing.addTrimMaterialStats(15);  //夹板：耐久
chongnengzuanshishuijing.register();
val chongnenglvbaoshishuijing = ExtendedMaterialBuilder.create("chongnenglvbaoshishuijing");  
chongnenglvbaoshishuijing.color = Color.fromHex("06d306").getIntColor();  //颜色
chongnenglvbaoshishuijing.craftable = true;  //部件台是否能制作
chongnenglvbaoshishuijing.representativeItem = <item:actuallyadditions:item_crystal_empowered:4>;  //匠魂宝典显示的物品
chongnenglvbaoshishuijing.localizedName = game.localize("充能绿宝石水晶");  //书中显示的名字
chongnenglvbaoshishuijing.addHeadMaterialStats(1180, 6.4, 7.5, 4);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
chongnenglvbaoshishuijing.addHandleMaterialStats(1.25, 50);  //手柄：手柄系数，耐久
chongnenglvbaoshishuijing.addItem(<item:actuallyadditions:item_crystal_empowered:4>);  //需要的物品
chongnenglvbaoshishuijing.addExtraMaterialStats(80);  //其他部件：耐久
chongnenglvbaoshishuijing.addBowMaterialStats(1, 1.3, 7);  //拉弓速度1 范围系数，附加伤害
chongnenglvbaoshishuijing.addProjectileMaterialStats();  //箭头
chongnenglvbaoshishuijing.addCoreMaterialStats(22, 23);  //基底：耐久，护甲
chongnenglvbaoshishuijing.addPlatesMaterialStats(1.35, 15, 4);  //护甲板：强化，耐久，韧性
chongnenglvbaoshishuijing.addTrimMaterialStats(15);  //夹板：耐久
chongnenglvbaoshishuijing.register();
val molilvbaoshi = ExtendedMaterialBuilder.create("molilvbaoshi");  
molilvbaoshi.color = Color.fromHex("06d306").getIntColor();  //颜色
molilvbaoshi.craftable = true;  //部件台是否能制作
molilvbaoshi.representativeItem = <item:additions:mana_emerald>;  //匠魂宝典显示的物品
molilvbaoshi.localizedName = game.localize("魔力绿宝石");  //书中显示的名字
molilvbaoshi.addItem(<item:additions:mana_emerald>);  //需要的物品
molilvbaoshi.addHeadMaterialStats(1210, 6.9, 8, 4);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
molilvbaoshi.addHandleMaterialStats(1.25, 50);  //手柄：手柄系数，耐久
molilvbaoshi.addExtraMaterialStats(80);  //其他部件：耐久
molilvbaoshi.addBowMaterialStats(1.1, 1.3, 7.5);  //拉弓速度1 范围系数，附加伤害
molilvbaoshi.addProjectileMaterialStats();  //箭头
molilvbaoshi.addCoreMaterialStats(24, 24.5);  //基底：耐久，护甲
molilvbaoshi.addPlatesMaterialStats(1.4, 16, 4.5);  //护甲板：强化，耐久，韧性
molilvbaoshi.addTrimMaterialStats(16);  //夹板：耐久
molilvbaoshi.register();
val molilvbaoshishuijing = ExtendedMaterialBuilder.create("molilvbaoshishuijing");  
molilvbaoshishuijing.color = Color.fromHex("06d306").getIntColor();  //颜色
molilvbaoshishuijing.craftable = true;  //部件台是否能制作
molilvbaoshishuijing.representativeItem = <item:additions:magicemeraldcrystal>;  //匠魂宝典显示的物品
molilvbaoshishuijing.localizedName = game.localize("魔力绿宝石水晶");  //书中显示的名字
molilvbaoshishuijing.addItem(<item:additions:magicemeraldcrystal>);  //需要的物品
molilvbaoshishuijing.addHeadMaterialStats(1250, 6.9, 8.2, 4);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
molilvbaoshishuijing.addHandleMaterialStats(1.25, 55);  //手柄：手柄系数，耐久
molilvbaoshishuijing.addExtraMaterialStats(80);  //其他部件：耐久
molilvbaoshishuijing.addBowMaterialStats(1.1, 1.3, 7.5);  //拉弓速度1 范围系数，附加伤害
molilvbaoshishuijing.addProjectileMaterialStats();  //箭头
molilvbaoshishuijing.addCoreMaterialStats(24, 25);  //基底：耐久，护甲
molilvbaoshishuijing.addPlatesMaterialStats(1.4, 17, 4.5);  //护甲板：强化，耐久，韧性
molilvbaoshishuijing.addTrimMaterialStats(17);  //夹板：耐久
molilvbaoshishuijing.register();

val chongnengmolilvbaoshishuijing = ExtendedMaterialBuilder.create("chongnengmolilvbaoshishuijing");  
chongnengmolilvbaoshishuijing.color = Color.fromHex("06d306").getIntColor();  //颜色
chongnengmolilvbaoshishuijing.craftable = true;  //部件台是否能制作
chongnengmolilvbaoshishuijing.representativeItem = <item:additions:chargingmagicemeraldcrystal>;  //匠魂宝典显示的物品
chongnengmolilvbaoshishuijing.localizedName = game.localize("充能魔力绿宝石水晶");  //书中显示的名字
chongnengmolilvbaoshishuijing.addHeadMaterialStats(1280, 7, 8.5, 4);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
chongnengmolilvbaoshishuijing.addHandleMaterialStats(1.25,300);  //手柄：手柄系数，耐久
chongnengmolilvbaoshishuijing.addItem(<item:additions:chargingmagicemeraldcrystal>);  //需要的物品
chongnengmolilvbaoshishuijing.addExtraMaterialStats(270);  //其他部件：耐久
chongnengmolilvbaoshishuijing.addBowMaterialStats(1, 1.1, 7.9);  //拉弓速度1 范围系数，附加伤害
chongnengmolilvbaoshishuijing.addProjectileMaterialStats();  //箭头
chongnengmolilvbaoshishuijing.addCoreMaterialStats(25, 25.5);  //基底：耐久，护甲
chongnengmolilvbaoshishuijing.addPlatesMaterialStats(1.35, 17.5, 5.5);  //护甲板：强化，耐久，韧性
chongnengmolilvbaoshishuijing.addTrimMaterialStats(18);  //夹板：耐久
chongnengmolilvbaoshishuijing.register();

val gaia = ExtendedMaterialBuilder.create("gaia");  
gaia.color = Color.fromHex("e4e6ac").getIntColor();  //颜色
gaia.craftable = false;  //部件台是否能制作
gaia.castable = true;  //冶炼炉制作
gaia.representativeItem = <item:botania:manaresource:14>;  //匠魂宝典显示的物品
gaia.liquid = <liquid:gaia>;  //冶炼炉需要的流体
gaia.localizedName = game.localize("盖亚魂");  //书中显示的名字
gaia.addHeadMaterialStats(1600, 8.5, 10.8, 5);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
gaia.addHandleMaterialStats(1.2, 360);  //手柄：手柄系数，耐久
gaia.addItem(<item:botania:manaresource:14>);  //需要的物品
gaia.addExtraMaterialStats(450);  //其他部件：耐久
gaia.addBowMaterialStats(1, 1.1, 7.9);  //拉弓速度1 范围系数，附加伤害
gaia.addProjectileMaterialStats();  //箭头
gaia.addCoreMaterialStats(300, 28.6);  //基底：耐久，护甲
gaia.addPlatesMaterialStats(2.8, 50, 4);  //护甲板：强化，耐久，韧性
gaia.addTrimMaterialStats(40);  //夹板：耐久
gaia.register();

val hungang = ExtendedMaterialBuilder.create("hungang");  
hungang.color = Color.fromHex("e4e6ac").getIntColor();  //颜色
hungang.craftable = false;  //部件台是否能制作
hungang.castable = true;  //冶炼炉制作
hungang.representativeItem = <item:additions:soul_steel>;  //匠魂宝典显示的物品
hungang.liquid = <liquid:soul_steel>;  //冶炼炉需要的流体
hungang.localizedName = game.localize("魂钢");  //书中显示的名字
hungang.addHeadMaterialStats(1600, 8.5, 15.8, 6);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
hungang.addHandleMaterialStats(1.2, 360);  //手柄：手柄系数，耐久
hungang.addItem(<item:additions:soul_steel>);  //需要的物品
hungang.addExtraMaterialStats(450);  //其他部件：耐久
hungang.addBowMaterialStats(1, 1.1, 8.9);  //拉弓速度1 范围系数，附加伤害
hungang.addProjectileMaterialStats();  //箭头
hungang.addCoreMaterialStats(300, 32.6);  //基底：耐久，护甲
hungang.addPlatesMaterialStats(2.8, 50, 4);  //护甲板：强化，耐久，韧性
hungang.addTrimMaterialStats(40);  //夹板：耐久
hungang.register();

val mengyan = ExtendedMaterialBuilder.create("mengyan");  
mengyan.color = Color.fromHex("6b6b6b").getIntColor();  //颜色
mengyan.craftable = false;  //部件台是否能制作
mengyan.castable = true;  //冶炼炉制作
mengyan.representativeItem = <item:additions:nightmare>;  //匠魂宝典显示的物品
mengyan.liquid = <liquid:nightmare>;  //冶炼炉需要的流体
mengyan.localizedName = game.localize("梦魇");  //书中显示的名字
mengyan.addHeadMaterialStats(1200, 8.5, 11.8, 5);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
mengyan.addHandleMaterialStats(1.2, 360);  //手柄：手柄系数，耐久
mengyan.addItem(<item:additions:nightmare>);  //需要的物品
mengyan.addExtraMaterialStats(450);  //其他部件：耐久
mengyan.addBowMaterialStats(1, 1.1, 6.9);  //拉弓速度1 范围系数，附加伤害
mengyan.addProjectileMaterialStats();  //箭头
mengyan.addCoreMaterialStats(300, 30);  //基底：耐久，护甲
mengyan.addPlatesMaterialStats(2.8, 50, 4);  //护甲板：强化，耐久，韧性
mengyan.addTrimMaterialStats(40);  //夹板：耐久
mengyan.register();

val shensheng = ExtendedMaterialBuilder.create("shensheng");  
shensheng.color = Color.fromHex("fdfdfd").getIntColor();  //颜色
shensheng.craftable = false;  //部件台是否能制作
shensheng.castable = true;  //冶炼炉制作
shensheng.representativeItem = <item:extrabotany:material:8>;  //匠魂宝典显示的物品
shensheng.liquid = <liquid:photonium>;  //冶炼炉需要的流体
shensheng.localizedName = game.localize("神圣");  //书中显示的名字
shensheng.addHeadMaterialStats(1200, 8.5, 11.8, 5);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
shensheng.addHandleMaterialStats(1.2, 360);  //手柄：手柄系数，耐久
shensheng.addExtraMaterialStats(450);  //其他部件：耐久
shensheng.addBowMaterialStats(1, 1.1, 6.9);  //拉弓速度1 范围系数，附加伤害
shensheng.addProjectileMaterialStats();  //箭头
shensheng.addCoreMaterialStats(80, 30);  //基底：耐久，护甲
shensheng.addPlatesMaterialStats(2.8, 50, 4);  //护甲板：强化，耐久，韧性
shensheng.addTrimMaterialStats(40);  //夹板：耐久
shensheng.register();

val nether = ExtendedMaterialBuilder.create("nether");  
nether.color = Color.fromHex("6b6b6b").getIntColor();  //颜色
nether.craftable = false;  //部件台是否能制作
nether.castable = true;  //冶炼炉制作
nether.representativeItem = <item:additions:netherite_ingot>;  //匠魂宝典显示的物品
nether.liquid = <liquid:nether>;  //冶炼炉需要的流体
nether.localizedName = game.localize("下界合金");  //书中显示的名字
nether.addHeadMaterialStats(3600, 11.5, 18, 7);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
nether.addHandleMaterialStats(1.4, 750);  //手柄：手柄系数，耐久
nether.addExtraMaterialStats(600);  //其他部件：耐久
nether.addBowMaterialStats(1.1, 1.3, 10.9);  //拉弓速度1 范围系数，附加伤害
nether.addProjectileMaterialStats();  //箭头
nether.addCoreMaterialStats(800, 38);  //基底：耐久，护甲
nether.addPlatesMaterialStats(4.8, 90, 4);  //护甲板：强化，耐久，韧性
nether.addTrimMaterialStats(200);  //夹板：耐久
nether.register();

val final = ExtendedMaterialBuilder.create("final");  
final.color = Color.fromHex("6b6b6b").getIntColor();  //颜色
final.craftable = false;  //部件台是否能制作
final.castable = true;  //冶炼炉制作
final.representativeItem = <item:additions:final_ingot>;  //匠魂宝典显示的物品
final.liquid = <liquid:final>;  //冶炼炉需要的流体
final.localizedName = game.localize("终焉");  //书中显示的名字
final.addHeadMaterialStats(5600, 18.5, 28, 7);  //顶端：耐久，挖掘速度，攻击力，挖掘等级
final.addHandleMaterialStats(1.6, 750);  //手柄：手柄系数，耐久
final.addExtraMaterialStats(900);  //其他部件：耐久
final.addBowMaterialStats(0.9, 1.4, 18.9);  //拉弓速度1 范围系数，附加伤害
final.addProjectileMaterialStats();  //箭头
final.addCoreMaterialStats(4800, 66);  //基底：耐久，护甲
final.addPlatesMaterialStats(6.8, 900, 24);  //护甲板：强化，耐久，韧性
final.addTrimMaterialStats(2000);  //夹板：耐久
final.register();