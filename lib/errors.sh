# Import logging.
libdir=$(dirname $(readlink -f $BASH_SOURCE))
source "${libdir}/logging.sh"

handle_error() {
    log_fatal "Error on line ${1}"
}
