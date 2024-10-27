
//基岩
<item:minecraft:bedrock>.asBlock().definition.hardness = 500.0f;
<item:minecraft:bedrock>.asBlock().definition.setHarvestLevel("pickaxe", 10);
//命令方块
<item:minecraft:command_block>.asBlock().definition.hardness = 500.0f;
<item:minecraft:command_block>.asBlock().definition.setHarvestLevel("pickaxe", 11);
//末地传送门
<minecraft:end_portal_frame>.asBlock().definition.hardness = 500.0f;
<minecraft:end_portal_frame>.asBlock().definition.setHarvestLevel("pickaxe", 9);
//深层矿石
<fd:ore>.asBlock().definition.setHarvestLevel("pickaxe", 1);
<fd:ore:1>.asBlock().definition.setHarvestLevel("pickaxe", 2);
<fd:ore:2>.asBlock().definition.setHarvestLevel("pickaxe", 1);
<fd:ore:4>.asBlock().definition.setHarvestLevel("pickaxe", 1);
<fd:ore:5>.asBlock().definition.setHarvestLevel("pickaxe", 2);
<fd:ore:6>.asBlock().definition.setHarvestLevel("pickaxe", 2);
<fd:deepslate_redstone_ore>.definition.setHarvestLevel("pickaxe", 2);