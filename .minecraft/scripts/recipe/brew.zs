import crafttweaker.item.IItemStack;

/*使用月露作为酿药基底
//粗制的药水
brewing.addBrew(<nyx:lunar_water_bottle>, <minecraft:nether_wart>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}));
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:nether_wart>);
//
//平凡的药水
var mundane_materials = [
    <minecraft:redstone>,
    <minecraft:ghast_tear>,
    <minecraft:rabbit_foot>,
    <minecraft:spider_eye>,
    <minecraft:fish:2>,
    <minecraft:magma_cream>,
    <minecraft:speckled_melon>,
    <minecraft:quartz>,
    <minecraft:sugar>,
    <minecraft:blaze_powder>,
    <minecraft:prismarine_shard>

] as IItemStack[];

for item in mundane_materials {

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), item);
brewing.addBrew(<nyx:lunar_water_bottle>, item, <minecraft:potion>.withTag({Potion: "minecraft:mundane"}));

}
//

//浓稠的药水
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:glowstone_dust>);
brewing.addBrew(<nyx:lunar_water_bottle>, <minecraft:glowstone_dust>, <minecraft:potion>.withTag({Potion: "minecraft:thick"}));
*/
//伤害吸收药水
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:golden_apple>, <minecraft:potion>.withTag({Potion: "potioncore:absorption"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:absorption"}), <minecraft:glowstone_dust>, <minecraft:potion>.withTag({Potion: "potioncore:strong_absorption"}));


//添加止疼片配方
brewing.addBrew(<minecraft:potion>.withTag({Potion: "quark:resistance"}), <minecraft:quartz>, <med:painkillers>);
//褪黑素
brewing.addBrew(<med:steroids>, <minecraft:fermented_spider_eye>, <med:melatonin>);
//牛奶三件套
brewing.addBrew(<vanillafoodpantry:milkdrink>, <minecraft:gunpowder>, <bottledmilk:milk_bottle_splash>);
brewing.addBrew(<vanillafoodpantry:milkdrink>, <minecraft:dragon_breath>, <bottledmilk:milk_bottle_lingering>);

//重写夸克的抗性药水
//移除石英酿造粗制药水（输入，原料）
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:quartz>);
//移除强抗性提升药水配方
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "quark:resistance"}), <minecraft:glowstone_dust>);
//添加抗性提升药水配方
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:obsidian>, <minecraft:potion>.withTag({Potion: "quark:resistance"}));
//添加强抗性提升药水配方（需要下界合金碎片）
brewing.addBrew(<minecraft:potion>.withTag({Potion: "quark:resistance"}), <futuremc:netherite_scrap>, <minecraft:potion>.withTag({Potion: "quark:strong_resistance"}));

