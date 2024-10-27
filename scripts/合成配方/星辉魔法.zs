#reloadable
#modloaded extendedcrafting
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;
//祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser");
//星辉合成台//封包星辉合成台
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("discovery_crafter", <packagedastral:discovery_crafter>, 200, 200, [
<astralsorcery:blockmarble:4>, <astralsorcery:itemwand>, <astralsorcery:blockmarble:4>,
<astralsorcery:blockinfusedwood>, <astralsorcery:blockaltar>,<astralsorcery:blockinfusedwood>,
<astralsorcery:blockmarble:4>, <packagedauto:me_package_component>, <astralsorcery:blockmarble:4>]);
//星辉祭坛//封包星辉祭坛
mods.astralsorcery.Altar.addAttunementAltarRecipe("starlightinputhatch", <packagedastral:attunement_crafter>, 500, 200, [
<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemrockcrystalsimple>,<astralsorcery:itemcraftingcomponent:2>,
<astralsorcery:blockmarble:4>, <packagedastral:discovery_crafter>, <astralsorcery:blockmarble:4>,
<astralsorcery:blockblackmarble>, <liquid:astralsorcery.liquidstarlight>, <astralsorcery:blockblackmarble>,
<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>]);
//星辉祭坛//基础星辉输入仓
mods.astralsorcery.Altar.addAttunementAltarRecipe("starlightinputhatch", <gugu-utils:starlightinputhatch>, 200, 200, [
<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:3>, <astralsorcery:itemcraftingcomponent:1>,
<astralsorcery:blockmarble:6>, <liquid:astralsorcery.liquidstarlight>, <astralsorcery:blockmarble:6>,
<astralsorcery:blockmarble:2>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:blockmarble:2>,
<modularmachinery:blockcasing>, <modularmachinery:blockcasing>, <modularmachinery:blockcasing>, <modularmachinery:blockcasing>]);
//天辉祭坛//星能聚合器
mods.astralsorcery.Altar.addConstellationAltarRecipe("starlight_infusion", <modularmachinery:starlight_infusion_controller>, 600, 200, [
<minecraft:gold_ingot>, <astralsorcery:itemcraftingcomponent:1>, <minecraft:gold_ingot>,
<astralsorcery:itemcraftingcomponent>, <liquid:astralsorcery.liquidstarlight>, <astralsorcery:itemcraftingcomponent>,
<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:4>, <modularmachinery:blockcasing:4>,
<modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>,
<modularmachinery:blockcasing:4>, <astralsorcery:blockmarble:5>,
<astralsorcery:blockmarble:5>, <astralsorcery:blockmarble:5>,
<astralsorcery:blockmarble:5>, <astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>]);
//五彩祭坛//五彩星辉输入仓
mods.astralsorcery.Altar.addTraitAltarRecipe("starlightinputhatch1", <gugu-utils:starlightinputhatch:1>, 800, 200, [
<minecraft:gold_ingot>, <astralsorcery:itemcraftingcomponent:1>, <minecraft:gold_ingot>,
<astralsorcery:itemcraftingcomponent:4>, <gugu-utils:starlightinputhatch>, <astralsorcery:itemcraftingcomponent:4>,
<modularmachinery:blockcasing:4>,<astralsorcery:blockmarble:6>, <modularmachinery:blockcasing:4>, 
<modularmachinery:blockcasing>,<modularmachinery:blockcasing>, 
<modularmachinery:blockcasing>,<modularmachinery:blockcasing>, 
<astralsorcery:blockmarble:5>,<astralsorcery:blockmarble:5>, 
<astralsorcery:blockmarble:5>,<astralsorcery:blockmarble:5>, 
<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>,
<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>,
<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockchalice>,<astralsorcery:blockchalice>,<astralsorcery:blockblackmarble>], "astralsorcery.constellation.lucerna");
//五彩祭坛//星座核心
mods.astralsorcery.Altar.addTraitAltarRecipe("constellation_focus", <packagedastral:constellation_focus>, 800, 200, [
<botania:elfglasspane>, <astralsorcery:itemcraftingcomponent:1>, <botania:elfglasspane>,
<astralsorcery:itemcraftingcomponent:3>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {}}), <astralsorcery:itemcraftingcomponent:3>,
<botania:elfglasspane>,<astralsorcery:blockprism>, <botania:elfglasspane>, 
null,null, null,null,
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.lucerna", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.bootes", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.evorsio", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.pelotrio", crystalProperties: {}}}),
<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.armara", crystalProperties: {}}}),
<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust:1>,
<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust:1>], "astralsorcery.constellation.lucerna");
//五彩祭坛//闪耀星辉输入仓
mods.astralsorcery.Altar.addTraitAltarRecipe("starlightinputhatch:2", <gugu-utils:starlightinputhatch:2>, 4000, 200, [
<astralsorcery:blockmarble:6>, <astralsorcery:itemshiftingstar>, <astralsorcery:blockmarble:6>,
<contenttweaker:sparkling_gemstones>, <gugu-utils:starlightinputhatch:1>, <contenttweaker:sparkling_gemstones>,
<modularmachinery:blockcasing:4>,<astralsorcery:blockmarble:6>, <modularmachinery:blockcasing:4>, 
<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>, 
<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>, 
<astralsorcery:blockmarble:5>,<astralsorcery:blockmarble:5>, 
<contenttweaker:sparkling_gemstones>,<contenttweaker:sparkling_gemstones>, 
<contenttweaker:sparkling_gemstones>,<contenttweaker:sparkling_gemstones>,
<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>,
<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockchalice>,<astralsorcery:blockchalice>,<astralsorcery:blockblackmarble>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust:1>,
<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust:1>], "astralsorcery.constellation.vorux");
//五彩祭坛//闪耀祭坛
mods.astralsorcery.Altar.addTraitAltarRecipe("shining_altar", <modularmachinery:shining_altar_controller>, 6000, 200, [
<astralsorcery:blockmarble:4>, <packagedastral:constellation_focus>, <astralsorcery:blockmarble:4>,
<contenttweaker:sparkling_gemstones>, <astralsorcery:blockaltar:3>, <contenttweaker:sparkling_gemstones>,
<modularmachinery:blockcasing:4>,<astralsorcery:blockmarble:6>, <modularmachinery:blockcasing:4>, 
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>, 
<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>, 
<astralsorcery:blockmarble:5>,<astralsorcery:blockmarble:5>, 
<contenttweaker:sparkling_gemstones>,<contenttweaker:sparkling_gemstones>, 
<contenttweaker:sparkling_gemstones>,<contenttweaker:sparkling_gemstones>,
<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>,
<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockchalice>,<astralsorcery:blockchalice>,<astralsorcery:blockblackmarble>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust:1>,
<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust:1>], "astralsorcery.constellation.vorux");
//五彩祭坛//闪耀宝石
mods.astralsorcery.Altar.addTraitAltarRecipe("sparkling_gemstones", <contenttweaker:sparkling_gemstones>, 2000, 200, [
<astralsorcery:itemusabledust>, null, <astralsorcery:itemusabledust>,
<astralsorcery:itemcraftingcomponent:2>,<thaumictinkerer:energetic_nitor>, <astralsorcery:itemcraftingcomponent:2>,
<astralsorcery:itemcraftingcomponent:2>,null,<astralsorcery:itemcraftingcomponent:2>, 
null,null, 
<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>, 
<minecraft:gold_ingot>,<minecraft:gold_ingot>, 
<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>, 
<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
<astralsorcery:itemusabledust>,null,null,null], "astralsorcery.constellation.vorux");