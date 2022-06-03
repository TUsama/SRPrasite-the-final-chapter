/*
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.All;
import crafttweaker.event.EntityLivingUseItemEvent.Start;
import crafttweaker.event.EntityLivingUseItemEvent.Tick;
import crafttweaker.event.EntityLivingUseItemEvent.Stop;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.player.IPlayer;



       events.onEntityLivingUseItemStop(function(event as crafttweaker.event.EntityLivingUseItemEvent.Stop){
           var remote_check = !event.player.world.remote;
           var check = event.item.definition.id == <minecraft:apple>.definition.id;
            if (check && remote_check) {
                var thirst_1 = event.player.getThirst();
                event.player.setThirst(thirst_1 + 5);

            }

    });
*/