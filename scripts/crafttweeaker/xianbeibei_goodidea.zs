import crafttweaker.data.IData;//导包，没什么好说的
import crafttweaker.item.IItemStack;
 
val basicdrawers4 as IItemStack[]=[<storagedrawers:basicdrawers:2>,<storagedrawers:basicdrawers:4>];//四槽位抽屉。
val basicdrawers2 as IItemStack[]=basicdrawers4 + <storagedrawers:basicdrawers:1> + <storagedrawers:basicdrawers:3>;//四槽位抽屉+二槽位抽屉。
val basicdrawers1 as IItemStack[]=basicdrawers2 + <storagedrawers:basicdrawers>;//四槽位抽屉+二槽位抽屉+一槽位抽屉。
 
for i in basicdrawers1{//遍历最少有一个槽位的抽屉。
    i.addAdvancedTooltip(function(item){//给每个抽屉加个AdvancedTooltip。需要返回一个string作为tooltip。
        var ii0="§b空";//先给ii0赋一个值为"空"。
        if(item.hasTag&&!isNull(item.tag.tile)&&!isNull(item.tag.tile.Drawers)){//如果抽屉有tag并且tile与Drawers都不为null。
            val d=item.tag.tile.Drawers as IData;//将d赋值为item.tag.tile.Drawers，同时方便写下面这一坨。
            if(!isNull(d[0])&&!isNull(d[0].Item)){//d是一个list，那么d[0]就是d的第一个元素，也就是上方例子中的{Item: {id: "mekanism:transmitter", Count: 1, tag: {tier: 0}, Damage: 0 as short}, Count: 63}。
                //想要给抽屉添加一个易于理解的tooltip，那么我们需要获取这个物品的名字与数量。
                val i=itemUtils.getItem(//itemUtils可以通过string和int来获取IItemStack。IItemUtils.getItem(location as string, meta as int = 0)。
                    d[0].Item.id.asString(),//string。需要获取物品的location，也就是上方例子中的 id: "mekanism:transmitter"。
                    d[0].Item.Damage.asShort()//int。需要获取物品的meta，也就是上方例子中的 Damage: 0 as short。
                );//到此我们就已经获得了这个物品了，想要获取物品的名字很简单，IItemStack.displayName就是物品名，但是我们还需要获取这个物品的tag与数量。因为有些物品是根据tag来区分的，如果没有tag那名字就会乱。
                val t=!isNull(d[0].Item.tag) ? d[0].Item.tag as IData : {};//这是个三元运算。如果这个元素含有tag那就将t赋值为上方例子中的{tier: 0}，反之则为空IData。
                val c=d[0].Count.asInt() as int;//这便获取到元素中物品的数量了。此时需要的名字与数量都已经获取到了，只需要在给ii0重新赋值一下就ok了。
                ii0=i.withTag(t).displayName~"§r*§b"~c;//将各个组件组装在一起就能获得这一串string了："基础通用线缆*63"。
            }
        }//如果上方的if函数正常走完了，那么此时ii0的值为"基础通用线缆*63"，反之则为"空"。只需要返回ii0与前缀就好了。
        return "§a第一槽位物品为：§b"~ii0;
    });
}
for i in basicdrawers2{//基本同上
    i.addAdvancedTooltip(function(item){
        var ii1="§b空";
        if(item.hasTag&&!isNull(item.tag.tile)&&!isNull(item.tag.tile.Drawers)){
            val d=item.tag.tile.Drawers as IData;
            if(!isNull(d[1])&&!isNull(d[1].Item))ii1=itemUtils.getItem(d[1].Item.id.asString(),d[1].Item.Damage.asShort()).withTag(!isNull(d[1].Item.tag) ? d[1].Item.tag as IData : {}).displayName~"§r*§b"~d[1].Count.asInt();
        }
        return "§a第二槽位物品为：§b"~ii1;
    });
}
for i in basicdrawers4{
    i.addAdvancedTooltip(function(item){
        var ii2="§b空";
        if(item.hasTag&&!isNull(item.tag.tile)&&!isNull(item.tag.tile.Drawers)){
            val d=item.tag.tile.Drawers as IData;
            if(!isNull(d[2])&&!isNull(d[2].Item))ii2=itemUtils.getItem(d[2].Item.id.asString(),d[2].Item.Damage.asShort()).withTag(!isNull(d[2].Item.tag) ? d[2].Item.tag as IData : {}).displayName~"§r*§b"~d[2].Count.asInt();
        }
        return "§a第三槽位物品为：§b"~ii2;
    });
}
for i in basicdrawers4{
    i.addAdvancedTooltip(function(item){
        var ii3="§b空";
        if(item.hasTag&&!isNull(item.tag.tile)&&!isNull(item.tag.tile.Drawers)){
            val d=item.tag.tile.Drawers as IData;
            if(!isNull(d[3])&&!isNull(d[3].Item))ii3=itemUtils.getItem(d[3].Item.id.asString(),d[3].Item.Damage.asShort()).withTag(!isNull(d[3].Item.tag) ? d[3].Item.tag as IData : {}).displayName~"§r*§b"~d[3].Count.asInt();
        }
        return "§a第四槽位物品为：§b"~ii3;
    });
}