# CM7 for Kindle Fire

## Info

|||
|-----------------------------------:|:--------------------------|
|**Whistlestop's Discussion and build thread** | http://forum.xda-developers.com/showthread.php?t=1390773
|**Skimp Killah's binary build** | http://forum.xda-developers.com/showthread.php?t=1472609
|**Takenover83's 'Custom TWRP backup'** | http://forum.xda-developers.com/showthread.php?t=1475054
|**Looking to build for CWM (recovery option included in boot menu)?** | [checkout the CWM branch](https://github.com/IngCr3at1on/CM7KF/tree/cwm)

## Building 

### Initialize
[setup linux/OS X](http://source.android.com/source/initializing.html) please note: it must be sun-java-6, not openjdk

### Create a Working directory and download Google's repo command

```bash
mkdir cm7
cd cm7/
curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > repo
chmod a+x repo
```

### Sync with CyanogenMod sources (use the IngCr3at1on repo because CM hasn't updated their prebuilts on github last I looked, also this will include the my vendor/cyanogen directory which removes CM support apps)

### For Mac
```bash
./repo init -u git://github.com/IngCr3at1on/android.git -b gingerbread
./repo sync -j16
```

### For Ubuntu/Linux
```bash
repo init -u git://github.com/IngCr3at1on/android.git -b gingerbread
repo sync -j16
```

### Download Kindle Fire device tree (No need to pull in Rom manager it is removed in this build)
```bash
git clone git://github.com/IngCr3at1on/CM7KF.git github
mkdir -p device/amazon/ vendor/amazon
cd device/amazon
ln -s ../../github/device/amazon/blaze blaze
cd ../../vendor/amazon/
ln -s ../../github/vendor/amazon/blaze blaze
cd ../..
```

### Compile
```bash
source build/envsetup.sh
brunch blaze -j$(grep -c processor /proc/cpuinfo)
```

This should produce a flashable out/target/product/blaze/cm-7.2.0-RC0-blaze-KANG-signed.zip file. 
If the signing process fails try to run it again (the following command is extrapolated from the CM9 walkthrough and I have not tested it).

```bash
./device/amazon/blaze/releasetools/ota_from_target_files -v \
           -p out/host/linux-x86 \
           -k build/target/product/security/testkey \
           --backup=true \
           --override_device=auto \
           out/target/product/blaze/obj/PACKAGING/target_files_intermediates/cyanogen_blaze_target_files-eng.$USER.zip out/target/product/blaze/cm-7.2.0-RC0-blaze-KANG-signed.zip
```

###Notes for compiling on Mac OS X (by davidnintendo)
* Xcode 4 may not work. Use Xcode 3 instead. You may need to modify the installer to get it working on Lion, though. Use Google to get instructions. 
* MacPorts didn't work well for me either. Homebrew worked better. 
* If your drive is on a non case-sensitive format, you will need to use a disk image to build. Make sure to have enough space on it to compile because everything including intermediate files will be created in the disk image. 40 GB will be enough. Also, if you don't want those 40 GB occupied from the first second, create the image in a dynamic format.

### Extra information
* **Fixed**Some people have had issues getting the numbers to return to the top of the stock keyboard; to fix this go into the keyboard settings and make sure your language settings are correct.
* If you are coming from stock you will need to move all your books from /sdcard/Books/ to sdcard/kindle/ (please note some of these may need to be redownloaded).
* There is some confusion regarding the entries "Phone Idle" and "Cell Standby" in the battery/usage stats. This is referring to the device idle and standby, it could just as easily say "Tablet Idle" and "Device Standby" but it wasn't considered in the original creation (this can be resolved w/ an overlay most likely but I have not researched it). Your device battery is not wasting away to some mysterious phone/cell service so sleep easy.

### Credits and Thanks
* JackpotClavin for origin concept build.
* Whistlestop for the initial repos.
* sitic for writing the walk through for JackpotClavin's CM9 repo.
* Pkt_Lnt providing fixes listed in extra information.
* SkimpKilla for compiling this into something people can flash (even if it is a bit modified ;) ).
* Takenover83; a custom backup file is the weirdest concept ever but people seem to like it so have at it.
