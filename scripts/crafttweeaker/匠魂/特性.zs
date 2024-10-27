
#loader contenttweaker

#priority 10

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityMob;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import crafttweaker.world.IBlockPos;

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.zenutils.I18n;

# 创建一个新的 MaterialBuilder
val yeshi = mods.contenttweaker.tconstruct.TraitBuilder.create("my_yeshi");
yeshi.color = 0xCC6666;
yeshi.localizedName = ("神目");
yeshi.localizedDescription = ("能看清被黑暗蒙蔽的一切");
yeshi.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if (isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(330, 0, false, false));
        } 
        /*
        else {
            if (!isNull(ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>)) && (!(ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).duration > 250)) && (!ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).isAmbient) && (!ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).doesShowParticles)) {
                ownerBase.removePotionEffect(<potion:minecraft:night_vision>);
            }
        }
        */
    }
};
yeshi.register();

