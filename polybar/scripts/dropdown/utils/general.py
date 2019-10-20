#!/usr/bin/env python
# -*- coding: utf-8 -*-

import pathlib
import subprocess
import typing


class Menu:
    """Docstring for MenuCreator. """

    def __init__(
        self,
        location: str,
        yoffset: str,
        xoffset: str,
        width: str,
        script: pathlib.Path = pathlib.Path.home()
        / pathlib.Path(".config/polybar/scripts/dropdown/menu.sh"),
        max_length: int = 20,
        back_indicator: str = " back",
    ):
        self._location: str = location
        self._yoffset: str = yoffset
        self._xoffset: str = xoffset
        self._width: str = width
        self._script: pathlib.Path = script
        self._max_length = max_length
        self._back_indicator: str = back_indicator

    def _ask_user(self, options: typing.List[str], prompt: str):
        return subprocess.check_output(
            [
                self._script,
                "\n".join(options),
                self._location,
                self._yoffset,
                self._xoffset,
                self._width,
                str(len(options))
                if len(options) < self._max_length
                else self._max_length,
                prompt,
            ],
            universal_newlines=True,
        ).rstrip()

    def start(
        self,
        available_choices: typing.Dict[str, typing.Callable],
        prompt: str = "options",
    ):
        try:
            choice = self._ask_user(available_choices.keys(), f"{prompt}:")
        except subprocess.CalledProcessError:
            exit(1)
        new_options = available_choices.get(choice)
        if new_options is None:
            exit(1)
        if new_options == "":
            return choice, None
        return choice, new_options()

    def middle(
        self, available_choices: typing.List[str], action: typing.Callable, prompt: str
    ):
        try:
            choice = self._ask_user(
                [self._back_indicator] + available_choices,
                f"{prompt} ({len(available_choices)}):",
            )
        except subprocess.CalledProcessError:
            exit(1)
        new_options = action(choice)
        if new_options is None:
            exit(1)
        return new_options
        # if new_options is None:
        #     exit(1)
        # return choice, [self._back_indicator] + new_options()

    def final(self):
        pass
