Using U.S. date format...

###01/16/2012:
* Added HISTORY.md

###01/17/2012:
* Renamed cyanogen_blaze.mk to cyanogen_blaze.mk.bak

###01/24/2012:
* Changed configs : set no sdcard and disabled screen-off animation (causes issues w/ certain kernels, easier to leave disabled and let people enable at their own risk depending on kernel).
* Removed recovery from values-ru (Russian I think, not sure lol; kind of odd we only have one translation).

###01/26/2012:
* Added README.md

###01/29/2012:
* Updated README.md
* Changed History layout slightly

###continued:
* Updated README.md: Corrected symlinks and added an extra information section towards the end (put keyboard fix information in there, please add other fixes like this section).

###01/30/2012:
* Updated README.md: More extra information for after flash.

###01/31/2012:
* Updated README.md: Credits and discussion/build threads.

###02/01/2012:
* Changed blaze.mk; removed inherit of languages_full this is already inherited in full_base, using less_full_base.mk which I added to the build directory (this removes camera, voicedialer and protips; still looking into removing other things without causing FCs in certain apps).
* Updated README.md; can't believe I missed that.
* Changed blaze.mk; moved locales for mdpi to set after inheritting base.mk (fixes keyboard allowing it to load proper language on boot, en_US instead of MD_US)
* Added market permissions to allow more downloads (fix derived from sitics market fix for CM9, thank you sitic)

###02/08/2012:
* Updates made to other repos in tree effecting this device, check the [changelog](https://github.com/IngCr3at1on/android/blob/gingerbread/CHANGELOG.md) markdown for the project manifest for more information.
* Added idle/standby information to extra info.
* Updated build threads.
* Updated credits.
