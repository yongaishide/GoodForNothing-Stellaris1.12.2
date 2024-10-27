#priority 10
#loader contenttweaker

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;

import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;


//泥浆
var mud_liquid = VanillaFactory.createFluid("mud_liquid", Color.fromHex("888888").getIntColor());
mud_liquid.colorize = true;
mud_liquid.temperature = 25;
mud_liquid.luminosity = 0;
mud_liquid.stillLocation = "base:fluids/liquid";
mud_liquid.flowingLocation = "base:fluids/liquid_flow";
mud_liquid.register();
//维度物质
regFluid("weiduwuzhi", 0xFFAEDE, 293);
//超净水
regFluid("zhengliushui", 0x53B4C5, 293);
//苯
regFluid("huaxue_1", 0xFFFFFF, 293);
//苯酚
regFluid("huaxue_2", 0x5C371E, 293);
//双酚A
regFluid("huaxue_3", 0xFFFFFF, 293);
//环氧氯丙烷
regFluid("huaxue_4", 0x521812, 293);
//柴油
regFluid("huaxue_5", 0x42290F, 293);
//液化石油气
regFluid("huaxue_6", 0x4F5F4E, 293);
//煤油
regFluid("huaxue_7", 0x0D0E0C, 263);
//盐酸
regFluid("huaxue_8", 0xFFFFFF, 293);
//丙酮
regFluid("huaxue_9", 0x8F8F8F, 293);
//磷酸
regFluid("huaxue_10", 0xAFAF0D, 293);
//轻度蒸汽裂化重燃油
regFluid("huaxue_11", 0xAFAF0D, 775);
//稀盐酸
regFluid("huaxue_12", 0xFFFFFF, 293);
//甘油
regFluid("huaxue_13", 0x67A567, 293);
//稀丙基氯
regFluid("huaxue_14", 0x67A567, 293);
//次氯酸
regFluid("huaxue_15", 0x5E7277, 293);
//轻燃油
regFluid("huaxue_16", 0xC2B711, 293);
//甲苯
regFluid("huaxue_17", 0xC2B711, 293);
//润滑油
regFluid("huaxue_18", 0xFDE995, 293);
regFluid("huaxue_19", 0xFDE995, 293);
regFluid("huaxue_20", 0xFDE995, 293);
regFluid("huaxue_21", 0xFDE995, 293);
regFluid("huaxue_22", 0xFCEBB1, 293);
regFluid("huaxue_23", 0xFBDB7D, 293);
regFluid("huaxue_24", 0xFCEBB1, 293);
regFluid("huaxue_25", 0xFAF7CB, 293);
regFluid("huaxue_26", 0xC1C11A, 293);
regFluid("huaxue_27", 0xBDB433, 293);
regFluid("huaxue_28", 0xD1C291, 293);
regFluid("huaxue_29", 0xB8AC7F, 293);
regFluid("huaxue_30", 0x989105, 293);
regFluid("huaxue_31", 0x827B05, 293);
regFluid("huaxue_32", 0xC1B705, 293);
regFluid("huaxue_33", 0xA29606, 293);
regFluid("huaxue_34", 0x925D1D, 293);
regFluid("huaxue_35", 0x5B361D, 293);
regFluid("huaxue_36", 0x22160E, 293);
regFluid("huaxue_37", 0x9F4305, 293);
regFluid("huaxue_38", 0x4F7633, 293);
regFluid("huaxue_39", 0x938577, 293);
regFluid("huaxue_40", 0xAE9282, 293);
regFluid("huaxue_41", 0x141438, 293);
regFluid("huaxue_42", 0xA49587, 293);
regFluid("huaxue_43", 0xA69249, 293);
regFluid("huaxue_44", 0x465116, 293);
regFluid("huaxue_45", 0x161615, 293);
regFluid("huaxue_46", 0xBEBEBE, 293);
regFluid("huaxue_47", 0xB8B8A3, 293);
regFluid("huaxue_48", 0x89C0FF, 293);
regFluid("huaxue_49", 0x3C2B2B, 293);
regFluid("huaxue_50", 0x222B42, 293);
regFluid("huaxue_51", 0x7A8068, 293);
regFluid("huaxue_52", 0x2B472B, 293);
regFluid("huaxue_53", 0x2B472B, 293);
regFluid("huaxue_54", 0x308430, 293);
regFluid("huaxue_55", 0x308430, 293);
regFluid("huaxue_56", 0x989806, 293);
regFluid("huaxue_57", 0x989406, 293);
regFluid("huaxue_58", 0x050543, 293);
regFluid("huaxue_59", 0xB28143, 293);
regFluid("huaxue_60", 0xC08729, 293);
regFluid("huaxue_61", 0xCBE72C, 293);
regFluid("huaxue_62", 0x67A567, 293);
regFluid("huaxue_63", 0x39b039, 293);
regFluid("huaxue_64", 0x39b039, 293);
regFluid("huaxue_65", 0x39b039, 293);
regFluid("huaxue_66", 0x39b039, 293);
regFluid("huaxue_67", 0x39b039, 293);
regFluid("huaxue_68", 0xCBE72C, 293);








function regFluid(regName as string, color as int, temperature as int) {
    var fluid = VanillaFactory.createFluid(regName, color);
    fluid.colorize = true;
    fluid.temperature = temperature;
    fluid.luminosity = 0;
    fluid.stillLocation = "base:fluids/liquid";
    fluid.flowingLocation = "base:fluids/liquid_flow";
    fluid.register();
}