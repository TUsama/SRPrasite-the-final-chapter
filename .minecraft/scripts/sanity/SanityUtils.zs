#loader crafttweaker reloadableevents
#priority 1002

import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import mods.ctutils.utils.Math;


//理智标准化，将所有不在0到100以内的理智值调整到0到100之间。
function sanitySta(currentSanity as float, player as IPlayer) as float{
    var maxPlayerSanity as float = player.data.sanity.maxSanity.asFloat();
    var minPlayerSanity as float = player.data.sanity.minSanity.asFloat();
    var sanitySta as float = Math.clamp(currentSanity, maxPlayerSanity, minPlayerSanity);
    return sanitySta;
}

//理智数据检测。
function checkSanity(player as IPlayer){
    var remote as bool = !player.world.remote;
    //检测玩家是否在服务端。
    if (remote){
    //检查玩家是否有理智数据。
        if (!isNull(player.data.sanity)) {
            var playerSanityData as IData = player.data.sanity;
            var unregularSanity as float =  playerSanityData.currentSanity.asFloat();
            var regularSanity as float = sanitySta(unregularSanity, player);
            if (unregularSanity != regularSanity){
                //检查拿出来的数据和处理过的数据是否相同，若不同，则更新。
                var newSanityData as IData = { currentSanity : regularSanity };
                var rightSanityData as IData = playerSanityData + newSanityData;
                player.update(rightSanityData);
            }
        } else {
            //如果没有理智数据，则为其添加理智数据。
            var sanity as IData = {
                sanity : 
                {
                    currentSanity : 100.0f,
                    maxSanity : 100.0f,
                    minSanity : 0.0f
                }
            };
            var prevData as IData = player.data;
            var updateSanity as IData = prevData + sanity;
            print(updateSanity);
            player.update(updateSanity);
        }
    }
}
//理智变动的抽象过程，需要输入变化值，变化类型以及对应玩家。
function sanityModifier(amount as float, behavior as int, player as IPlayer){
    var prevSanityData as IData = player.data.sanity;
    var remote as bool = !player.world.remote;
    if (remote && !isNull(prevSanityData)){
        var currentSanity as float = prevSanityData.currentSanity.asFloat();
        //0意味着增加。
        if (behavior == 0){
            var maxSanity as float =  prevSanityData.maxSanity.asFloat();
            print(currentSanity);
            if (currentSanity == maxSanity){
            //如果现有理智为100，则跳过。
            } else {
                var finalSanity as float = sanitySta(currentSanity + amount, player);
                var newData as IData = prevSanityData + { currentSanity: finalSanity };
                player.update(newData);
                print(finalSanity);
            }
        }
        //1意味着减去。
        if (behavior == 1){
            var minSanity as float =  prevSanityData.minSanity.asFloat();
            //如果现有理智为0，则跳过。
            if (currentSanity == minSanity) {
            } else {
                var finalSanity as float = sanitySta(currentSanity - amount, player);
                var newData as IData = prevSanityData + { currentSanity: finalSanity };
                player.update(newData);
                print(finalSanity);
            }
        }
        //若既不是增加也不是减少，则输出语句。
        if (!behavior == 0 && !behavior == 1){
            print("behavior is wrong!");
        }
    }
}

function sanityIntervalModifier(amount as float, behavior as int, player as IPlayer) {
    var remote as bool = !player.world.remote;
    var prevSanityData as IData = player.data.sanity;
    //0意味着增加。
    if (remote && !isNull(prevSanityData)){
        print(prevSanityData);
        var currentSanity as float = prevSanityData.currentSanity.asFloat();
        var maxPlayerSanity as float = player.data.sanity.maxSanity.asFloat();
        var minPlayerSanity as float = player.data.sanity.minSanity.asFloat();
        if (behavior == 0 && maxPlayerSanity < 100.0f){
            //更新最大值。
            var newMaxSanity = max(maxPlayerSanity + amount, 100.0f);
            var finalSanityData as IData = prevSanityData + { maxSanity : newMaxSanity };
            player.update(finalSanityData);
        }
        //1意味着减去，并且最小值不小于0。
        if (behavior == 1 && minPlayerSanity > 0.0f){
            //如果现有理智为0，则跳过。
            var newMinSanity = max(minPlayerSanity - amount, 0.0f);
            var finalSanityData as IData = prevSanityData + { minSanity : newMinSanity };
            player.update(finalSanityData);
        }
        //若既不是增加也不是减少，则输出语句。
        if (!behavior == 0 && !behavior == 1){
            print("behavior is wrong!");
        }
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

