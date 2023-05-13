#!/bin/bash

set -e

echo "[flutter] Building web..."

fvm flutter build web --web-renderer html --csp

zip -r ./build/web.zip build/web

echo "\nNow open open chrome://extensions in Chrome, click 'Load unpacked', choose build/web folder and enjoy"
