#!/usr/bin/env sh

function move() {
	git mv "$@" 2>/dev/null || mv "$@"
}

move "$@"
