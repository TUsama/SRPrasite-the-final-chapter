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
    <nocubessrpaddon:flamethrowerpart>,
	<quark:pickarang>,
    <nyx:meteor_hoe>,
	<nyx:meteor_axe>,
	<nyx:meteor_chest>,
	<nyx:meteor_bow>,
	<nyx:meteor_pickaxe>,
	<nyx:meteor_shovel>,
	<nyx:meteor_sword>,
	<nyx:meteor_helm>,
	<nyx:meteor_pants>,
	<nyx:meteor_hammer>,
	<nyx:meteor_finder>,
	<nyx:meteor_boots>
] as IItemStack[];

for item in hideandremove {

mods.jei.JEI.hide(item);
recipes.remove(item);

}


val hidemods = [
    loadedMods["soviet"],
] as IMod[];


for mod in hidemods {
    for item in mod.items{
        recipes.remove(item);
        mods.jei.JEI.hide(item);
    }

}




