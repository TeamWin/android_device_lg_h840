#!/sbin/sh

if [ -z "`mount | grep ' /system '`" ]; then
    mount -o ro /system
fi

if [ -z "`ls -A /vendor`" ]; then
    if [ -d /vendor ]; then
        rmdir /vendor
    fi
    ln -sf /system/vendor /vendor
fi

if [ -z "`pgrep qseecomd`" ]; then
    if [ -f /system/bin/qseecomd ]; then
        LD_LIBRARY_PATH='/system/lib64:/system/lib' PATH='/system/bin' /system/bin/qseecomd &
    else
        LD_LIBRARY_PATH='/vendor/lib64:/vendor/lib:/system/lib64:/system/lib' PATH='/vendor/bin:/system/bin' /vendor/bin/qseecomd &
    fi
fi

for retry in `seq 0 60`; do
    case `getprop ro.crypto.fs_crypto_blkdev` in
        /dev/block/dm-*) cryptodone=1 ;;
    esac
    if [ "$cryptodone" ]; then
        echo "I:Decryption successful, took $retry seconds" >> /tmp/recovery.log
        break
    elif [ "$retry" -eq 60 ]; then
        echo "E:Decryption failed, timed out" >> /tmp/recovery.log
        break
    fi
    sleep 1
done

killall qseecomd

if [ "`mount | grep ' /system '`" ]; then
    umount /system
fi
