#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import scripts.sanity.SanityUtils;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.world.IWorld;
import crafttweaker.util.Position3f;
import crafttweaker.world.IBlockPos;
import crafttweaker.command.ICommandSender;
import crafttweaker.world.IWorldInfo;
import mods.ctutils.utils.Math;
import mods.zenutils.DelayManager;

mods.zenutils.DelayManager.addDelayWork(function() {
    events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
        var remote as bool = !event.player.world.remote;
        var player as IPlayer = event.player;
        var world as IWorld = event.player.world;
        var worldTime as long = world.worldInfo.worldTotalTime;
        if (remote && worldTime % 40 == 0){
            //print("1");
            /*var x as double = player.x;
            var y as double = player.y;
            var z as double = player.z;*/
            var position as IBlockPos = player.position;
            var block as IBlock = world.getBlock(position);
            var lightLevel as float = block.definition.lightLevel;
            //print(lightLevel);

            //var currentPosition as IBlockPos = crafttweaker.util.Position3f.create(x, y, z).asBlockPos();
            //var brightness as int = world.getBrightness(position);
            if (lightLevel <= 4.0f){
                SanityUtils.sanityMinus(0.05f, player);
                print("0");
            }
            else {
                SanityUtils.sanityPlus(0.03f, player);
                print("1");
            }
        }
    });
}, 1 * 20);

/*events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = event.player.world;
    var x as int = Math.floor(player.x);
    /*var y as int = Math.floor(player.y);
    var z as int = Math.floor(player.z);
    var currentPosition as IBlockPos = crafttweaker.util.Position3f.create(x, y, z).asBlockPos();
    var brightness as int = world.getBrightness(currentPosition);
    if (brightness <= 4){
        SanityUtils.sanityMinus(0.05f, player);
    }
    else {
        sanityPlus.sanityPlus(0.03f, player);
    }
    var playerHighHightCheck as bool = event.player.y > 100.00f;
    var playerLowHightCheck as bool = event.player.y < 25.00f;
    var playerPotion = event.player.activePotionEffects;
    if (!isNull(playerPotion)){
        for potion in playerPotion {
            var potionName as string = potion.effectName;
            print(potionName);
            if (potionName == <potion:pyrotech:comfort>.name){
                
            }
        }
    }

});*/

