#reloadable
#modloaded extendedcrafting
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;
import mods.tconstruct.Fuel;
import mods.tcomplement.highoven.HighOven;

//融化
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<bloodmagic:soul_snare>);
HighOven.removeMeltingOverride(<liquid:aluminum>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>,<thermalfoundation:ore:4>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>,<thermalfoundation:material:68>);
//==========================浇铸台/盆==================================
//浇注台删除
mods.tconstruct.Casting.removeTableRecipe(<tcomplement:materials:1>);
//黑铁板
mods.tconstruct.Casting.addTableRecipe(<extendedcrafting:material:2>,<tconstruct:cast_custom:3>,<liquid:black_iron>,144,false,200);
//齿轮铸模
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>,<enderio:item_material:11>,<liquid:gold>,288,true,200);
//树脂片
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:shuzhipian_1>,<tconstruct:cast_custom:3>,<liquid:resin>,144,false,200);
//强化高炉砖
mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:stone_decoration:2>,<tcomplement:scorched_block:3>,<liquid:steel>,288,true,20);
//强化焦炉砖
mods.tconstruct.Casting.addBasinRecipe(<additions:stone_decoration>,<immersiveengineering:stone_decoration>,<liquid:steel>,288,true,20);
//浇铸盆

