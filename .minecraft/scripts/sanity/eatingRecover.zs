#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.All;
import crafttweaker.event.EntityLivingUseItemEvent.Start;
import crafttweaker.event.EntityLivingUseItemEvent.Tick;
import crafttweaker.event.EntityLivingUseItemEvent.Stop;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;


var healthy_food as IItemStack[] = [
    <minecraft:cake>,
    <futuremc:honey_bottle>,
    <futuremc:sweet_berries>,
    <minecraft:beetroot>,
    <birdsfoods:molasses>,
    <birdsfoods:hotcakes_with_syrup>,
    <birdsfoods:choc_hotcakes_syrup>,
    <birdsfoods:berry_hotcakes_syrup>,
    <birdsfoods:waffles_syrup>,
    <birdsfoods:bacon_pancakes_syrup>,
    <birdsfoods:choc_waffles_syrup>,
    <birdsfoods:jam>,
    <birdsfoods:chocolate_bar>,
    <birdsfoods:sweet_tea>,
    <birdsfoods:sweet_milk_tea>,
    <birdsfoods:ice_cream>,
    <birdsfoods:ice_cream_sundae>,
    <birdsfoods:plum_pudding>,
    <birdsfoods:ice_cream_bacone>
];

events.onEntityLivingUseItemStart(function(event as crafttweaker.event.EntityLivingUseItemEvent.Start){
    var check = healthy_food has event.item;
    if (check){
        var hunger_origin = event.player.foodStats.saturationLevel;
        events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish){
            var hunger_last = event.player.foodStats.saturationLevel;
            var minus = hunger_last - hunger_origin;
            var sanity_plus = 0.04 * minus * minus + 0.5;
            event.player.setSanity(event.player.getSanity() + sanity_plus, false);
        });
    } else {
        //no-op
    }
});

