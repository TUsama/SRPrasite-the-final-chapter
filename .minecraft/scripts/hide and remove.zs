import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

var hide = [

] as IItemStack[];

for item in hide {

mods.jei.JEI.hide(item);

}

var hideandremove = [
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
    <nocubessrpaddon:flamethrowerpart>
	<nocubessrpaddon:pestillentknife>
	<quark:pickarang>
] as IItemStack[];

for item in hideandremove {

mods.jei.JEI.hide(item);
recipes.remove(item);

}


val hidemods = [
    loadedMods["soviet"],
    loadedMods["nyx"]
] as IMod[];


for mod in hidemods {
    for item in mod.items{
	recipes.remove(item);
    mods.jei.JEI.hide(item);
    }

}




