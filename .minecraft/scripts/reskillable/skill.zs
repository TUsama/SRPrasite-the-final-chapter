#modloaded compatskills reskillable
#priority 1000

import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;

val looting = createSkill("looting", "textures/blocks/hay_block_side.png");
looting.name = "搜刮";
looting.setRankIcon(0, "minecraft:textures/items/seeds_wheat.png");
looting.setRankIcon(3, "minecraft:textures/items/fish_cod_raw.png");
looting.setRankIcon(5, "minecraft:textures/items/bone.png");
looting.setRankIcon(7, "minecraft:textures/items/saddle.png");

val knowledge_of_parasite = createSkill("knowledge_of_parasite", "textures/blocks/hay_block_side.png");
knowledge_of_parasite.name = "寄生体知识";
knowledge_of_parasite.setRankIcon(0, "minecraft:textures/items/seeds_wheat.png");
knowledge_of_parasite.setRankIcon(3, "minecraft:textures/items/fish_cod_raw.png");
knowledge_of_parasite.setRankIcon(5, "minecraft:textures/items/bone.png");
knowledge_of_parasite.setRankIcon(7, "minecraft:textures/items/saddle.png");

val knowledge_of_gun = createSkill("knowledge_of_gun", "textures/blocks/hay_block_side.png");
knowledge_of_gun.name = "枪械";
knowledge_of_gun.setRankIcon(0, "minecraft:textures/items/seeds_wheat.png");
knowledge_of_gun.setRankIcon(3, "minecraft:textures/items/fish_cod_raw.png");
knowledge_of_gun.setRankIcon(5, "minecraft:textures/items/bone.png");
knowledge_of_gun.setRankIcon(7, "minecraft:textures/items/saddle.png");

val Alchemy = createSkill("Alchemy", "textures/blocks/hay_block_side.png");
Alchemy.name = "炼金";
Alchemy.setRankIcon(0, "minecraft:textures/items/seeds_wheat.png");
Alchemy.setRankIcon(3, "minecraft:textures/items/fish_cod_raw.png");
Alchemy.setRankIcon(5, "minecraft:textures/items/bone.png");
Alchemy.setRankIcon(7, "minecraft:textures/items/saddle.png");