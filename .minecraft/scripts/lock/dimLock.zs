#loader crafttweaker reloadableevents
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PortalSpawnEvent;

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent){
    var click_block as string = event.block.definition.id;
    var check_block as string = <minecraft:end_portal_frame>.asBlock().definition.id;
    var check = click_block == check_block;
    var remote_check = !event.player.world.remote;
    if (check && !isNull(event.player.currentItem) && remote_check){
        var item_check = event.item.definition.id as string == <minecraft:ender_eye>.definition.id;
        if (item_check){
            event.cancel();
        }
    }
});


events.onPortalSpawn(function(event as crafttweaker.event.PortalSpawnEvent){
    event.cancel();
});

