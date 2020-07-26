#!/bin/bash

printf "Please select task file:\n"
select file in tasks/*; do test -n "$file" && break; echo ">>> Invalid Selection"; done

swift questionbot.swift $file
