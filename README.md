# CM7 for Kindle Fire

## Info

|||
|-----------------------------------:|:--------------------------|
|**Discussion and build thred**: | http://forum.xda-developers.com/showthread.php?t=1390773

## Building 

### Initialize
[setup linux/OS X](http://source.android.com/source/initializing.html) please note: it must be sun-java-6, not openjdk

### Download CM7 sources (use the IngCr3at1on android repo because github and CM still haven't fixed prebuilts on gingerbread)

```bash
mkdir cm7
cd cm7/
curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > repo
chmod a+x repo
./repo init -u git://github.com/IngCr3at1on/android.git -b gingerbread
./repo sync -j16
```

### Download Kindle Fire device tree

```bash
git clone git://github.com/whistlestop/CM7KF.git github
mkdir -p device/amazon/
mkdir -p vendor/amazon/
rsync -a github/device/blaze device/amazon/
rsync -a github/vendor/blaze vendor/amazon/
```

### Compile

```bash
source build/envsetup.sh
brunch blaze -j$(grep -c processor /proc/cpuinfo)
```

this should produce a flashable out/target/product/otter/cm_otter-ota-eng.$USER.zip file, if the signing process fails try to run it again:

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


### Credits
* Thanks to sitic for writing the walk through for JackpotClavin's CM9 repo.

