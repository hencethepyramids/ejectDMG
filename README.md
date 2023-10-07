# ejectDMG

This script gets a list of all mounted volumes using the hdiutil info command and then iterates through each volume to eject it using hdiutil eject. It checks that the volume is not the startup disk (your main system volume) before attempting to eject it.