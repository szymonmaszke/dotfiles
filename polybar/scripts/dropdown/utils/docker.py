#!/usr/bin/env python
# -*- coding: utf-8 -*-

import subprocess
import typing


def _run_command(args: typing.List[str]):
    return subprocess.check_output(args, universal_newlines=True).rstrip().split("\n")


def containers() -> typing.List[str]:
    return _run_command(
        ["docker", "ps", "-a", "--format", " {{.Names}}  {{.Image}} ♥ {{.Status}}"]
    )


def volumes() -> typing.List[str]:
    return _run_command(
        ["docker", "volume", "ls", "--format", " {{.Name}}  {{.Driver}}"]
    )


def images() -> typing.List[str]:
    return _run_command(
        [
            "docker",
            "images",
            "--filter",
            "dangling=false",
            "--format",
            " {{.Repository}}  {{.Tag}}",
        ]
    )


def image_choice(name: str) -> typing.List[str]:
    return [" inspect", " update", " rm"]


def container_choice(name: str) -> typing.List[str]:
    return [
        " inspect",
        " kill",
        " pause",
        " rename",
        " restart",
        " rm",
        " start",
        " stop",
        " unpause",
        " update",
    ]


def volume_choice(name: str) -> typing.List[str]:
    return [" inspect", " rm"]
