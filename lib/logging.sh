# Import colors.
libdir=$(dirname $(readlink -f $BASH_SOURCE))
source "${libdir}/colors.sh"

# The name of the currently executing program.
name=$(basename $0)

# RFC 3339 datetime in UTC with second granularity.
now() { date --utc --rfc-3339=seconds; }

# Debug logging. If $DEBUG is not set then this is a noop.
log_debug() {
    if [ -n "${DEBUG}" ]; then
        echo -e "[$(now)] [$(color8 125 ${name})] [$(gray 'DEBUG')] ${1}"
    fi
}

# Error logging. Reserved for bad, but potentially recoverable errors.
log_error() { echo -e "[$(now)] [$(color8 125 ${name})] [$(red 'ERROR')] ${1}"; }

# Fatal logging. Reserved for unrecoverable errors.
log_fatal() { echo -e "[$(now)] [$(color8 125 ${name})] [$(bold $(red 'FATAL'))] ${1}"; }

# Info logging. Reserved for your garden variety useful context.
log_info() { echo -e "[$(now)] [$(color8 125 ${name})] [$(blue 'INFO')] ${1}"; }

# Warning logging. Reserved for issues which aren't an error, but warrant attention.
log_warning() { echo -e "[$(now)] [$(color8 125 ${name})] [$(yellow 'WARNING')] ${1}"; }
