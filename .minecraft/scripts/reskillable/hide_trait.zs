#modloaded compatskills reskillable
import mods.compatskills.Unlockable;

var hide_trait = [
    
    <unlockable:reskillable:sidestep>,
    <unlockable:reskillable:hungry_farmer>

] as Unlockable[];

for trait in hide_trait {
    
    trait.setEnabled(false);

}