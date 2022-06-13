#loader crafttweaker reloadableevents

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

var oreSweatFood = <ore:SweatFood>;

var sweatFood as IItemStack[] = [
    <vanillafoodpantry:water_bottle:1>,
    <vanillafoodpantry:fudge_portion>,
    <vanillafoodpantry:hardened_sugar>,
    <vanillafoodpantry:golden_sugar>,
    <vanillafoodpantry:taffy_blob>,
    <vanillafoodpantry:caramelized_alliums>,
    <vanillafoodpantry:molasses_glazed_carrots>,
    <vanillafoodpantry:stewed:38>,
    <vanillafoodpantry:creamsoup:973>,
    <vanillafoodpantry:cookie:601>,
    <vanillafoodpantry:cookie:602>,
    <vanillafoodpantry:cookie:798>,
    <vanillafoodpantry:muffins:406>,
    <vanillafoodpantry:muffins:404>,
    <vanillafoodpantry:muffins:402>,
    <vanillafoodpantry:milkdrink:379>,
    <vanillafoodpantry:bucket_sweetened_milk>,
    <vanillafoodpantry:milkdrink:399>,
    <vanillafoodpantry:milkdrink:379>,
    <vanillafoodpantry:milkdrink:397>,
    <vanillafoodpantry:milkdrink:393>,
    <vanillafoodpantry:milkdrink:398>,
    <simpledifficulty:juice:*>

];

for item in sweatFood {
    oreSweatFood.add(item);
}

