if [ ! -z $_HELP ]; then
	HELP
elif [ ! -z $_INSTALL ]; then
	INSTALL
else 
	if [ ! -f $ROOT/etc/os-release ]; then
		printf "$(basename $0): is not installed.\n"
        printf "Try '$(basename $0) --install' to install.\n"
        exit 1
	else
		. $ROOT/etc/os-release
		if [ "$OS" = "Android" ]; then
			START_PROOT
		else
			START
		fi
	fi
fi