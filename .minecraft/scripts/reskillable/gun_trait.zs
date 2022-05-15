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

var gun_unlock_1 = mods.compatskills.TraitCreator.createTrait("gun_unlock_1", 0, 0, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|5");

var gun_unlock_2 = mods.compatskills.TraitCreator.createTrait("gun_unlock_2", 0,1, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|10");

var gun_unlock_3 = mods.compatskills.TraitCreator.createTrait("gun_unlock_3", 0, 2, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|15");

//手枪增伤
var gun_damage_improve_1 = mods.compatskills.TraitCreator.createTrait("gun_damage_improve_1", 1, 0, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|5");

    gun_damage_improve_1.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent){

// 检测直接来源，真正来源和空指针/服务端
        var player_check = event.damageSource.trueSource instanceof IPlayer;
//检测是否是玩家
        if (player_check) {
            //判断immediateSource.definition是否是空，如果是玩家以特定（如近战）的方式攻击，则玩家作为immediateSource是没有definition的
            if(!isNull(event.damageSource.immediateSource.definition)){
                //非空检测后定义此变量
                var direct_source = event.damageSource.immediateSource.definition.name;
                //增伤对象
                var gun_list = [

                <cgm:handgun>.definition,

                ] as IItemDefinition[];
                //检测是否有trueSource，以及trueSource是否是在服务端
                var game_check = !isNull(event.damageSource.trueSource) && !event.damageSource.trueSource.world.remote;
                //获取玩家
                var player as IPlayer = event.damageSource.trueSource;
                //实际增伤部分
                if (direct_source == "cgm.projectile" && gun_list has player.currentItem && game_check) {

                        event.amount = event.amount * 1.10;

                }
            }

        }   
    };

var gun_damage_improve_2 = mods.compatskills.TraitCreator.createTrait("gun_damage_improve_2", 1, 1, "compatskills:knowledge_of_gun", 1, "compatskills:knowledge_of_gun|5");

    gun_damage_improve_2.onAttackMob = function(event as crafttweaker.event.EntityLivingHurtEvent){


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


        var player_check = event.damageSource.trueSource instanceof IPlayer;

        if (player_check) {

            if(!isNull(event.damageSource.immediateSource.definition)){

                var direct_source as string = event.damageSource.immediateSource.definition.name;

                var game_check = !isNull(event.damageSource.trueSource) && !event.damageSource.trueSource.world.remote;

                if (direct_source == "cgm.projectile" && game_check) {

                    event.amount = event.amount * 1.05;

            } 
        }
    } 
};




