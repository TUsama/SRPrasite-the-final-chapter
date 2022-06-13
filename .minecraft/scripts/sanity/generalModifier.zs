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

});


var i as int = 0;
while(i <= 10) {
    print(i);
    i = i + 1;
    if (i == 10) {
        //i = 0;
    }
}*/