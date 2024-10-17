START () {
    OLD_PATH=$PATH
    PATH=$OLD_PATH:/bin:/sbin:/usr/bin
    MOUNT
    chroot $ROOT bash --login || {
        PATH=$OLD_PATH
        UMOUNT
        exit 1
    }
    PATH=$OLD_PATH
    UMOUNT
}