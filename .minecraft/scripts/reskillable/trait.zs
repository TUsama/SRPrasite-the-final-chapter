import mods.compatskills.Skill;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;
import crafttweaker.event.IEntityEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;

//定义新trait
var test = mods.compatskills.TraitCreator.createTrait("test", 2, 3, "compatskills:knowledge_of_parasite", 1, "compatskills:knowledge_of_parasite|10");
//可被增伤的entity
var parasite_entity as string[] = [
    "srparasites.ada_arachnida",
    "srparasites.ada_bolster",
    "srparasites.ada_longarms",
    "srparasites.ada_manducater",
    "srparasites.ada_reeker",
    "srparasites.ada_summoner",
    "srparasites.ada_yelloweye",
    "srparasites.anc_dreadnaut",
    "srparasites.anc_dreadnaut_ten",
    "srparasites.anc_overlord",
    "srparasites.anc_pod",
    "srparasites.ancientball",
    "srparasites.beckon_si",
    "srparasites.beckon_sii",
    "srparasites.beckon_siii",
    "srparasites.beckon_siv",
    "srparasites.bomber_light",
    "srparasites.buglin",
    "srparasites.carrier_flying",
    "srparasites.carrier_heavy",
    "srparasites.crux",
    "srparasites.gore",
    "srparasites.grunt",
    "srparasites.heed",
    "srparasites.host",
    "srparasites.incompleteform_medium",
    "srparasites.incompleteform_small",
    "srparasites.kyphosis",
    "srparasites.marauder",
    "srparasites.movingflesh",
    "srparasites.overseer",
    "srparasites.pri_arachnida",
    "srparasites.pri_bolster",
    "srparasites.pri_devourer",
    "srparasites.pri_longarms",
    "srparasites.pri_manducater",
    "srparasites.pri_reeker",
    "srparasites.pri_summoner",
    "srparasites.pri_yelloweye",
    "srparasites.rupter",
    "srparasites.sentry",
    "srparasites.sim_adventurer",
    "srparasites.sim_bear",
    "srparasites.sim_bigspider",
    "srparasites.sim_cow",
    "srparasites.sim_cowhead",
    "srparasites.sim_dragone",
    "srparasites.sim_enderman",
    "srparasites.sim_horse",
    "srparasites.sim_horsehead",
    "srparasites.sim_human",
    "srparasites.sim_humanhead",
    "srparasites.sim_pig",
    "srparasites.sim_pighead",
    "srparasites.sim_sheep",
    "srparasites.sim_sheephead",
    "srparasites.sim_villager",
    "srparasites.sim_villagerhead",
    "srparasites.sim_wolf",
    "srparasites.sim_wolfhead",
    "srparasites.tendril",
    "srparasites.vigilante",
    "srparasites.warden",
    "srparasites.worker",
];

//trait内容
test.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent) {
    if (!isNull(event.damageSource.trueSource)) {
        var DmgS as IPlayer= event.damageSource.trueSource;
        if (!isNull(event.entity.definition)) {
            var hit_entity_name as string = event.entity.definition.name;
            if (DmgS instanceof IPlayer && !DmgS.world.remote && parasite_entity has hit_entity_name) {
                event.amount = event.amount * 1.15;
            }
        }
    }
};