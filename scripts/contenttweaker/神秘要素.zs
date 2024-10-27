#loader contenttweaker

#priority 51

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ResourceLocation;
import mods.randomtweaker.cote.Aspect;

var time as Aspect = VanillaFactory.createAspect("time", 0x8A2BE2);
time.register();

var space as Aspect = VanillaFactory.createAspect("space", 0x8A2BE2);
space.register();

var quantum as Aspect = VanillaFactory.createAspect("quantum", 0x8A2BE2);
quantum.register();
