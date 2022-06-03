function sanityMinus(sanity_minus as float, prevData as IData, newData as IData) {
    if (!isNull(prevData)) {
        //判断理智值是否大于减值，理智不可能为负数。这里的设定是，如果减不到负数，那就减，如果减得到负数，那就是0。
        if (prevDataprevData.sanity.getFloat() > sanity_minus) {
            newData = prevData + ({ sanity: prevData.sanity.getFloat() - sanity_minus });
        } else {
            newData = prevData + ({ sanity: max(prevData.sanity.getFloat() - sanity_minus, 0) });
        }
    }
}

function sanityPlus(sanity_plus as float, prevData as IData, newData as IData) {
    if (!isNull(prevData)) {
        //保证理智最高不高于100。
        newData = prevData + ({ sanity: min(prevData.sanity.getFloat() + sanity_plus, 100) });
    }
}