#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import scripts.sanity.SanityUtils;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    var currentPosionBlockDefinition as IBlockDefinition = getBlock(event.player.position.asBlockPos()).definition;
    var lightLevel as float = currentPosionBlockDefinition.lightLevel;
    var lowLightCheck as bool = lightLevel < 3;
    var highLightCheck as bool = lightLevel > 10;
    var playerHighHightCheck as bool = event.player.y > 100.00f;
    var playerLowHightCheck as bool = event.player.y < 25.00f;
    SanityUtils.sanityDecrease(0.00004f, event.player, lowLightCheck);
    SanityUtils.sanityIncrease(0.00004f, event.player, highLightCheck);
    SanityUtils.sanityDecrease(0.00002f, event.player, playerHighHightCheck);
    SanityUtils.sanityDecrease(0.00004f, event.player, playerLowHightCheck);
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