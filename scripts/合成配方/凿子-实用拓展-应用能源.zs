#reloadable
#modloaded extendedcrafting
import mods.chisel.Carving;
import mods.appliedenergistics2.Grinder;
import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.BallOfFur;
import mods.actuallyadditions.Compost;
import mods.actuallyadditions.Crusher;
import mods.actuallyadditions.Empowerer;
import mods.actuallyadditions.MiningLens;
import mods.actuallyadditions.OilGen;
import mods.actuallyadditions.TreasureChest;


//me电路板蚀刻器
mods.threng.Etcher.addRecipe(<contenttweaker:chuliqi_1>, <appliedenergistics2:material:12>, <minecraft:redstone>, <appliedenergistics2:material:5>);
mods.threng.Etcher.addRecipe(<contenttweaker:dianluban_5>, <contenttweaker:dianluban_4>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>);
//聚合器
mods.threng.Aggregator.removeRecipe(<threng:material>);
mods.threng.Aggregator.addRecipe(<threng:material>, <appliedenergistics2:material:45>, <threng:material:1>, <minecraft:iron_ingot>);
//石英模具
Grinder.addRecipe(<thermalfoundation:material>*9, <minecraft:iron_block>, 9);
Grinder.addRecipe(<jaopca:dust.rosite>*9, <aoa3:rosite_block>, 9);
Grinder.addRecipe(<jaopca:dust.limonite>*9, <aoa3:limonite_block>, 9);
Grinder.addRecipe(<jaopca:dust.rosite>, <aoa3:scrap_metal>*2, 9,<jaopca:dust.limonite>);
Grinder.removeRecipe(<thermalfoundation:ore:6>);
Grinder.removeRecipe(<additions:naquadah_ore>);
Grinder.removeRecipe(<additions:naquadria_ore>);

//原子再构机
AtomicReconstructor.addRecipe(<additions:magicemeraldcrystal>, <additions:mana_emerald>, 3000);

//磨粉仓
Crusher.removeRecipe(<jaopca:dust.naquadah>);
Crusher.removeRecipe(<thermalfoundation:material:70>);
Crusher.removeRecipe(<thermalfoundation:material:69>);
Crusher.removeRecipe(<jaopca:dust.naquadria>);
Crusher.addRecipe(<jaopca:mekanism_dirty_dust.naquadah>, <jaopca:mekanism_clump.naquadah>);

//原油发电机
OilGen.addRecipe(<liquid:refined_fuel>, 1500, 1000);
OilGen.addRecipe(<liquid:crude_oil>, 400, 1000);
OilGen.addRecipe(<liquid:hootch>, 300, 1000);
OilGen.addRecipe(<liquid:refined_oil>, 1000, 1000);
OilGen.addRecipe(<liquid:rocket_fuel>, 1000, 1000);
OilGen.addRecipe(<liquid:biodiesel>, 500, 1000);

//充能台
Empowerer.addRecipe(<additions:chargingmagicemeraldcrystal>, <additions:magicemeraldcrystal>, <ore:mysticFlowerLime>, <ore:petalLime>, <botania:manaresource:1>, <botania:manaresource:23>, 500, 100);

//ME玻璃线缆
Carving.addGroup("part");
Carving.addVariation("part", <appliedenergistics2:part>);
Carving.addVariation("part", <appliedenergistics2:part:1>);
Carving.addVariation("part", <appliedenergistics2:part:2>);
Carving.addVariation("part", <appliedenergistics2:part:3>);
Carving.addVariation("part", <appliedenergistics2:part:4>);
Carving.addVariation("part", <appliedenergistics2:part:5>);
Carving.addVariation("part", <appliedenergistics2:part:6>);
Carving.addVariation("part", <appliedenergistics2:part:7>);
Carving.addVariation("part", <appliedenergistics2:part:8>);
Carving.addVariation("part", <appliedenergistics2:part:9>);
Carving.addVariation("part", <appliedenergistics2:part:10>);
Carving.addVariation("part", <appliedenergistics2:part:11>);
Carving.addVariation("part", <appliedenergistics2:part:12>);
Carving.addVariation("part", <appliedenergistics2:part:13>);
Carving.addVariation("part", <appliedenergistics2:part:14>);
Carving.addVariation("part", <appliedenergistics2:part:15>);
Carving.addVariation("part", <appliedenergistics2:part:16>);

//ME包层线缆
Carving.addGroup("part_1");
Carving.addVariation("part_1", <appliedenergistics2:part:20>);
Carving.addVariation("part_1", <appliedenergistics2:part:21>);
Carving.addVariation("part_1", <appliedenergistics2:part:22>);
Carving.addVariation("part_1", <appliedenergistics2:part:23>);
Carving.addVariation("part_1", <appliedenergistics2:part:24>);
Carving.addVariation("part_1", <appliedenergistics2:part:25>);
Carving.addVariation("part_1", <appliedenergistics2:part:26>);
Carving.addVariation("part_1", <appliedenergistics2:part:27>);
Carving.addVariation("part_1", <appliedenergistics2:part:28>);
Carving.addVariation("part_1", <appliedenergistics2:part:29>);
Carving.addVariation("part_1", <appliedenergistics2:part:30>);
Carving.addVariation("part_1", <appliedenergistics2:part:31>);
Carving.addVariation("part_1", <appliedenergistics2:part:32>);
Carving.addVariation("part_1", <appliedenergistics2:part:33>);
Carving.addVariation("part_1", <appliedenergistics2:part:34>);
Carving.addVariation("part_1", <appliedenergistics2:part:35>);
Carving.addVariation("part_1", <appliedenergistics2:part:36>);


//ME智能线缆
Carving.addGroup("part_2");
Carving.addVariation("part_2", <appliedenergistics2:part:40>);
Carving.addVariation("part_2", <appliedenergistics2:part:41>);
Carving.addVariation("part_2", <appliedenergistics2:part:42>);
Carving.addVariation("part_2", <appliedenergistics2:part:43>);
Carving.addVariation("part_2", <appliedenergistics2:part:44>);
Carving.addVariation("part_2", <appliedenergistics2:part:45>);
Carving.addVariation("part_2", <appliedenergistics2:part:46>);
Carving.addVariation("part_2", <appliedenergistics2:part:47>);
Carving.addVariation("part_2", <appliedenergistics2:part:48>);
Carving.addVariation("part_2", <appliedenergistics2:part:49>);
Carving.addVariation("part_2", <appliedenergistics2:part:50>);
Carving.addVariation("part_2", <appliedenergistics2:part:51>);
Carving.addVariation("part_2", <appliedenergistics2:part:52>);
Carving.addVariation("part_2", <appliedenergistics2:part:53>);
Carving.addVariation("part_2", <appliedenergistics2:part:54>);
Carving.addVariation("part_2", <appliedenergistics2:part:55>);
Carving.addVariation("part_2", <appliedenergistics2:part:56>);


//ME致密线缆
Carving.addGroup("part_3");
Carving.addVariation("part_3", <appliedenergistics2:part:60>);
Carving.addVariation("part_3", <appliedenergistics2:part:61>);
Carving.addVariation("part_3", <appliedenergistics2:part:62>);
Carving.addVariation("part_3", <appliedenergistics2:part:63>);
Carving.addVariation("part_3", <appliedenergistics2:part:64>);
Carving.addVariation("part_3", <appliedenergistics2:part:65>);
Carving.addVariation("part_3", <appliedenergistics2:part:66>);
Carving.addVariation("part_3", <appliedenergistics2:part:67>);
Carving.addVariation("part_3", <appliedenergistics2:part:68>);
Carving.addVariation("part_3", <appliedenergistics2:part:69>);
Carving.addVariation("part_3", <appliedenergistics2:part:70>);
Carving.addVariation("part_3", <appliedenergistics2:part:71>);
Carving.addVariation("part_3", <appliedenergistics2:part:72>);
Carving.addVariation("part_3", <appliedenergistics2:part:73>);
Carving.addVariation("part_3", <appliedenergistics2:part:74>);
Carving.addVariation("part_3", <appliedenergistics2:part:75>);
Carving.addVariation("part_3", <appliedenergistics2:part:76>);


//ME致密包层线缆
Carving.addGroup("part_4");
Carving.addVariation("part_4", <appliedenergistics2:part:500>);
Carving.addVariation("part_4", <appliedenergistics2:part:501>);
Carving.addVariation("part_4", <appliedenergistics2:part:502>);
Carving.addVariation("part_4", <appliedenergistics2:part:503>);
Carving.addVariation("part_4", <appliedenergistics2:part:504>);
Carving.addVariation("part_4", <appliedenergistics2:part:505>);
Carving.addVariation("part_4", <appliedenergistics2:part:506>);
Carving.addVariation("part_4", <appliedenergistics2:part:507>);
Carving.addVariation("part_4", <appliedenergistics2:part:508>);
Carving.addVariation("part_4", <appliedenergistics2:part:509>);
Carving.addVariation("part_4", <appliedenergistics2:part:510>);
Carving.addVariation("part_4", <appliedenergistics2:part:511>);
Carving.addVariation("part_4", <appliedenergistics2:part:512>);
Carving.addVariation("part_4", <appliedenergistics2:part:513>);
Carving.addVariation("part_4", <appliedenergistics2:part:514>);
Carving.addVariation("part_4", <appliedenergistics2:part:515>);
Carving.addVariation("part_4", <appliedenergistics2:part:516>); 


//编程电路
Carving.addGroup("bianchengdianlu");
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_0>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_1>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_2>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_3>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_4>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_5>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_6>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_7>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_8>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_9>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_10>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_11>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_12>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_13>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_14>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_15>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_16>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_17>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_18>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_19>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_20>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_21>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_22>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_23>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_24>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_25>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_26>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_27>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_28>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_29>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_30>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_31>);
Carving.addVariation("bianchengdianlu", <contenttweaker:programmed_circuit_32>);



