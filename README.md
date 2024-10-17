# Ubuntu Box
A Bash wrapper script for management of chroot-based Linux distribution installations. It does require root permission on linux and it does not require root permission on android Termux application.

This is not a virtual machine. This is container environment emulator based which utilitize proot, chroot and mount.

This script should never be run as root on android, But in Linux this need root / superuser permission.

# Synopsis
### Android
```bash
$ ubuntu [command or options]
```
### Linux
```bash
$ sudo ubuntu [command or options]
```

## See more with
### Android
```bash
$ ubuntu --help
```
### Linux
```bash
$ sudo ubuntu --help
```

# Build & Installation

### Android
``` bash
$ ./build
$ ./install
```

### Linux
``` bash
$ ./build
$ sudo ./install
```

For android in Termux application just do the command without root permission.

After you do the installation.
it will place program to /usr/bin/box.

# Uninstallation

If you want to uninstall, just do command below

### Android
``` bash
$ rm -r $PREFIX/bin/ubuntu
$ rm -r $PREFIX/var/lib/ubuntu
```

### Linux
``` bash
$ sudo rm -r /usr/bin/ubuntu
$ sudo rm -r /var/lib/ubuntu
``` 

# Notes

Program will store data to directory '/var/lib'
the rootfs will be placed on '/var/lib/ubuntu/root'
