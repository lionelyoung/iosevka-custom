#!/usr/bin/env bash
# Installs requirements and builds my preferences for Iosevka
#
# Homepage: https://github.com/be5invis/Iosevka
#
# Requirements:
# - nodejs (≥ 6.0)
# - ttfautohint
# - otfcc (≥ 0.7.0)

set -e
WDIR="$HOME/Projects/Iosevka"

# OS Check
if [ ! "$(uname)" == "Darwin" ]; then
  echo "Error: Not on Mac"
  exit 1
fi

# Working directory check
cd $WDIR || exit 1

# Install otfcc and ttfautohint
brew tap caryll/homebrew-tap
brew install caryll/tap/otfcc-mac64 ttfautohint

# Install Iosevka requirements
npm install

# Create my custom configuration
# ==============================
# - low asterisk
# - low underscore
# - single-story g
# - m with shorter middle leg
# - no ligations (term)
#
# The following defaults don't need to be specified:
# - fira @ (default)
# - curly braces (default)
# - slashed zero (default)
# - high tilde (default)
make custom-config design=\
'v-asterisk-low v-underscore-low v-g-singlestorey v-m-shortleg term'

# Build from source
make custom

# Installation instructions
echo "Done! Go look in $WDIR/dist/"
