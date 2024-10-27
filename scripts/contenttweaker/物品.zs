//物品借用了部分整合包的材质,并没有搬运代码，如有侵权，请联系作者
//The item borrowed some materials from the integration package. If there is any infringement, please contact the author

#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

function regItem(name as string) {
    val item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:misc>;
    item.register();
}

function regItemWithStackSize(name as string, maxStackSize as int) {
    val item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:misc>;
    item.maxStackSize = maxStackSize;
    item.register();
}

//水晶核心
regItem("crystal_ore_1");
regItem("crystal_ore_2");
regItem("crystal_ore_3");
regItem("crystal_ore_4");
regItem("crystal_ore_5");
regItem("crystal_ore_6");
regItem("crystal_ore_7");
regItem("crystal_ore_8");

//机械零件
regItem("mechanical_component_1");
regItem("mechanical_component_2");
regItem("mechanical_component_3");
regItem("mechanical_component_4");
regItem("mechanical_component_5");
regItem("mechanical_component_6");
regItem("mechanical_component_7");
regItem("mechanical_component_8");

//蓝图
regItem("blueprint_1");//灵魂锻炉蓝图

//网络密钥
regItem("net_key");

//漫步者
regItem("manbo");
regItem("beilunwuzhiqiu");
regItem("dragon_catalyst");
regItem("infinite_runes");

//大罗界灭伞
regItem("zhongbao_1");

//树脂片
regItem("shuzhipian_1");

//处理器
regItem("chuliqi_1");
//电路基板
regItem("dianluban_1");
regItem("dianluban_2");
regItem("dianluban_3");
regItem("dianluban_4");
regItem("dianluban_5");
regItem("dianluban_6");
regItem("dianluban_7");

//磷粉
regItem("linfen");
//编程电路
regItem("programmed_circuit_0");
regItem("programmed_circuit_1");
regItem("programmed_circuit_2");
regItem("programmed_circuit_3");
regItem("programmed_circuit_4");
regItem("programmed_circuit_5");
regItem("programmed_circuit_6");
regItem("programmed_circuit_7");
regItem("programmed_circuit_8");
regItem("programmed_circuit_9");
regItem("programmed_circuit_10");
regItem("programmed_circuit_11");
regItem("programmed_circuit_12");
regItem("programmed_circuit_13");
regItem("programmed_circuit_14");
regItem("programmed_circuit_15");
regItem("programmed_circuit_16");
regItem("programmed_circuit_17");
regItem("programmed_circuit_18");
regItem("programmed_circuit_19");
regItem("programmed_circuit_20");
regItem("programmed_circuit_21");
regItem("programmed_circuit_22");
regItem("programmed_circuit_23");
regItem("programmed_circuit_24");
regItem("programmed_circuit_25");
regItem("programmed_circuit_26");
regItem("programmed_circuit_27");
regItem("programmed_circuit_28");
regItem("programmed_circuit_29");
regItem("programmed_circuit_30");
regItem("programmed_circuit_31");
regItem("programmed_circuit_32");
//字母
regItem("A");
regItem("B");
regItem("C");
regItem("D");
regItem("E");
regItem("F");
regItem("G");
regItem("H");
regItem("I");
regItem("J");
regItem("K");
regItem("L");
regItem("M");
regItem("N");
regItem("O");
regItem("P");
regItem("Q");
regItem("R");
regItem("S");
regItem("T");
regItem("U");
regItem("V");
regItem("W");
regItem("X");
regItem("Y");
regItem("Z");

//粉
regItem("jinshufen_1");
regItem("jinshufen_2");
regItem("jinshufen_3");
regItem("jinshufen_4");
regItem("jinshufen_5");
regItem("jinshufen_6");
regItem("jinshufen_7");
regItem("jinshufen_8");
regItem("jinshufen_9");
regItem("jinshufen_10");
regItem("jinshufen_11");
regItem("jinshufen_12");
regItem("jinshufen_13");
regItem("jinshufen_14");
regItem("jinshufen_15");
regItem("jinshufen_16");
regItem("jinshufen_17");
regItem("jinshufen_18");
regItem("jinshufen_19");
regItem("jinshufen_20");
regItem("jinshufen_21");
regItem("jinshufen_22");
regItem("jinshufen_23");
regItem("jinshufen_24");
regItem("jinshufen_25");
regItem("jinshufen_26");
regItem("jinshufen_27");
regItem("jinshufen_28");
regItem("jinshufen_29");
regItem("jinshufen_30");
regItem("jinshufen_31");
regItem("jinshufen_32");
regItem("jinshufen_33");
regItem("jinshufen_34");
regItem("jinshufen_35");
regItem("jinshufen_36");
regItem("jinshufen_37");
regItem("jinshufen_38");
regItem("jinshufen_39");
regItem("jinshufen_40");

regItem("greg_star");

regItem("yijiandajiangongju");
regItem("gaia_essence");
regItem("resonance_fragment");
regItem("cryptid_core");
regItem("sparkling_gemstones");
regItem("huixing_gemstone");
regItem("stars_gemstone");
regItem("sun_gemstone");
regItem("nature_gemstone");

regItem("wupin_1");
regItem("wupin_2");
regItem("wupin_3");

//atm系列
regItem("atm_1");//龙魂
regItem("atm_2");//贤者燃料
regItem("atm_3");//维度种子
regItem("atm_4");//黑洞


regItem("djhj");//道劫黄金
regItem("hxcj");//凰血赤金
regItem("lwhj");//龙纹黑金
regItem("yhqj");//羽化青金
regItem("shzj");//神痕紫金
regItem("yhlj");//永恒蓝金
regItem("xllj");//仙泪绿金
regItem("wss");//五色神石
regItem("wstj");//五色铁精


regItem("apu0");//创造加速运算单元(APU)
regItem("apu1");//高级加速运算单元(APU)
regItem("apu2");//超级加速运算单元(APU)
regItem("cpu1");//基础中央处理器(CPU)
regItem("cpu2");//高级中央处理器(CPU)
regItem("cpu3");//超级中央处理器(CPU)
regItem("ram1");//内存条-T1
regItem("ram2");//内存条-T1.5
regItem("ram3");//内存条-T2
regItem("ram4");//内存条-T2.5
regItem("ram5");//内存条-T3
regItem("ram6");//内存条-T3.5
regItem("datacard1");//基础数据卡
regItem("datacard2");//高级数据卡
regItem("datacard3");//超级数据卡
regItem("lancard");//网卡
regItem("wlancard1");//基础无线网卡
regItem("wlancard2");//高级无线网卡
regItem("componentbus0");//创造模式组件总线
regItem("componentbus1");//基础组件总线
regItem("componentbus2");//高级组件总线
regItem("componentbus3");//超级组件总线
regItem("hdd1");//基础磁盘驱动器
regItem("hdd2");//高级磁盘驱动器
regItem("hdd3");//超级磁盘驱动器
regItem("GraphicsCard1");//基础显卡
regItem("GraphicsCard2");//高级显卡
regItem("GraphicsCard3");//超级显卡



//纪念品
regItem("chuanchengbujiatang");//川澄不加糖
regItem("66suixiaopihai");//66岁小屁孩

//赞助者


regItem("sensor_lv1");
regItem("sensor_lv2");
regItem("sensor_lv3");
regItem("sensor_lv4");
regItem("sensor_lv5");
regItem("sensor_lv6");
regItem("sensor_lv7");
regItem("sensor_lv8");
regItem("sensor_lv9");
regItem("sensor_lv10");
regItem("sensor_lv11");
regItem("sensor_lv12");
regItem("sensor_lv13");
regItem("sensor_lv14");

regItem("electric_pump_lv1");
regItem("electric_pump_lv2");
regItem("electric_pump_lv3");
regItem("electric_pump_lv4");
regItem("electric_pump_lv5");
regItem("electric_pump_lv6");
regItem("electric_pump_lv7");
regItem("electric_pump_lv8");
regItem("electric_pump_lv9");
regItem("electric_pump_lv10");
regItem("electric_pump_lv11");
regItem("electric_pump_lv12");
regItem("electric_pump_lv13");
regItem("electric_pump_lv14");

regItem("electric_piston_lv1");
regItem("electric_piston_lv2");
regItem("electric_piston_lv3");
regItem("electric_piston_lv4");
regItem("electric_piston_lv5");
regItem("electric_piston_lv6");
regItem("electric_piston_lv7");
regItem("electric_piston_lv8");
regItem("electric_piston_lv9");
regItem("electric_piston_lv10");
regItem("electric_piston_lv11");
regItem("electric_piston_lv12");
regItem("electric_piston_lv13");
regItem("electric_piston_lv14");

regItem("electric_motor_lv1");
regItem("electric_motor_lv2");
regItem("electric_motor_lv3");
regItem("electric_motor_lv4");
regItem("electric_motor_lv5");
regItem("electric_motor_lv6");
regItem("electric_motor_lv7");
regItem("electric_motor_lv8");
regItem("electric_motor_lv9");
regItem("electric_motor_lv10");
regItem("electric_motor_lv11");
regItem("electric_motor_lv12");
regItem("electric_motor_lv13");
regItem("electric_motor_lv14");
regItem("voltage_coil_lv1");
regItem("voltage_coil_lv2");
regItem("voltage_coil_lv3");
regItem("voltage_coil_lv4");
regItem("voltage_coil_lv5");
regItem("voltage_coil_lv6");
regItem("voltage_coil_lv7");
regItem("voltage_coil_lv8");
regItem("voltage_coil_lv9");

regItem("emitter_lv1");
regItem("emitter_lv2");
regItem("emitter_lv3");
regItem("emitter_lv4");
regItem("emitter_lv5");
regItem("emitter_lv6");
regItem("emitter_lv7");
regItem("emitter_lv8");
regItem("emitter_lv9");
regItem("emitter_lv10");
regItem("emitter_lv11");
regItem("emitter_lv12");
regItem("emitter_lv13");
regItem("emitter_lv14");

regItem("robot_arm_lv1");
regItem("robot_arm_lv2");
regItem("robot_arm_lv3");
regItem("robot_arm_lv4");
regItem("robot_arm_lv5");
regItem("robot_arm_lv6");
regItem("robot_arm_lv7");
regItem("robot_arm_lv8");
regItem("robot_arm_lv9");
regItem("robot_arm_lv10");
regItem("robot_arm_lv11");
regItem("robot_arm_lv12");
regItem("robot_arm_lv13");
regItem("robot_arm_lv14");

regItem("field_generator_lv1");
regItem("field_generator_lv2");
regItem("field_generator_lv3");
regItem("field_generator_lv4");
regItem("field_generator_lv5");
regItem("field_generator_lv6");
regItem("field_generator_lv7");
regItem("field_generator_lv8");
regItem("field_generator_lv9");
regItem("field_generator_lv10");
regItem("field_generator_lv11");
regItem("field_generator_lv12");
regItem("field_generator_lv13");
regItem("field_generator_lv14");
regItem("fluid_regulator_lv1");
regItem("fluid_regulator_lv2");
regItem("fluid_regulator_lv3");
regItem("fluid_regulator_lv4");
regItem("fluid_regulator_lv5");
regItem("fluid_regulator_lv6");
regItem("fluid_regulator_lv7");
regItem("fluid_regulator_lv8");
regItem("fluid_regulator_lv9");

regItem("conveyor_module_lv1");
regItem("conveyor_module_lv2");
regItem("conveyor_module_lv3");
regItem("conveyor_module_lv4");
regItem("conveyor_module_lv5");
regItem("conveyor_module_lv6");
regItem("conveyor_module_lv7");
regItem("conveyor_module_lv8");
regItem("conveyor_module_lv9");
regItem("conveyor_module_lv10");
regItem("conveyor_module_lv11");
regItem("conveyor_module_lv12");
regItem("conveyor_module_lv13");
regItem("conveyor_module_lv14");
