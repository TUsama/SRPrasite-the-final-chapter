/*#modloaded compatskills reskillable
#priority 1000

import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import mods.compatskills.Requirement.addRequirement;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

//定义新skill
val looting = createSkill("Class", "textures/blocks/hay_block_side.png");
looting.name = "职业";
looting.setRankIcon(0, "minecraft:textures/items/seeds_wheat.png");
looting.setRankIcon(3, "minecraft:textures/items/fish_cod_raw.png");
looting.setRankIcon(5, "minecraft:textures/items/bone.png");
looting.setRankIcon(7, "minecraft:textures/items/saddle.png");

var ClassGunStage = ZenStager.initStage("ClassGun");
var ClassSwordStage = ZenStager.initStage("ClassSword");
var ClassDefendStage = ZenStager.initStage("ClassDefend");


var ClassGun = mods.compatskills.TraitCreator.createTrait("ClassGun", 0, 1, "compatskills:Class", 1, "stage|ClassGun");

var ClassSword = mods.compatskills.TraitCreator.createTrait("ClassSword", 1,1, "compatskills:Class", 1, "stage|ClassSword");

var ClassDefend = mods.compatskills.TraitCreator.createTrait("ClassDefend", 2, 1, "compatskills:Class", 1, "stage|ClassDefend");
*/