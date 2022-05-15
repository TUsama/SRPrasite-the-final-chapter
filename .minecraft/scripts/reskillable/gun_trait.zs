import mods.compatskills.Skill;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.IEntityEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.world.IWorld;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

var test_1 = mods.compatskills.TraitCreator.createTrait("test_1", 0, 0, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|5");

var test_2 = mods.compatskills.TraitCreator.createTrait("test_2", 0,1, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|10");

var test_3 = mods.compatskills.TraitCreator.createTrait("test_3", 0, 2, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|15");

//手枪增伤
var gun_damage_improve_1 = mods.compatskills.TraitCreator.createTrait("gun_damage_improve_1", 1, 0, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|5");

    gun_damage_improve_1.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent){

// 检测直接来源，真正来源和空指针/服务端

        var player_check = event.damageSource.trueSource instanceof IPlayer;

        if (player_check) {

            if(!isNull(event.damageSource.immediateSource.definition)){

                var direct_source = event.damageSource.immediateSource.definition.name;

                var gun_list = [

                <cgm:handgun>.definition,

                ] as IItemDefinition[];

                var game_check = !isNull(event.damageSource.trueSource) && !event.damageSource.trueSource.world.remote;

                var player as IPlayer = event.damageSource.trueSource;

                if (direct_source == "cgm.projectile" && gun_list has player.currentItem && game_check) {

                        event.amount = event.amount * 1.10;

                }
            }

        }   
    };

var gun_damage_improve_2 = mods.compatskills.TraitCreator.createTrait("gun_damage_improve_2", 1, 1, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|5");

    gun_damage_improve_2.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent){

// 检测直接来源，真正来源和空指针/服务端

        var player_check = event.damageSource.trueSource instanceof IPlayer;

        if (player_check) {

            if(!isNull(event.damageSource.immediateSource.definition)){

                var direct_source = event.damageSource.immediateSource.definition.name;

                var gun_list = [

                    <cgm:shotgun>.definition,
                    <cgm:rifle>.definition


                ] as IItemDefinition[];

                var game_check = !isNull(event.damageSource.trueSource) && !event.damageSource.trueSource.world.remote;

                var player as IPlayer = event.damageSource.trueSource;

                if (direct_source == "cgm.projectile" && gun_list has player.currentItem && game_check) {

                        event.amount = event.amount * 1.10;

                }
            }

        }   
    };

var gun_damage_improve_3 = mods.compatskills.TraitCreator.createTrait("gun_damage_improve_3", 1, 2, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|5");

    gun_damage_improve_3.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent){

// 检测直接来源，真正来源和空指针/服务端

        var player_check = event.damageSource.trueSource instanceof IPlayer;

        if (player_check) {

            if(!isNull(event.damageSource.immediateSource.definition)){

                var direct_source = event.damageSource.immediateSource.definition.name;

                var gun_list = [

                    <cgm:machine_pistol>.definition,
                    <cgm:chain_gun>.definition,
                    <cgm:assault_rifle>.definition

                ] as IItemDefinition[];

                var game_check = !isNull(event.damageSource.trueSource) && !event.damageSource.trueSource.world.remote;

                var player as IPlayer = event.damageSource.trueSource;

                if (direct_source == "cgm.projectile" && gun_list has player.currentItem && game_check) {

                        event.amount = event.amount * 1.10;

                }
            }

        }   
    };

//所有枪械增伤
var gun_damage_improve_4 = mods.compatskills.TraitCreator.createTrait("gun_damage_improve_4", 1, 3, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|30");


    gun_damage_improve_4.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent){

// 检测直接来源，真正来源和空指针/服务端

        var player_check = event.damageSource.trueSource instanceof IPlayer;

        if (player_check) {

            if(!isNull(event.damageSource.immediateSource.definition)){

                var direct_source as string = event.damageSource.immediateSource.definition.name;

                var game_check = !isNull(event.damageSource.trueSource) && !event.damageSource.trueSource.world.remote;

// 内容：只要是枪就能增伤
                if (direct_source == "cgm.projectile" && game_check) {

                    event.amount = event.amount * 1.05;

            } 
        }
    } 
};


 /*   var holdcheck = client.player.currentitem;

    var hold_guning = [


    ] as ItemStack[];

    if (hold_guning has holdcheck) {

        test.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent) {

        var gun_list = [



        ] as Itemstack[];

        var check = !isNull(c) && event.damageSource.trueSource instanceof IPlayer && !event.damageSource.trueSource.world.remote && event.damageSource.trueSource.currentitem has gun_list;

            if (check) {

                event.amount = event.amount * 1.20;

            }
        };
    }
*/



