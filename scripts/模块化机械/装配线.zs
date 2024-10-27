import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.MachineModifier;

//钢制机壳
RecipeBuilder.newBuilder("zhuangpeixian_01", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <enderio:item_capacitor_energetic_silver>*4,
    <appliedenergistics2:material:22>*2,
    <appliedenergistics2:material:23>*2,
    <appliedenergistics2:material:24>*2,
    <contenttweaker:chuliqi_1>*2,
    <jaopca:plate.epoxy_resin>*4,
    <additions:assembly>*4,
    <thermalfoundation:material:515>*8,
    ])

    .addFluidInputs(<liquid:tin>*1152)
    .addFluidInputs(<liquid:refined_obsidian>*288)

    .addItemOutputs(<additions:workstation>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_02", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <enderio:item_capacitor_energetic_silver>*4,
    <appliedenergistics2:material:22>*2,
    <appliedenergistics2:material:23>*2,
    <appliedenergistics2:material:24>*2,
    <contenttweaker:chuliqi_1>*2,
    <jaopca:plate.epoxy_resin>*4,
    <additions:weimichuliqi>*4,
    <thermalfoundation:material:515>*8,
    ])

    .addFluidInputs(<liquid:tin>*1152)
    .addFluidInputs(<liquid:fluix_steel>*288)

    .addItemOutputs(<additions:weimichaojijisuanji>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_03", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <enderio:item_capacitor_energetic_silver>*4,
    <appliedenergistics2:material:22>*2,
    <appliedenergistics2:material:23>*2,
    <appliedenergistics2:material:24>*2,
    <contenttweaker:chuliqi_1>*2,
    <jaopca:plate.epoxy_resin>*4,
    <additions:nano_assembly>*4,
    <thermalfoundation:material:515>*8,
    ])

    .addFluidInputs(<liquid:tin>*1152)
    .addFluidInputs(<liquid:fluix_steel>*288)

    .addItemOutputs(<additions:nano_computer>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_04", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <enderio:item_capacitor_energetic_silver>*4,
    <appliedenergistics2:material:22>*2,
    <appliedenergistics2:material:23>*2,
    <appliedenergistics2:material:24>*2,
    <contenttweaker:chuliqi_1>*2,
    <jaopca:plate.epoxy_resin>*4,
    <additions:crystal_assembly>*4,
    <thermalfoundation:material:515>*8,
    ])

    .addFluidInputs(<liquid:tin>*1152)
    .addFluidInputs(<liquid:fluix_steel>*288)
    .addFluidInputs(<liquid:draconium_awakened>*288)
    .addItemOutputs(<additions:crystal_computer>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_05", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <enderio:item_capacitor_energetic_silver>*4,
    <appliedenergistics2:material:22>*2,
    <appliedenergistics2:material:23>*2,
    <appliedenergistics2:material:24>*2,
    <contenttweaker:chuliqi_1>*2,
    <jaopca:plate.epoxy_resin>*4,
    <additions:quantum_assembly>*4,
    <thermalfoundation:material:515>*8,
    ])

    .addFluidInputs(<liquid:tin>*1152)
    .addFluidInputs(<liquid:fluix_steel>*288)

    .addItemOutputs(<additions:quantum_computer>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_06", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <additions:gelei4>,
    <appliedenergistics2:part:16>*16,
    <appliedenergistics2:memory_card>*2,
    <mekanism:polyethene:2>*4,
    <additions:workstation>,
    ])

    .addFluidInputs(<liquid:tin>*1152)

    .addItemOutputs(<additions:mainframe>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_07", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <additions:gelei4>,
    <appliedenergistics2:part:16>*16,
    <appliedenergistics2:memory_card>*2,
    <mekanism:polyethene:2>*4,
    <additions:weimichaojijisuanji>,
    ])

    .addFluidInputs(<liquid:tin>*1152)

    .addItemOutputs(<additions:wemidiannaozhuji>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_08", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <additions:gelei4>,
    <appliedenergistics2:part:16>*16,
    <appliedenergistics2:memory_card>*2,
    <mekanism:polyethene:2>*4,
    <additions:nano_computer>,
    ])

    .addFluidInputs(<liquid:tin>*1152)

    .addItemOutputs(<additions:nano_mainframe>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_09", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <additions:gelei4>,
    <appliedenergistics2:part:16>*16,
    <appliedenergistics2:memory_card>*2,
    <mekanism:polyethene:2>*4,
    <additions:crystal_computer>,
    ])

    .addFluidInputs(<liquid:tin>*1152)

    .addItemOutputs(<additions:crystal_mainframe>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_10", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <additions:gelei4>,
    <appliedenergistics2:part:16>*16,
    <appliedenergistics2:memory_card>*2,
    <mekanism:polyethene:2>*4,
    <additions:quantum_computer>,
    ])

    .addFluidInputs(<liquid:tin>*1152)
    .addFluidInputs(<liquid:quantum>*288)

    .addItemOutputs(<additions:quantum_mainframe>)
.build();
//湿件级
RecipeBuilder.newBuilder("zhuangpeixian_001", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <enderio:item_capacitor_energetic_silver>*4,
    <appliedenergistics2:material:22>*2,
    <appliedenergistics2:material:23>*2,
    <appliedenergistics2:material:24>*2,
    <contenttweaker:chuliqi_1>*2,
    <jaopca:plate.epoxy_resin>*4,
    <additions:wetware_assembly>*4,
    <thermalfoundation:material:515>*8,
    ])

    .addFluidInputs(<liquid:tin>*1152)
    .addFluidInputs(<liquid:fluix_steel>*288)

    .addItemOutputs(<additions:wetware_computer>)
.build();
RecipeBuilder.newBuilder("zhuangpeixian_002", "assembly_line", 100)
    .addEnergyPerTickInput(25600)
    .addItemInputs([
    <additions:gelei4>,
    <appliedenergistics2:part:16>*16,
    <appliedenergistics2:memory_card>*2,
    <mekanism:polyethene:2>*4,
    <additions:wetware_computer>,
    ])

    .addFluidInputs(<liquid:tin>*1152)

    .addItemOutputs(<additions:wetware_mainframe>)
.build();