import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.MachineModifier;
//钢制机壳
RecipeBuilder.newBuilder("xianjinzuzhuangji_01", "advanced_assembly_machine", 500)
    .addEnergyPerTickInput(2560)
    .addItemInputs([
    <qmd:ingot_alloy:2>*4,
    <appliedenergistics2:quartz_glass>*2,
    <mekanism:ingot:1>*2,
    <additions:circuit_processor>,
    ])

    .addItemOutputs(<mekanism:basicblock:8>)
.build();