#!/bin/bash
# Setup script for Half-Life Xash3D FWGS on macOS
# This script sets up game data symlinks from your Steam installation

set -e

WORKDIR="$HOME/Library/Application Support/Xash3D FWGS"
STEAM_PATHS=(
    "$HOME/Library/Application Support/Steam/steamapps/common/Half-Life"
    "$HOME/Library/Application Support/Steam/steamapps/common/Half-Life 1"
    "/Users/Shared/Steam/steamapps/common/Half-Life"
)

echo "Half-Life Xash3D FWGS Setup"
echo "==========================="
echo ""

# Find Half-Life game data
GAMEDIR=""
for path in "${STEAM_PATHS[@]}"; do
    if [ -d "$path/valve" ]; then
        GAMEDIR="$path"
        echo "Found Half-Life at: $path"
        break
    fi
done

if [ -z "$GAMEDIR" ]; then
    echo "ERROR: Half-Life game data not found!"
    echo "Please install Half-Life via Steam first."
    exit 1
fi

# Create working directory
mkdir -p "$WORKDIR"

# Create symlinks
for dir in valve gearbox bshift paranoia; do
    if [ -d "$GAMEDIR/$dir" ]; then
        if [ ! -e "$WORKDIR/$dir" ]; then
            ln -s "$GAMEDIR/$dir" "$WORKDIR/$dir"
            echo "Linked: $dir"
        else
            echo "Already linked: $dir"
        fi
    fi
done

# Copy config files
cp -n "$GAMEDIR/valve/opengl.cfg" "$WORKDIR/opengl.cfg" 2>/dev/null || true

echo ""
echo "Setup complete! You can now launch Half-Life.app"
