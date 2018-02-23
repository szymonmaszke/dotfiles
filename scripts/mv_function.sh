function move() {
	git mv "$@" 2>/dev/null || mv "$@"
}

move "$@"
