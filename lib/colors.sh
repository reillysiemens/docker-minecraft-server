# ANSI building blocks.
esc='\e'
reset="${esc}[0m"

# Format the argument as bold text.
bold() { echo -e "${esc}[1m${1}${reset}"; }

# Format the argument with a red foreground.
red() { echo -e "${esc}[31m${1}${reset}"; }

# Format the argument with a yellow foreground.
yellow() { echo -e "${esc}[33m${1}${reset}"; }

# Format the argument with a green foreground.
green() { echo -e "${esc}[32m${1}${reset}"; }

# Format the argument with a blue foreground.
blue() { echo -e "${esc}[34m${1}${reset}"; }

# Format the argument with a magenta foreground.
magenta() { echo -e "${esc}[35m${1}${reset}"; }

# Format the argument with a gray foreground.
gray() { echo -e "${esc}[90m${1}${reset}"; }

# Format the argument with an 8-bit color foreground.
# Example: `color8 125 'Hello, World!'
color8() { echo -e "${esc}[38;5;${1}m${2}${reset}"; }

# Format the argument with a 24-bit color foreground.
# Example: `color24 175 0 95 'Hello, World!'
color24() { echo -e "${esc}[38;2;${1};${2};${3}m${4}${reset}"; }
