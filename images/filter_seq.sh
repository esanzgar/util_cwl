#!/usr/bin/env bash

grep -Fxf <(echo "${@:2}") "$1"
