#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import scripts.sanity.SanityUtils;
import crafttweaker.data.IData;


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

var unhealthy_food as IItemStack[] = [
    <minecraft:rotten_flesh> ,
    <nocubessrpaddon:pestbread>,
    <nocubessrpaddon:dreadleaf>,
    <nocubessrpaddon:redflesh>,
    <nocubessrpaddon:cookedredflesh>,
    <nocubessrpaddon:molderedpie>,
    <nocubessrpaddon:alienburger>,
    <nocubessrpaddon:parasitelarvae>,
    <nocubessrpaddon:fleshfruitsoup>,
    <nocubessrpaddon:plaguesalad>,
    <nocubessrpaddon:fleshsoup>,
    <nocubessrpaddon:ruptorsoup>,
    <nocubessrpaddon:roastedlumps>,
    <nocubessrpaddon:fleshbarbecue>,
    <nocubessrpaddon:cookedparasiteheart>
];
events.onEntityLivingUseItemFinish(function(event as Finish) {
    var healthy_check = healthy_food has event.item;
    var unhealthy_check = unhealthy_food has event.item;
    if(healthy_check) {
        val saturation_1 as float = event.item.saturation;
        val sanity_plus as float = 0.04f * saturation_1 * saturation_1 + 0.5f;
        var player as IPlayer = event.entity;
        SanityUtils.sanityPlus(sanity_plus, player);
        }
        if(unhealthy_check) {
        val saturation_2 as float = event.item.saturation;
        val sanity_minus as float = 0.04f * saturation_2 * saturation_2 + 0.5f;
        var player as IPlayer = event.entity;
        SanityUtils.sanityMinus(sanity_minus, player);
        }
        if(!healthy_check && !unhealthy_check && event.item.isFood) {
        val saturation_3 as float = event.item.saturation;
        val sanity_the_rest as float = 0.02f * saturation_3 * saturation_3 + 0.3f;
        var player as IPlayer = event.entity;
        SanityUtils.sanityPlus(sanity_the_rest, player);
        }
    }
);
