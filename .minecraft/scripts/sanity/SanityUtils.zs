#loader crafttweaker reloadableevents
#priority 1002

import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import mods.ctutils.utils.Math;

//理智标准化，将所有不在0到100以内的理智值调整到0到100之间。
function sanitySta(sanity as float) as float{
    var sanitySta as float = Math.clamp(sanity, 0.0f, 100.0f);
    return sanitySta;
}

//理智检测，检查是否有理智。
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
//理智变动的抽象过程，需要输入变化值，变化类型以及对应玩家。
function sanityModifier(amount as float, behavior as int, player as IPlayer){
    var prevData as IData = player.data;
    var currentSanity as float = prevData.sanity.asFloat();
    //0意味着增加。
    if (behavior == 0){
        //如果现有理智为100，则跳过。
        if (currentSanity == 100.0f){
        } else {
            var finalSanity as float = sanitySta(currentSanity + amount);
            var newData as IData = prevData + { sanity: finalSanity };
            player.update(newData);
            print(finalSanity);
        }
    }
    //1意味着减去。
    if (behavior == 1){    
        //如果现有理智为0，则跳过。
        if (currentSanity == 0.0f) {
        } else {
            var finalSanity as float = sanitySta(currentSanity - amount);
            var newData as IData = prevData + { sanity: finalSanity };
            player.update(newData);
            print(finalSanity);
        }
    }
    //若既不是增加也不是减少，则输出语句。
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
//满足条件，理智就会持续上涨。
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