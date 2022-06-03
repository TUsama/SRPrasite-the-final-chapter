import crafttweaker.data.IData;

function sanityMinus(sanity_minus as float, prevData as IData) as IData {
    var newData as IData = { sanity: sanity_minus };
    if (!isNull(prevData)) {
        var current_sanity as float = prevData.sanity.asFloat();
        //判断理智值是否大于减值，理智不可能为负数。这里的设定是，如果减不到负数，那就减，如果减得到负数，那就是0。
        if (current_sanity > sanity_minus) {
            var final_sanity as float = current_sanity - sanity_minus;
            var newData as IData = prevData + { sanity: final_sanity };
        } else {
            var newData as IData = prevData + { sanity: max(current_sanity - sanity_minus, 0) };
        }
    }
    return newData;
}

function sanityPlus(sanity_plus as float, prevData as IData) {
    var newData as IData = { sanity: sanity_plus };
    if (!isNull(prevData)) {
        var current_sanity as float = prevData.sanity.asFloat();
        //保证理智最高不高于100。
        var newData = prevData + { sanity: min(current_sanity + sanity_plus, 100.0) };
    }
    return newData;
}