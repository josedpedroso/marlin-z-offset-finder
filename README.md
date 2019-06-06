# Marlin Z offset finder

This is a simple g-code script to allow you to find the correct z-offset for your printer's bed-level probe. This script assumes that the probe is correctly positioned, ie, that it triggers safely below the nozzle and that the offset will not exceed 3mm. If your probe is connected to an endstop, you should disable ABORT_ON_ENDSTOP_HIT_FEATURE_ENABLED in Configuration_adv.h. I'm not responsible if your nozzle crashes into the bed or anything else bad happens.

# Usage

Start by looking at the beginning of the script. It'll heat the nozzle to 150º to soften any plastic that might be stuck to it. Adjust this value or remove the line if you like. Then it'll heat the bed to 65º and wait 1 minute to allow the temperature to stabilize. Adjust these values if necessary. After probing, it'll move the nozzle to (111, 111, 0). Adjust this position if you have a bed that is significantly larger or smaller than 20x20cm, but keep Z at 0. Finally, each Z step is 0.08mm because that's a multiple of the 0.04mm magic Z number in a lot of printers. Adjust the steps if your printer has a different magic Z number.

Next, run the script on your printer, normally by copying it to an SD card. It'll heat up, probe, and wait for you to press OK on the printer. Each time you press OK, the nozzle will lower by 0.08mm. Check the distance with a piece of paper between the nozzle and the bed. Stop lowering when you can feel friction when moving the paper beneath the nozzle. The distance shown (at -x.xxmm) is your correct Z-offset. Turn off the printer and set Z_PROBE_OFFSET_FROM_EXTRUDER in Marlin's Configuration.h to that value.
