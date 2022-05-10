import mods.compatskills.Skill;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.IEntityEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;

//定义新trait
var test = mods.compatskills.TraitCreator.createTrait("test", 2, 3, "compatskills:knowledge_of_parasite", 1, "compatskills:knowledge_of_parasite|10");
//可被增伤的entity
var parasite_entity = [

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
    "srparasites.antiinfestedblock",
    "srparasites.ballball",
    "srparasites.beckon_si",
    "srparasites.beckon_sii",
    "srparasites.beckon_siii",
    "srparasites.beckon_siv",
    "srparasites.biomass",
    "srparasites.biomassball",
    "srparasites.bomb",
    "srparasites.bomber_light",
    "srparasites.buglin",
    "srparasites.carrier_flying",
    "srparasites.carrier_heavy",
    "srparasites.cloudtoxic",
    "srparasites.crux",
    "srparasites.gore",
    "srparasites.grunt",
    "srparasites.heed",
    "srparasites.homming",
    "srparasites.host",
    "srparasites.incompleteform_medium",
    "srparasites.incompleteform_small",
    "srparasites.kyphosis",
    "srparasites.marauder",
    "srparasites.missile",
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
    "srparasites.salivaball",
    "srparasites.scent",
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
    "srparasites.spineball",
    "srparasites.tendril",
    "srparasites.vigilante",
    "srparasites.warden",
    "srparasites.webball",
    "srparasites.worker",


];

for entity in parasite_entity {

 var parasite as string[] = entity.definition.name;

}
//trait内容
test.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent) {

    if (!isNull(event.damageSource.trueSource) && event.damageSource.trueSource instanceof IPlayer && !event.damageSource.trueSource.world.remote && parasite has event.entity.definition.name) {
        var ODamage =  event.amount;
        event.amount = event.amount * 1.15;

    }
};