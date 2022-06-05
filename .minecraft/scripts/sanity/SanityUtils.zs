#loader crafttweaker reloadableevents
#priority 1002

import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import mods.ctutils.utils.Math;

function sanitySta(sanity as float) as float{
    var sanitySta as float = Math.clamp(sanity, 0.0f, 100.0f);
    return sanitySta;
}


function checkSanity(player as IPlayer){
    if (!isNull(player.data.sanity)) {
        var sanity as float = sanitySta(player.data.sanity.asFloat());
        print(sanity);
        player.update(sanity);
    } else {
        var prevData as IData = player.data;
        var updateSanity as IData = prevData + { sanity:  100 };
        player.update(updateSanity);
    }
}

function sanityModifier(amount as float, behavior as int, player as IPlayer){
    var prevData as IData = player.data;
    var currentSanity as float = prevData.sanity.asFloat();
    if (behavior == 0){
        if (currentSanity == 100.0f){
        } else {
            var finalSanity as float = sanitySta(currentSanity + amount);
            var newData as IData = prevData + { sanity: finalSanity };
            player.update(newData);
            print(finalSanity);
        }
    }
    if (behavior == 1){    
        if (currentSanity == 0.0f) {
        } else {
            var finalSanity as float = sanitySta(currentSanity - amount);
            var newData as IData = prevData + { sanity: finalSanity };
            player.update(newData);
            print(finalSanity);
        }
    }
    if (!behavior == 0 && !behavior == 1){
        print("behavior is wrong!");
    }
}


function sanityPlus(sanity_plus as float, player as IPlayer) {
    if (!isNull(player.data)) {
        checkSanity(player);
        sanityModifier(sanity_plus, 0, player);
    }
}

function sanityMinus(sanity_minus as float, player as IPlayer) {
    if (!isNull(player.data)) {
        checkSanity(player);
        sanityModifier(sanity_minus, 1, player);
    }
}

function sanityIncrease(amount as float, player as IPlayer, condition as bool) {
    if (!isNull(player.data)){    
        checkSanity(player);
        while (condition){
            sanityModifier(amount, 0, player);
        }
    }
}


function sanityDecrease(amount as float, player as IPlayer, condition as bool) {
    if (!isNull(player.data)){    
        checkSanity(player);
        while (condition){
            sanityModifier(amount, 1, player);
        }
    }
}