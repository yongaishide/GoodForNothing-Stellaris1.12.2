import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.IngredientArrayBuilder;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;

MMEvents.onMachinePostTick("industrial_blast_furnace_mk1", function(event as MachineTickEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val machineTemp = isNull(map["temperature"]) ? 300 as float : map["temperature"].asFloat();

    if (ctrl.isWorking) {
        val newTemp = machineTemp + increaseTemperature(machineTemp);
            map["temperature"] = newTemp;
            ctrl.customData = data;
            val modifier as float = min(2500 as float / machineTemp, 3.5);
            ctrl.addModifier("efficiency", RecipeModifierBuilder.create("modularmachinery:duration", "input", modifier, 1, false).build());
    } else {
        val newTemp = machineTemp - decreaseTemperature(machineTemp);
        if (newTemp != machineTemp) {
            map["temperature"] = newTemp;
            ctrl.customData = data;
        }
    }
});

MMEvents.onControllerGUIRender("industrial_blast_furnace_mk1", function(event as ControllerGUIRenderEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData.asMap();
    val machineTemp = isNull(data["temperature"]) ? 300 as float : data["temperature"].asFloat();
    val modifier as float = min(2500 as float / machineTemp, 3.5) * 100;
    var info as string[] = [
        "§e内部温度：§c" + (((machineTemp * 10) as int) as float) / 10 + "K",
        "§e熔化时间乘数：" + (modifier >= 100 ? "§c" : "§a") + (((modifier * 100) as int) as float) / 100 + "%",
    ];
    if (machineTemp <= 2500) {
        info += "§e警告：温度过低。";
    } else if (machineTemp <= 5000) {
        info += "§e警告：温度偏低。";
    }

    event.extraInfo = info;
});

MMEvents.onMachinePostTick("industrial_blast_furnace_mk2", function(event as MachineTickEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val machineTemp = isNull(map["temperature"]) ? 300 as float : map["temperature"].asFloat();

    if (ctrl.isWorking) {
        val newTemp = machineTemp + increaseTemperature(machineTemp);
            map["temperature"] = newTemp;
            ctrl.customData = data;
            val modifier as float = min(2500 as float / machineTemp, 3.5);
            ctrl.addModifier("efficiency", RecipeModifierBuilder.create("modularmachinery:duration", "input", modifier, 1, false).build());
    } else {
        val newTemp = machineTemp - decreaseTemperature(machineTemp);
        if (newTemp != machineTemp) {
            map["temperature"] = newTemp;
            ctrl.customData = data;
        }
    }
});

MMEvents.onControllerGUIRender("industrial_blast_furnace_mk2", function(event as ControllerGUIRenderEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData.asMap();
    val machineTemp = isNull(data["temperature"]) ? 300 as float : data["temperature"].asFloat();
    val modifier as float = min(2500 as float / machineTemp, 3.5) * 100;
    var info as string[] = [
        "§e内部温度：§c" + (((machineTemp * 10) as int) as float) / 10 + "K",
        "§e熔化时间乘数：" + (modifier >= 100 ? "§c" : "§a") + (((modifier * 100) as int) as float) / 100 + "%",
    ];
    if (machineTemp <= 2500) {
        info += "§e警告：温度过低。";
    } else if (machineTemp <= 5000) {
        info += "§e警告：温度偏低。";
    }

    event.extraInfo = info;
});
MMEvents.onMachinePostTick("industrial_blast_furnace_mk3", function(event as MachineTickEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val machineTemp = isNull(map["temperature"]) ? 300 as float : map["temperature"].asFloat();

    if (ctrl.isWorking) {
        val newTemp = machineTemp + increaseTemperature(machineTemp);
            map["temperature"] = newTemp;
            ctrl.customData = data;
            val modifier as float = min(2500 as float / machineTemp, 3.5);
            ctrl.addModifier("efficiency", RecipeModifierBuilder.create("modularmachinery:duration", "input", modifier, 1, false).build());
    } else {
        val newTemp = machineTemp - decreaseTemperature(machineTemp);
        if (newTemp != machineTemp) {
            map["temperature"] = newTemp;
            ctrl.customData = data;
        }
    }
});

MMEvents.onControllerGUIRender("industrial_blast_furnace_mk3", function(event as ControllerGUIRenderEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData.asMap();
    val machineTemp = isNull(data["temperature"]) ? 300 as float : data["temperature"].asFloat();
    val modifier as float = min(2500 as float / machineTemp, 3.5) * 100;
    var info as string[] = [
        "§e内部温度：§c" + (((machineTemp * 10) as int) as float) / 10 + "K",
        "§e熔化时间乘数：" + (modifier >= 100 ? "§c" : "§a") + (((modifier * 100) as int) as float) / 100 + "%",
    ];
    if (machineTemp <= 2500) {
        info += "§e警告：温度过低。";
    } else if (machineTemp <= 5000) {
        info += "§e警告：温度偏低。";
    }

    event.extraInfo = info;
});

MMEvents.onMachinePostTick("industrial_blast_furnace_mk4", function(event as MachineTickEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val machineTemp = isNull(map["temperature"]) ? 300 as float : map["temperature"].asFloat();

    if (ctrl.isWorking) {
        val newTemp = machineTemp + increaseTemperature(machineTemp);
            map["temperature"] = newTemp;
            ctrl.customData = data;
            val modifier as float = min(2500 as float / machineTemp, 3.5);
            ctrl.addModifier("efficiency", RecipeModifierBuilder.create("modularmachinery:duration", "input", modifier, 1, false).build());
    } else {
        val newTemp = machineTemp - decreaseTemperature(machineTemp);
        if (newTemp != machineTemp) {
            map["temperature"] = newTemp;
            ctrl.customData = data;
        }
    }
});

MMEvents.onControllerGUIRender("industrial_blast_furnace_mk4", function(event as ControllerGUIRenderEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData.asMap();
    val machineTemp = isNull(data["temperature"]) ? 300 as float : data["temperature"].asFloat();
    val modifier as float = min(2500 as float / machineTemp, 3.5) * 100;
    var info as string[] = [
        "§e内部温度：§c" + (((machineTemp * 10) as int) as float) / 10 + "K",
        "§e熔化时间乘数：" + (modifier >= 100 ? "§c" : "§a") + (((modifier * 100) as int) as float) / 100 + "%",
    ];
    if (machineTemp <= 2500) {
        info += "§e警告：温度过低。";
    } else if (machineTemp <= 5000) {
        info += "§e警告：温度偏低。";
    }

    event.extraInfo = info;
});



MMEvents.onMachinePostTick("industrial_blast_furnace_mk5", function(event as MachineTickEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val machineTemp = isNull(map["temperature"]) ? 300 as float : map["temperature"].asFloat();

    if (ctrl.isWorking) {
        val newTemp = machineTemp + increaseTemperature(machineTemp);
            map["temperature"] = newTemp;
            ctrl.customData = data;
            val modifier as float = min(2500 as float / machineTemp, 3.5);
            ctrl.addModifier("efficiency", RecipeModifierBuilder.create("modularmachinery:duration", "input", modifier, 1, false).build());
    } else {
        val newTemp = machineTemp - decreaseTemperature(machineTemp);
        if (newTemp != machineTemp) {
            map["temperature"] = newTemp;
            ctrl.customData = data;
        }
    }
});

MMEvents.onControllerGUIRender("industrial_blast_furnace_mk5", function(event as ControllerGUIRenderEvent) {
    val ctrl as IMachineController = event.controller;
    val data = ctrl.customData.asMap();
    val machineTemp = isNull(data["temperature"]) ? 300 as float : data["temperature"].asFloat();
    val modifier as float = min(2500 as float / machineTemp, 3.5) * 100;
    var info as string[] = [
        "§e内部温度：§c" + (((machineTemp * 10) as int) as float) / 10 + "K",
        "§e熔化时间乘数：" + (modifier >= 100 ? "§c" : "§a") + (((modifier * 100) as int) as float) / 100 + "%",
    ];
    if (machineTemp <= 2500) {
        info += "§e警告：温度过低。";
    } else if (machineTemp <= 5000) {
        info += "§e警告：温度偏低。";
    }

    event.extraInfo = info;
});
function min(a as float, b as float) as float {
    return a <= b ? a : b;
}

function max(a as float, b as float) as float {
    return a >= b ? a : b;
}

function increaseTemperature(temperature as float) as float {
    if (temperature >= 10000) {
        return 0 as float;
    } else if (temperature >= 7000) {
        return 1.25 as float;
    } else if (temperature >= 3500) {
        return 2.5 as float;
    } else {
        return 5 as float;
    }
}

function decreaseTemperature(temperature as float) as float {
    if (temperature >= 7500) {
        return 3 as float;
    } else if (temperature >= 5000) {
        return 1.5 as float;
    } else if (temperature >= 300) {
        return 0.5 as float;
    } else {
        return 0 as float;
    }
}