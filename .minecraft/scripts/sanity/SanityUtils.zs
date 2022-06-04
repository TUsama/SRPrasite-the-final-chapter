#loader crafttweaker reloadableevents
#priority 1001

import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;

function sanityMinus(sanity_minus as float, player as IPlayer) {
    if (!isNull(player.data)) {
        var prevData as IData = player.data;
        //判断是否有理智值。
        if (!isNull(prevData.sanity)) {
            var currentSanity as float = prevData.sanity.asFloat();
            //判断理智值是否大于减值，理智不可能为负数。这里的设定是，如果减不到负数，那就减，如果减得到负数或是0，那就是0。
            if (currentSanity > sanity_minus) {
                var finalSanity as float = currentSanity - sanity_minus;
                var newData as IData = prevData + { sanity: finalSanity };
                player.update(newData);
            } else {
                var newData as IData = prevData + { sanity: 0 };
                player.update(newData);
            }

        } else {
            prevData = prevData + { sanity: 100 };
            var currentSanity as float = prevData.sanity.asFloat();
            if (currentSanity > sanity_minus) {
                var finalSanity as float = currentSanity - sanity_minus;
                var newData as IData = prevData + { sanity: finalSanity };
                player.update(newData);
            } else {
                var newData as IData = prevData + { sanity: 0 };
                player.update(newData);
            }
        }
        print(player.data.sanity);
    }
}

function sanityPlus(sanity_plus as float, player as IPlayer) {
    if (!isNull(player.data)) {
        var prevData as IData = player.data;
        if (!isNull(prevData.sanity)) {
            var currentSanity as float = prevData.sanity.asFloat();
            var finalSanity as float = currentSanity + sanity_plus;
            //保证理智最高不高于100。
            if (finalSanity < 100){
                var newData as IData = prevData + { sanity: finalSanity };
                player.update(newData);
            } else {
                var newData as IData = prevData + { sanity:  100 };
                player.update(newData);
            }
        } else {
            prevData = prevData + { sanity: 100 };
            var currentSanity as float = prevData.sanity.asFloat();
            var finalSanity as float = currentSanity + sanity_plus;
            //保证理智最高不高于100。
            if (finalSanity < 100){
                var newData as IData = prevData + { sanity: finalSanity };
                player.update(newData);
            } else {
                var newData as IData = prevData + { sanity:  100 };
                player.update(newData);
            }
        }
        print(player.data.sanity);
    }
}