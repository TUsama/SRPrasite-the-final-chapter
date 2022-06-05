#loader crafttweaker reloadableevents

import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerLoggedInEvent;
import scripts.sanity.SanityUtils;



events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
        SanityUtils.checkSanity(event.player);
});