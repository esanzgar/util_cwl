#!/usr/bin/env bash

comm -12 <(sort -u "$1") <(echo "${@:2}" |  sort -u ) | cut -d ':' -f 2
