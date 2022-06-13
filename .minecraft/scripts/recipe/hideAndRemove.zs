import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

var hide as IItemStack[] = [

];

for item in hide {
    mods.jei.JEI.hide(item);
}

var hideAndRemove as IItemStack[] = [
    <nocubessrpaddon:flamethrower2>,
    <nocubessrpaddon:flamethrower>,
    <nocubessrpaddon:flamethrower3>,
    <nocubessrpaddon:flamethrowerfuel>,
    <nocubessrpaddon:flamethrowertank>,
    <nocubessrpaddon:flamethrowercore2>,
    <nocubessrpaddon:flamethrowercore>,
    <nocubessrpaddon:flamethrowercore3>,
    <nocubessrpaddon:flamethrowerbarrel>,
    <nocubessrpaddon:flamethrowergrip>,
    <nocubessrpaddon:flamethrowerpart>,
];

for item in hideAndRemove {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
}

val hideMods as IMod[] = [
    loadedMods["soviet"],
];

for mod in hideMods {
    for item in mod.items{
        recipes.remove(item);
        mods.jei.JEI.hide(item);
    }
}




