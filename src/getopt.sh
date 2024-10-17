OPT=$(getopt -n $(basename $0) -o 'hi' -l help,install -- "$@")

if [ $? -ne 0 ]; then
    printf "Try '$(basename $0) --help' for more information.\n"
    exit
fi

eval set -- $OPT
while true; do
    if [ "$1" = "--" ]; then
        shift
        PARAM=$@
        break
    else
        case $1 in
            -h|--help)
                _HELP=1
            ;;
            -v|--version)
                _VERSION=1
            ;;
            -i|--install)
                _INSTALL=1
            ;;
            *)
                break
            ;;
        esac
    fi
    shift
done