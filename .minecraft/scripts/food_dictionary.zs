import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;




val oreFlourFood = <ore:FlourFood>;


var FlourFood = [
    <birdsfoods:hotcakes>,
    <birdsfoods:hotcakes_with_syrup>,
    <birdsfoods:choc_hotcakes>,
    <birdsfoods:choc_hotcakes_syrup>,
    <birdsfoods:berry_hotcakes>,
    <birdsfoods:berry_hotcakes_syrup>,
    <birdsfoods:bacon_pancakes>,
    <birdsfoods:bacon_pancakes_syrup>,
    <birdsfoods:waffles>,
    <birdsfoods:waffles_syrup>,
    <birdsfoods:choc_waffles>,
    <birdsfoods:choc_waffles_syrup>,
    <birdsfoods:berry_waffles>,
    <birdsfoods:berry_waffles_syrup>,
    <birdsfoods:rabbit_pie>,
    <birdsfoods:chicken_pot_pie>,
    <birdsfoods:shepherds_pie>,
    <birdsfoods:fish_pie>,
    <birdsfoods:cottage_pie>,
    <birdsfoods:veg_pie>,
    <birdsfoods:quiche>,
    <birdsfoods:mushroom_quiche>,
    <birdsfoods:bacon_quiche>,
    <birdsfoods:fish_quiche>,
    <birdsfoods:green_quiche>,
    <birdsfoods:pizza>,
    <birdsfoods:meat_pizza>,
    <birdsfoods:veg_pizza>,
    <birdsfoods:pizza_supreme>,
    <birdsfoods:empty_sandwich>,
    <birdsfoods:buttered_toast>,
    <birdsfoods:jammy_toast>,
    <birdsfoods:jammy_buttered_toast>,
    <birdsfoods:chicken_salad>,
    <birdsfoods:t_chicken_salad>,
    <birdsfoods:egg_salad>,
    <birdsfoods:t_egg_salad>,
    <birdsfoods:fish_salad>,
    <birdsfoods:t_fish_salad>,
    <birdsfoods:cheese_sandwich>,
    <birdsfoods:t_cheese_sandwich>,
    <birdsfoods:egg_sandwich>,
    <birdsfoods:t_egg_sandwich>,
    <birdsfoods:bacon_sandwich>,
    <birdsfoods:t_bacon_sandwich>,
    <birdsfoods:bacon_and_cheese_sandwich>,
    <birdsfoods:t_bacon_and_cheese_sandwich>,
    <birdsfoods:egg_and_cheese_sandwich>,
    <birdsfoods:t_egg_and_cheese_sandwich>,
    <birdsfoods:bacon_and_egg_sandwich>,
    <birdsfoods:t_bacon_and_egg_sandwich>,
    <birdsfoods:t_bacon_and_egg_sandwich>,
    <birdsfoods:bacon_egg_and_cheese_sandwich>,
    <birdsfoods:t_bacon_egg_and_cheese_sandwich>,
    <birdsfoods:pork_bbq_sandwich>,
    <birdsfoods:t_pork_bbq_sandwich>,
    <birdsfoods:chicken_bbq_sandwich>,
    <birdsfoods:t_chicken_bbq_sandwich>,
    <birdsfoods:hamburger>,
    <birdsfoods:t_hamburger>,
    <birdsfoods:bacon_hamburger>,
    <birdsfoods:t_bacon_hamburger>,
    <birdsfoods:cheeseburger>,
    <birdsfoods:t_cheeseburger>,
    <birdsfoods:bacon_cheeseburger>,
    <birdsfoods:t_bacon_cheeseburger>,
    <birdsfoods:steak_sandwich>,
    <birdsfoods:t_steak_sandwich>,
    <birdsfoods:cheesesteak>,
    <birdsfoods:t_cheesesteak>,
    <birdsfoods:veggie_hamburger>,
    <birdsfoods:t_veggie_hamburger>,
    <birdsfoods:veggie_cheeseburger>,
    <birdsfoods:t_veggie_cheeseburger>,
    <birdsfoods:veg_sandwich>,
    <birdsfoods:t_veg_sandwich>,
    <birdsfoods:cheesy_veg_sandwich>,
    <birdsfoods:t_cheesy_veg_sandwich>,
    <birdsfoods:gyro>,
    <birdsfoods:veggie_gyro>,
    <birdsfoods:dagwood>,
    <birdsfoods:cannibal_sandwich>,
    <birdsfoods:t_cannibal_sandwich>,
    <birdsfoods:real_cannibal_sandwich>,
    <birdsfoods:t_real_cannibal_sandwich>,
    <birdsfoods:chicken_sandwich>,
    <birdsfoods:t_chicken_sandwich>,
    <birdsfoods:cheesy_chicken_sandwich>,
    <birdsfoods:t_cheesy_chicken_sandwich>,
    <birdsfoods:buffalo_chicken_sandwich>,
    <birdsfoods:t_buffalo_chicken_sandwich>,
    <birdsfoods:cheesy_buffalo_chicken_sandwich>,
    <birdsfoods:t_cheesy_buffalo_chicken_sandwich>,
    <birdsfoods:ham_sandwich>,
    <birdsfoods:t_ham_sandwich>,
    <birdsfoods:ham_and_cheese_sandwich>,
    <birdsfoods:t_ham_and_cheese_sandwich>,
    <birdsfoods:chip_sandwich>,
    <birdsfoods:t_chip_sandwich>,
    <birdsfoods:cheesy_chip_sandwich>,
    <birdsfoods:t_cheesy_chip_sandwich>,
    <birdsfoods:beef_taco>,
    <birdsfoods:chicken_taco>,
    <birdsfoods:fish_taco>,
    <birdsfoods:pork_taco>,
    <birdsfoods:veggie_taco>,
    <birdsfoods:empty_taco>,
    <birdsfoods:buckwheat_noodles>,
    <birdsfoods:beef_soba>,
    <birdsfoods:chicken_soba>,
    <birdsfoods:fish_soba>,
    <birdsfoods:veggie_soba>,
    <birdsfoods:cheesy_beef_taco>,
    <birdsfoods:cheesy_chicken_taco>,
    <birdsfoods:cheesy_pork_taco>,
    <birdsfoods:cheesy_fish_taco>,
    <birdsfoods:cheesy_veggie_taco>,
    <birdsfoods:beef_taco_with_cream>,
    <birdsfoods:chicken_taco_with_cream>,
    <birdsfoods:pork_taco_with_cream>,
    <birdsfoods:fish_taco_with_cream>,
    <birdsfoods:veggie_taco_with_cream>,
    <birdsfoods:beef_taco_with_greens>,
    <birdsfoods:chicken_taco_with_greens>,
    <birdsfoods:pork_taco_with_greens>,
    <birdsfoods:fish_taco_with_greens>,
    <birdsfoods:veggie_taco_with_greens>,
    <birdsfoods:cheesy_beef_taco_with_cream>,
    <birdsfoods:cheesy_chicken_taco_with_cream>,
    <birdsfoods:cheesy_pork_taco_with_cream>,
    <birdsfoods:cheesy_fish_taco_with_cream>,
    <birdsfoods:cheesy_veggie_taco_with_cream>,
    <birdsfoods:cheesy_beef_taco_with_greens>,
    <birdsfoods:cheesy_chicken_taco_with_greens>,
    <birdsfoods:cheesy_pork_taco_with_greens>,
    <birdsfoods:cheesy_fish_taco_with_greens>,
    <birdsfoods:cheesy_veggie_taco_with_greens>,
    <birdsfoods:beef_taco_with_cream_and_greens>,
    <birdsfoods:chicken_taco_with_cream_and_greens>,
    <birdsfoods:pork_taco_with_cream_and_greens>,
    <birdsfoods:fish_taco_with_cream_and_greens>,
    <birdsfoods:beef_taco_supreme>,
    <birdsfoods:veggie_taco_with_cream_and_greens>,
    <birdsfoods:chicken_taco_supreme>,
    <birdsfoods:pork_taco_supreme>,
    <birdsfoods:fish_taco_supreme>,
    <birdsfoods:veggie_taco_supreme>,
    <birdsfoods:breakfast_burrito>,
    <birdsfoods:taako>,
    <birdsfoods:apple_pie>,
    <birdsfoods:apple_pie_a_la_mode>,
    <birdsfoods:pumpkin_bread>,
    <birdsfoods:shortbread_cookie>,
    <birdsfoods:cookie_dough>


] as IItemStack[];

for item in FlourFood {

oreFlourFood.add(item);

}

val oreMeatFood = <ore:MeatFood>;

var MeatFood = [
    <birdsfoods:sliced_lamb>,
    <birdsfoods:chopped_chicken>,
    <birdsfoods:raw_fingers>,
    <birdsfoods:chicken_fingers>,
    <birdsfoods:raw_barbecue_pork>,
    <birdsfoods:barbecue_pork>,
    <birdsfoods:raw_barbecue_chicken>,
    <birdsfoods:barbecue_chicken>,
    <birdsfoods:ground_beef>,
    <birdsfoods:beef_stew>,
    <birdsfoods:chicken_noodle_soup>,
    <birdsfoods:meat_pizza>,
    <birdsfoods:fish_quiche>,
    <birdsfoods:cottage_pie>,
    <birdsfoods:fish_pie>,
    <birdsfoods:chicken_pot_pie>,
    <birdsfoods:rabbit_pie>,
    <birdsfoods:poutine>,
    <birdsfoods:mashed_potato_gravy>,
    <birdsfoods:beef_jerky>,
    <birdsfoods:gravy>,
    <birdsfoods:burger>,
    <birdsfoods:chicken_salad>,
    <birdsfoods:t_chicken_salad>,
    <birdsfoods:pork_bbq_sandwich>,
    <birdsfoods:t_pork_bbq_sandwich>,
    <birdsfoods:chicken_bbq_sandwich>,
    <birdsfoods:t_chicken_bbq_sandwich>,
    <birdsfoods:hamburger>,
    <birdsfoods:t_hamburger>,
    <birdsfoods:bacon_hamburger>,
    <birdsfoods:t_bacon_hamburger>,
    <birdsfoods:cheeseburger>,
    <birdsfoods:bacon_cheeseburger>,
    <birdsfoods:t_bacon_cheeseburger>,
    <birdsfoods:t_cannibal_sandwich>,
    <birdsfoods:gyro>,
    <birdsfoods:cannibal_sandwich>,
    <birdsfoods:real_cannibal_sandwich>,
    <birdsfoods:t_real_cannibal_sandwich>,
    <birdsfoods:chicken_sandwich>,
    <birdsfoods:t_chicken_sandwich>,
    <birdsfoods:cheesy_chicken_sandwich>,
    <birdsfoods:t_cheesy_chicken_sandwich>,
    <birdsfoods:beef_soba>,
    <birdsfoods:chicken_soba>,
    <birdsfoods:fish_soba>,
    <birdsfoods:chicken_alfredo>,
    <birdsfoods:beef_vindaloo>,
    <birdsfoods:lamb_vindaloo>,
    <birdsfoods:pork_curry>,
    <birdsfoods:fish_curry>,
    <birdsfoods:spiced_beef>,
    <birdsfoods:spiced_chicken>,
    <birdsfoods:spiced_pork>,
    <birdsfoods:ancho_beef>,
    <birdsfoods:ancho_chicken>,
    <birdsfoods:ancho_fish>,
    <birdsfoods:ancho_pork>,
    <birdsfoods:beef_taco>,
    <birdsfoods:chicken_taco>,
    <birdsfoods:fish_taco>,
    <birdsfoods:pork_taco>,
    <birdsfoods:cheesy_beef_taco>,
    <birdsfoods:cheesy_chicken_taco>,
    <birdsfoods:cheesy_pork_taco>,
    <birdsfoods:cheesy_fish_taco>,
    <birdsfoods:beef_taco_with_cream>,
    <birdsfoods:chicken_taco_with_cream>,
    <birdsfoods:pork_taco_with_cream>,
    <birdsfoods:beef_taco_with_greens>,
    <birdsfoods:chicken_taco_with_greens>,
    <birdsfoods:pork_taco_with_greens>,
    <birdsfoods:fish_taco_with_greens>,
    <birdsfoods:cheesy_beef_taco_with_cream>,
    <birdsfoods:cheesy_chicken_taco_with_cream>,
    <birdsfoods:cheesy_pork_taco_with_cream>,
    <birdsfoods:cheesy_beef_taco_with_greens>,
    <birdsfoods:cheesy_chicken_taco_with_greens>,
    <birdsfoods:cheesy_pork_taco_with_greens>,
    <birdsfoods:beef_taco_with_cream_and_greens>,
    <birdsfoods:pork_taco_with_cream_and_greens>,
    <birdsfoods:beef_taco_supreme>,
    <birdsfoods:chicken_taco_supreme>,
    <birdsfoods:pork_taco_supreme>,
    <birdsfoods:fish_taco_supreme>,
    <birdsfoods:cobb_salad>

] as IItemStack[];

for item in MeatFood {

    oreMeatFood.add(item);

}


