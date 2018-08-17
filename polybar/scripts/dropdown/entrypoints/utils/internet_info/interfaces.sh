#!/usr/bin/env sh

ITEMS_PER_ROW=3

print_interface_state() {
	if [[ "$1" =~ "DOWN" ]]; then
		tput setaf 1
	else
		tput setaf 2
	fi
	printf "%s " "${interface//:_*/}"

}

make_row() {
	if ! (("$1" % "$ITEMS_PER_ROW")); then
		printf "\\n"
	fi
}

make_header() {
	tput bold
	tput setaf 5
	printf "INTERFACES"
}

make_header
INTERFACES=$(ip link show | grep ": .* state DOWN\\|UP " | cut -f2,9 -d" " | tr ' ' _)
count=0

for interface in $INTERFACES; do
	make_row $count
	print_interface_state $interface
	((++count))
done
tput sgr0
