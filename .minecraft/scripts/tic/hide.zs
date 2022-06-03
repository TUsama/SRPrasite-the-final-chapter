import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

val categories as string[] = [
    "tcomplement:melter",
    "tcomplement:high_oven_mix",
    "tcomplement:high_oven_heat",
    "tcomplement:high_oven_melting"
];

for category in categories {
    mods.jei.JEI.hideCategory(category);
}

var hide_NBT as string[] = [
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
];

for nbt in hide_NBT {
    mods.tconstruct.Casting.removeTableRecipe(<tconstruct:clay_cast>.withTag({PartType: nbt}));
    mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast>.withTag({PartType: nbt}));
    mods.jei.JEI.hide(<tconstruct:clay_cast>.withTag({PartType: nbt}));
    mods.jei.JEI.hide(<tconstruct:cast>.withTag({PartType: nbt}));
}

var hideAndRemove as IItemStack[] = [
    <tconstruct:smeltery_controller>,
    <tcomplement:high_oven_controller>,
    <tconstruct:tinker_tank_controller>,
    <tconstruct:cast_custom:3>,
    <tconstruct:cast_custom:4>
];

for item in hideAndRemove {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
    mods.tconstruct.Casting.removeTableRecipe(item);
}
