#loader crafttweaker reloadableevents

import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerLoggedInEvent;
import scripts.sanity.SanityUtils;


//玩家登录时检测玩家是否的理智情况。
events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
        SanityUtils.checkSanity(event.player);
});