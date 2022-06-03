#modloaded compatskills reskillable
import mods.compatskills.Unlockable;

var hide_trait as Unlockable[] = [
    <unlockable:reskillable:sidestep>,
    <unlockable:reskillable:hungry_farmer>
];

for trait in hide_trait {
    trait.setEnabled(false);
}