
import mods.ItemStages.addItemStage;  
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import mods.multiblockstages.IEMultiBlockStages;

IEMultiBlockStages.addStage("disable", "IE:AutoWorkbench", "§4该机器已被禁止建造");
IEMultiBlockStages.addStage("disable", "IE:Excavator", "§4该机器已被禁止建造");
IEMultiBlockStages.addStage("disable", "IE:CokeOven", "§4该机器已被禁止建造,请使用模块化焦炉");
IEMultiBlockStages.addStage("disable", "IE:AlloySmelter", "§4该机器已被禁止建造,请使用砖制合金炉");
IEMultiBlockStages.addStage("disable", "IE:BlastFurnace", "§4该机器已被禁止建造,请使用匠魂高炉");
IEMultiBlockStages.addStage("disable", "IE:BlastFurnaceAdvanced", "§4该机器已被禁止建造,请使用模块化强化高炉");

var item as IItemStack[]=[
    <aoa3:worn_book>,
];  //定义一个数组，
 
for d in item{
addItemStage("disable",d);
}  


mods.orestages.OreStages.addReplacement("disable", <fd:copper_ore>, <mekanism:oreblock:1>);
mods.orestages.OreStages.addReplacement("disable", <nuclearcraft:ore>, <mekanism:oreblock:1>);
mods.orestages.OreStages.addReplacement("disable", <nuclearcraft:ore:1>, <mekanism:oreblock:2>);
mods.orestages.OreStages.addReplacement("disable", <nuclearcraft:ore:2>, <mekanism:oreblock:4>);
mods.orestages.OreStages.addReplacement("disable", <mekanismecoenergistics:oreblock:2>, <thermalfoundation:ore:7>);
mods.orestages.OreStages.addReplacement("disable", <fd:ore:5>, <additions:deepslate_diamond_ore>);
mods.orestages.OreStages.addReplacement("disable", <fd:ore:6>, <additions:deepslate_emerald_ore>);