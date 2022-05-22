import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

val Category = [

    "tcomplement:melter",
    "tcomplement:high_oven_mix",
    "tcomplement:high_oven_heat",
    "tcomplement:high_oven_melting"


] as string[];


for String in Category {

    mods.jei.JEI.hideCategory(String);

}

var hide_NBT = [

    "tconstruct:knife_blade",
    "tconstruct:large_plate",
    "tconstruct:bow_string",
    "tconstruct:pan_head",
    "tconstruct:shard",
    "plustic:battery_cell",
    "totaltinkers:greatbladecore",
    "tconstruct:sharpening_kit",
    "conarm:helmet_core",
    "tconstruct:sword_blade",
    "tconstruct:tough_tool_rod",
    "tconstruct:arrow_head",
    "tconstruct:excavator_head",
    "tconstruct:hand_guard",
    "tconstruct:fletching",
    "conarm:boots_core",
    "tconstruct:tool_rod",
    "tconstruct:arrow_shaft",
    "totaltinkers:fullguard",
    "plustic:pipe_piece",
    "tconstruct:tough_binding",
    "tconstruct:wide_guard",
    "conarm:leggings_core",
    "tconstruct:binding",
    "tconstruct:axe_head",
    "tconstruct:sign_head",
    "totaltinkers:explosivecore",
    "tconstruct:shovel_head",
    "conarm:polishing_kit",
    "tconstruct:scythe_head",
    "tconstruct:large_sword_blade",
    "tconstruct:hammer_head",
    "conarm:armor_trim",
    "tconstruct:pick_head",
    "tconstruct:kama_head",
    "tconstruct:bow_limb",
    "conarm:armor_plate",
    "conarm:chest_core",
    "tconstruct:broad_axe_head",
    "tconstruct:cross_guard"



] as string[];


for String in hide_NBT {

    mods.tconstruct.Casting.removeTableRecipe(<tconstruct:clay_cast>.withTag({PartType: String}));
    mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast>.withTag({PartType: String}));
    mods.jei.JEI.hide(<tconstruct:clay_cast>.withTag({PartType: String}));
    mods.jei.JEI.hide(<tconstruct:cast>.withTag({PartType: String}));

}

var hideandremove = [

    <tconstruct:smeltery_controller>,
    <tcomplement:high_oven_controller>,
    <tconstruct:tinker_tank_controller>,
    <tconstruct:cast_custom:3>,
    <tconstruct:cast_custom:4>
    
] as IItemStack[];

for item in hideandremove {

    mods.jei.JEI.hide(item);
    recipes.remove(item);
    mods.tconstruct.Casting.removeTableRecipe(item);


}
