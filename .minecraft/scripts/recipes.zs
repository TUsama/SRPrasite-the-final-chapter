//This file was created via CT-GUI! Editing it is not advised!
//Don't touch me!
//#Remove
recipes.remove(<bottledmilk:milk_bottle_lingering>);
recipes.remove(<bottledmilk:milk_bottle_splash>);
recipes.remove(<trident:trident>);
recipes.remove(<nocubessrpaddon:pestillentscythe>);
recipes.remove(<nocubessrpaddon:pestillentknife>);
recipes.remove(<nocubessrpaddon:infectedarmorfragment> * 2);
recipes.remove(<nocubessrpaddon:livingarmorfragment> * 3);
recipes.remove(<cgm:workbench>);
recipes.remove(<med:painkillers>);
recipes.remove(<med:melatonin>);
recipes.remove(<med:steroids>);
recipes.remove(<med:medicalsyringe>);
recipes.remove(<med:medkit>);
//Don't touch me!
//#Add
recipes.addShaped(<trident:trident>, [[null, <minecraft:quartz>, <futuremc:nautilus_shell>],[null, <minecraft:prismarine_shard>, <minecraft:quartz>], [<minecraft:prismarine_shard>, null, null]]);
recipes.addShaped(<med:medkit>, [[<med:bandages>, <med:bandages>, <med:bandages>],[<minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}).onlyWithTag({Potion: "minecraft:strong_regeneration"}), <minecraft:golden_apple>, <minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}).onlyWithTag({Potion: "minecraft:strong_healing"})], [<med:bandages>, <med:bandages>, <med:bandages>]]);
recipes.addShaped(<med:medicalsyringe>, [[<minecraft:golden_apple>, <minecraft:potion>.withTag({Potion: "potioncore:strong_absorption"}).onlyWithTag({Potion: "potioncore:strong_absorption"}), <minecraft:golden_apple>],[<minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}).onlyWithTag({Potion: "minecraft:strong_healing"}), <med:emptysyringe>, <minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}).onlyWithTag({Potion: "minecraft:strong_regeneration"})], [<minecraft:golden_apple>, <minecraft:potion>.withTag({Potion: "potioncore:strong_absorption"}).onlyWithTag({Potion: "potioncore:strong_absorption"}), <minecraft:golden_apple>]]);
recipes.addShaped(<med:steroids>, [[null, <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}).onlyWithTag({Potion: "minecraft:strong_strength"}), null],[null, <med:emptysyringe>, null], [<minecraft:potion>.withTag({Potion: "quark:strong_haste"}).onlyWithTag({Potion: "quark:strong_haste"}), <minecraft:golden_apple>, <minecraft:potion>.withTag({Potion: "quark:strong_haste"}).onlyWithTag({Potion: "quark:strong_haste"})]]);
recipes.addShaped(<nocubessrpaddon:pestillentscythe>, [[<nocubessrpaddon:infectedarmorfragment>, <nocubessrpaddon:infectedarmorfragment>, <nocubessrpaddon:infectedarmorfragment>],[null, <minecraft:stick>, <nocubessrpaddon:infectedarmorfragment>], [<minecraft:stick>, null, null]]);
recipes.addShaped(<nocubessrpaddon:pestillentknife>, [[null, <nocubessrpaddon:infectedarmorfragment>, null],[<nocubessrpaddon:infectedarmorfragment>, <nocubessrpaddon:infectedarmorfragment>, null], [<minecraft:stick>, null, null]]);
recipes.addShapeless(<nocubessrpaddon:livingarmorfragment> * 2, [<srparasites:ada_yelloweye_drop>,<srparasites:ada_reeker_drop>,<srparasites:ada_longarms_drop>,<srparasites:assimilated_flesh>,<futuremc:netherite_scrap>,<futuremc:netherite_scrap>]);
recipes.addShapeless(<nocubessrpaddon:infectedarmorfragment>, [<srparasites:assimilated_flesh>,<minecraft:bone>,<minecraft:leather>,<minecraft:iron_ingot>]);
//File End
