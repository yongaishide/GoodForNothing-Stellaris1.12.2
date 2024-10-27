

import mods.dropt.Dropt;

//基岩
Dropt.list("bedrock")
    .add(Dropt.rule()
    .matchBlocks(["minecraft:bedrock:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;10;-1")
    )
    .addDrop(Dropt.drop().items([<minecraft:bedrock>])));

//命令方块
Dropt.list("command_block")
    .add(Dropt.rule()
    .matchBlocks(["minecraft:command_block:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;10;-1")
    )
    .addDrop(Dropt.drop().items([<minecraft:command_block>]))); 
