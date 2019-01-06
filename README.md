## TWRP device tree for LG G5 SE (International H840)

Add to `.repo/local_manifests/h840.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/lge/h840" name="android_device_lge_h840" remote="TeamWin" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```
. build/envsetup.sh
lunch omni_h840-eng
mka recoveryimage
```

