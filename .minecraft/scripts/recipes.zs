//This file was created via CT-GUI! Editing it is not advised!
//Don't touch me!
//#Remove
recipes.remove(<nocubessrpaddon:pestillentscythe>);
recipes.remove(<nocubessrpaddon:pestillentknife>);
recipes.remove(<nocubessrpaddon:infectedarmorfragment> * 2);
recipes.remove(<nocubessrpaddon:livingarmorfragment> * 3);
recipes.remove(<cgm:workbench>);
//Don't touch me!
//#Add
recipes.addShaped(<nocubessrpaddon:pestillentscythe>, [[<nocubessrpaddon:infectedarmorfragment>, <nocubessrpaddon:infectedarmorfragment>, <nocubessrpaddon:infectedarmorfragment>],[null, <minecraft:stick>, <nocubessrpaddon:infectedarmorfragment>], [<minecraft:stick>, null, null]]);
recipes.addShaped(<nocubessrpaddon:pestillentknife>, [[null, <nocubessrpaddon:infectedarmorfragment>, null],[<nocubessrpaddon:infectedarmorfragment>, <nocubessrpaddon:infectedarmorfragment>, null], [<minecraft:stick>, null, null]]);
recipes.addShapeless(<nocubessrpaddon:livingarmorfragment> * 2, [<srparasites:ada_yelloweye_drop>,<srparasites:ada_reeker_drop>,<srparasites:ada_longarms_drop>,<srparasites:assimilated_flesh>,<futuremc:netherite_scrap>,<futuremc:netherite_scrap>]);
recipes.addShapeless(<nocubessrpaddon:infectedarmorfragment>, [<srparasites:assimilated_flesh>,<minecraft:bone>,<minecraft:leather>,<minecraft:iron_ingot>]);
//File End
