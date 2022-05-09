import mods.compatskills.Skill;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.IEntityEvent;
import crafttweaker.entity.IEntity;


//定义新trait
var test = mods.compatskills.TraitCreator.createTrait("test", 2, 3, "compatskills:knowledge_of_parasite", 1, "compatskills:knowledge_of_parasite|10");
//名字以及可被增伤的entity
test.name = "寄生弱点";
var parasite = [

        <entity:srparasites:pri_longarms>,
        <entity:srparasites:pri_manducater>,
        <entity:srparasites:pri_summoner>,
        <entity:srparasites:pri_reeker>,
        <entity:srparasites:pri_yelloweye>,
        <entity:srparasites:pri_bolster>,
        <entity:srparasites:pri_arachnida>,
        <entity:srparasites:pri_lum>,
        <entity:srparasites:host>,
        <entity:srparasites:crux>,
        <entity:srparasites:heed>,
        <entity:srparasites:sim_bear>,
        <entity:srparasites:sim_enderman>,
        <entity:srparasites:sim_adventurer>,
        <entity:srparasites:sim_bigspider>,
        <entity:srparasites:sim_human>,
        <entity:srparasites:sim_humanhead>,
        <entity:srparasites:sim_villager>,
        <entity:srparasites:sim_villagerhead>,
        <entity:srparasites:sim_cow>,
        <entity:srparasites:sim_cowhead>,
        <entity:srparasites:sim_horse>,
        <entity:srparasites:sim_horsehead>,
        <entity:srparasites:sim_pig>,
        <entity:srparasites:sim_pighead>,
        <entity:srparasites:sim_sheep>,
        <entity:srparasites:sim_sheephead>,
        <entity:srparasites:sim_wolf>,
        <entity:srparasites:sim_wolfhead>,
        <entity:srparasites:sim_dragone>,
        <entity:srparasites:overseer>,
        <entity:srparasites:bomber_light>,
        <entity:srparasites:bomber_heavy>,
        <entity:srparasites:carrier_heavy>,
        <entity:srparasites:buglin>,
        <entity:srparasites:carrier_flying>,
        <entity:srparasites:rupter>,
        <entity:srparasites:anc_dreadnaut>,
        <entity:srparasites:anc_overlord>,
        <entity:srparasites:vigilante>,
        <entity:srparasites:ada_longarms>,
        <entity:srparasites:ada_summoner>,
        <entity:srparasites:ada_manducater>,
        <entity:srparasites:ada_reeker>,
        <entity:srparasites:ada_yelloweye>,
        <entity:srparasites:ada_bolster>,
        <entity:srparasites:ada_arachnida>,


];

//trait内容
test.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent) {
    if (event.damageSource.trueSource instanceof IPlayer && parasite has event.entity.definition) {
        
        event.amount = event.amount * 1.15;

    }
};