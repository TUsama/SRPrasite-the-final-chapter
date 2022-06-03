#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
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

events.onEntityLivingUseItemFinish(function(event as Finish) {
    if(healthy_food has event.item) {
        val saturation = event.item.saturation;
        val sanity_plus = 0.04 * saturation * saturation + 0.5;
        var prevData = event.player.data;
        var newData as IData = { sanity: sanity_plus };
        if (!isNull(prevData)) {
            newData = prevData + ({ sanity: prevData.sanity.getFloat() + sanity_plus });
        }

        event.player.update(newData);
    }
});