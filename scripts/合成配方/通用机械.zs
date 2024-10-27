#reloadable
#modloaded extendedcrafting
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;


import mods.mekanism.infuser;
//富集仓
mods.mekanism.enrichment.removeRecipe(<minecraft:quartz_ore>);
mods.mekanism.enrichment.removeRecipe(<jaopca:mekanism_dirty_dust.naquadah>);
mods.mekanism.enrichment.removeRecipe(<additions:naquadah_ore>);
mods.mekanism.enrichment.addRecipe(<ore:oreQuartz>, <nuclearcraft:gem_dust:2>*2);
//粉碎机
mods.mekanism.crusher.removeRecipe(<nuclearcraft:gem:6>);

//冶金灌注机
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>);
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
mods.mekanism.infuser.removeRecipe(<mekanism:ingot:2>);
mods.mekanism.infuser.removeRecipe(<mekanismecoenergistics:morealloy:3>);
mods.mekanism.infuser.removeRecipe(<mekanismecoenergistics:alloyavaritia>);

mods.mekanism.infuser.addRecipe("CRYSTAL",10, <additions:twilight_alloy_ingot>, <mekanismecoenergistics:alloyavaritia>);
mods.mekanism.infuser.addRecipe("EMERALD",20, <additions:quantum_ingot>, <mekanismecoenergistics:morealloy:3>);
mods.mekanism.infuser.addRecipe("REDSTONE",10, <thermalfoundation:material:160>, <mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("REDSTONE",80, <contenttweaker:dianluban_5>, <contenttweaker:dianluban_6>);

//化学清洗机
mods.mekanism.chemical.washer.removeRecipe(<gas:nuclearwaste>);

//加压反应室
//mods.mekanism.reaction.removeRecipe(null, <gas:antimatter>, <mekanism:cosmicmatter>, <liquid:water>, <gas:unstabledimensional>);


//聚变冷却 fusioncooling
mods.mekanism.fusioncooling.removeRecipe(<liquid:liquidsodium>);
mods.mekanism.fusioncooling.addRecipe(<liquid:liquidantimatter>*1,<liquid:dark_matter>*1);

//电解分离器
mods.mekanism.separator.removeRecipe(<liquid:brine>);

//热力盐塔
mods.mekanism.thermalevaporation.removeRecipe(<liquid:liquidsodium>);

//化学结晶器
mods.mekanism.chemical.crystallizer.removeRecipe(<mekanism:antimatterpellet>);

//细胞提取机
mods.mekanism.cellextractor.removeRecipe(<minecraft:iron_ore>);
mods.mekanism.cellextractor.addRecipe(<iceandfire:fire_dragon_flesh>,<iceandfire:fire_dragon_blood>,<iceandfire:fire_dragon_blood>,0.3);
mods.mekanism.cellextractor.addRecipe(<iceandfire:ice_dragon_flesh>,<iceandfire:ice_dragon_blood>,<iceandfire:ice_dragon_blood>,0.3);
mods.mekanism.cellextractor.addRecipe(<iceandfire:lightning_dragon_flesh>,<iceandfire:lightning_dragon_blood>,<iceandfire:lightning_dragon_blood>,0.3);
mods.mekanism.cellextractor.addRecipe(<iceandfire:fire_dragon_heart>,<draconicevolution:dragon_heart>,<iceandfire:fire_dragon_blood>,0.3);
mods.mekanism.cellextractor.addRecipe(<iceandfire:ice_dragon_heart>,<draconicevolution:dragon_heart>,<iceandfire:ice_dragon_blood>,0.3);
mods.mekanism.cellextractor.addRecipe(<iceandfire:lightning_dragon_heart>,<draconicevolution:dragon_heart>,<iceandfire:lightning_dragon_blood>,0.3);

//化学结晶器
//mods.mekanism.chemical.crystallizer.addRecipe(<gas:water>, <minecraft:ice>);
//环境气体收集器