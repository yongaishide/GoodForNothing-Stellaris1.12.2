#reloadable
#modloaded extendedcrafting
import mods.botaniatweaks.Agglomeration;


//==================================================植物酿造台========================================================
//===================================================精灵门===========================================================
//机巧箱删除
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:dire_crafty_crate>);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:basic_extended_crafty_crate>);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:advanced_extended_crafty_crate>);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:elite_extended_crafty_crate>);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:ultimate_extended_crafty_crate>);
mods.botania.ElvenTrade.addRecipe([<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:magic_power"})], [<extrabotany:puredaisypendant>,<minecraft:paper>]);
//===================================================魔力池===========================================================
//魔力绿宝石
mods.botania.ManaInfusion.addInfusion(<additions:mana_emerald>, <minecraft:emerald>,10000);
//魔力尘
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:23>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <astralsorcery:itemusabledust>,500);
//魔力钢
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <thermalfoundation:material:160>,3000);
//魔力钢块
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <thermalfoundation:storage_alloy>,27000);
mods.botania.ManaInfusion.addInfusion(<integrateddynamics:menril_sapling>, <ore:treeSapling>,1000);
mods.botania.ManaInfusion.addInfusion(<botania_tweaks:compressed_tiny_potato_5>, <contenttweaker:manbo>,23300000);
//===================================================凝矿兰===========================================================
//==================================================花药台部分========================================================
//===================================================白雏菊===========================================================
//活木
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<aether_legacy:aether_log>, <botania:livingwood>);
//活石
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(<aether_legacy:holystone>, <botania:livingrock>);
//==================================================符文祭坛==========================================================
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:8>);
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:5>);
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:1>);
//神圣锭
mods.botania.RuneAltar.addRecipe(<extrabotany:material:8>, [<botania:manaresource:14>,<additions:celestial_ingot>,<extrabotany:material>,<extrabotany:material>,<extrabotany:gildedmashedpotato>,<extrabotany:material>], 50000); //注:一个魔力池为100Wmana
//魂钢锭
mods.botania.RuneAltar.addRecipe(<additions:soul_steel>, [<botania:manaresource:14>,<contenttweaker:gaia_essence>,<contenttweaker:gaia_essence>,<contenttweaker:resonance_fragment>], 500000); //注:一个魔力池为100Wmana
//暮色催化剂
mods.botania.RuneAltar.addRecipe(<additions:twilight_catalyst>, [<botania:rune:2>,<botania:rune:4>,<additions:design_diagram_of_twilight_catal>,<thaumcraft:salis_mundus>,<tconstruct:ingots:2>,<minecraft:stonebrick:3>,<aether_legacy:golden_amber>,<netherex:ghast_queen_tear>], 50000); //注:一个魔力池为100Wmana
//泰拉凝聚板
mods.botania.RuneAltar.addRecipe(<botania:terraplate>, [<additions:mana_emerald>,<minecraft:lapis_block>*3,<botania:manaresource>,<botania:manaresource:2>,<botania:rune:2>,<botania:rune>,<botania:rune:1>,<botania:rune:3>,<botania:rune:8>,<botania:manaresource:1>], 50000); //注:一个魔力池为100Wmana
//极寒符文
mods.botania.RuneAltar.addRecipe(<additions:extreme_cold_rune>, [<additions:extremely_cold_ingot>,<botania:rune:7>,<botania:rune>,<minecraft:packed_ice>], 5000);//注:一个魔力池为100Wmana
//魔力白雏菊
mods.botania.RuneAltar.addRecipe(<modularmachinery:magic_power_controller>, [<botania:floatingspecialflower>.withTag({type: "puredaisy"}),<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:magic_power"}),<modularmachinery:blockcasing>], 50000);//注:一个魔力池为100Wmana
//机械魔力祭坛
mods.botania.RuneAltar.addRecipe(<modularmachinery:jixiemolijitan_controller>, [<botania:tinyplanetblock>,<botania:spreader:1>,<modularmachinery:blockcasing>,<botania:runealtar>], 50000);//注:一个魔力池为100Wmana
//微光活木
mods.botania.RuneAltar.addRecipe(<botania:livingwood:5>, [<botania:livingwood>,<minecraft:glowstone_dust>,<embers:glimmer_shard>.withTag({light: 800}),<taiga:tiberium_crystal>], 50000);//注:一个魔力池为100Wmana
//梦魇锭
mods.botania.RuneAltar.addRecipe(<additions:nightmare>, [<botania:manaresource:14>,<tconevo:metal:30>,<extrabotany:nightmarefuel>,<extrabotany:nightmarefuel>,<extrabotany:gildedmashedpotato>,<extrabotany:nightmarefuel>], 50000);//注:一个魔力池为100Wmana
//山铜锭
mods.botania.RuneAltar.addRecipe(<additions:orichalcum>, [<botania:manaresource:14>,<botania:manaresource:14>,<extrabotany:material:3>,<extrabotany:gildedmashedpotato>,<botania:manaresource:5>,<botania:manaresource:5>,<botania:manaresource:5>,<botania:manaresource:5>], 150000);//注:一个魔力池为100Wmana
//===================================================凝聚板===========================================================
//末地通行证
Agglomeration.addRecipe(<additions:terminal_pass>,
[<additions:twilit_ingot>,<additions:lieyang_ingot>,<additions:netherite_ingot>]
,1000000,0xA439FB,0xFF6600,
<avaritiatweaks:gaia_block>,<abyssalcraft:ingotblock:2>,<botania:storage:4>,null,null,null);
//泰拉钢
Agglomeration.removeRecipe(<botania:manaresource:4>,[<botania:manaresource:2>,<botania:manaresource>,<botania:manaresource:1>]);
Agglomeration.addRecipe(<botania:manaresource:4>,[<botania:manaresource:1>,<botania:manaresource:2>,<botania:manaresource>,<additions:mana_emerald>,<botanicadds:mana_lapis>],500000);
//盖亚钢锭
Agglomeration.addRecipe(<botanicadds:gaiasteel_ingot>,[<additions:soul_steel>,<botania:manaresource:8>,<botania:manaresource:9>],1000000,0xbff9ff,0x882025,
<botania:storage:1>,<botanicadds:elven_lapis_block>,<botanicadds:dreamrock>,null,null,null);
