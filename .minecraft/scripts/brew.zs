

brewing.addBrew(<med:steroids>, <minecraft:fermented_spider_eye>, <med:melatonin>);

//重写夸克的抗性药水
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <quark:biotite>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "quark:resistance"}), <minecraft:glowstone_dust>);
brewing.addBrew(<nyx:lunar_water_bottle>, <minecraft:obsidian>, <minecraft:potion>.withTag({Potion: "quark:resistance"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "quark:resistance"}), <futuremc:netherite_scrap>, <minecraft:potion>.withTag({Potion: "quark:strong_resistance"}));



brewing.addBrew(<nyx:lunar_water_bottle>, <minecraft:golden_apple>, <minecraft:potion>.withTag({Potion: "potioncore:absorption"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:absorption"}), <minecraft:glowstone_dust>, <minecraft:potion>.withTag({Potion: "potioncore:strong_absorption"}));

