
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.FactoryRecipeStartEvent;

import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.SimpleMachineUpgrade;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineEvent;
import mods.modularmachinery.MachineUpgradeHelper;
import mods.modularmachinery.MachineUpgradeBuilder;
import mods.modularmachinery.UpgradeEventHandlerWrapper;

#priority 150
#loader crafttweaker reloadable

MachineUpgradeBuilder.newBuilder("overclocking_lv_1", "§a模块化升级：超频", 1, 15)
    .addDescriptions(
        "每个超频升级都会将机械的工作耗时 §ax0.99§7（循环乘算），能量消耗 §cx1.05§7（循环乘算）。",
        "最多可堆叠 §e15§7 种相同升级。"
    )
    //为GUI添加升级介绍
    .setBusGUIDescriptionHandler(function(u as SimpleMachineUpgrade) {
        val upgrade = MachineUpgradeHelper.castToSimpleMachineUpgrade(u);
        val stackSize = upgrade.stackSize > 15 ? 15 : upgrade.stackSize;
        var durationMul = 1.0F;
        var energyMul = 1.0F;

        for i in 0 to stackSize {
            durationMul *= 0.99;//耗时倍率
            energyMul *= 1.05;//耗能倍率
        }

        val desc as string[] = [
            "§a超频升级：耗时乘数：" + ((durationMul * 1000) as int) as float / 1000 + "x",
            "§a超频升级：能量消耗乘数：§c" + ((energyMul * 1000) as int) as float / 1000 + "x",
        ];

        return desc;
    })
    //为控制器添加升级
    .addRecipeStartHandler(function(e as RecipeStartEvent, upgrade as SimpleMachineUpgrade) {
        val event = MMEvents.castToRecipeStartEvent(e);
        val stackSize = upgrade.stackSize > 15 ? 15 : upgrade.stackSize;
        var durationMul = 1.0F;
        var energyMul = 1.0F;

        for i in 0 to stackSize {
            durationMul *= 0.99;
            energyMul *= 1.05;
        }

        var ctrl = event.controller;
        ctrl.addModifier("overclocking_lv_1_duration", RecipeModifierBuilder.create("modularmachinery:duration", "input", durationMul, 1, false).build());
        ctrl.addModifier("overclocking_lv_1_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", energyMul, 1, false).build());
    })
    //为工厂控制器添加升级
    .addFactoryRecipeStartHandler(function(e as FactoryRecipeStartEvent, upgrade as SimpleMachineUpgrade) {
        val event = MMEvents.castToFactoryRecipeStartEvent(e);
        val stackSize = upgrade.stackSize > 15 ? 15 : upgrade.stackSize;
        var durationMul = 1.0F;
        var energyMul = 1.0F;

        for i in 0 to stackSize {
            durationMul *= 0.99;
            energyMul *= 1.05;
        }

        var thread = event.factoryRecipeThread;
        thread.addModifier("overclocking_lv_1_duration", RecipeModifierBuilder.create("modularmachinery:duration", "input", durationMul, 1, false).build());
        thread.addModifier("overclocking_lv_1_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", energyMul, 1, false).build());
    })
    .buildAndRegister();

MachineUpgradeHelper.addFixedUpgrade(<bountifulbaubles:ringoverclocking>, "overclocking_lv_1");
