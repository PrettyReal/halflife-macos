# GoldSrc Mods for macOS (Xash3D FWGS)

Run Half-Life and GoldSrc mods natively on macOS using [Xash3D FWGS](https://github.com/FWGS/xash3d-fwgs) engine.

## Requirements

- macOS 10.13 or later
- Intel x86_64 Mac
- Half-Life (Steam) — required for game data

## Installation

1. Clone this repo or download the release
2. Run `./setup.sh` to link your Steam game data
3. Launch `Half-Life.app`
4. Select a mod from the game menu

## Supported Mods

| Mod | Directory | Description |
|-----|-----------|-------------|
| Half-Life | `valve` | Base game |
| Blue Shift | `bshift` | Valve expansion |
| Opposing Force | `gearbox` | Valve expansion |
| Paranoia | `paranoia` | Horror mod, [Spirit of Half-Life 1.2](https://github.com/FWGS/hlsdk-portable/tree/sohl1.2) native build |

## Adding More Mods

Any GoldSrc mod that works with Xash3D can be added. Just place the mod directory in your Steam Half-Life folder and re-run `./setup.sh`.

## Building from source

```bash
git clone https://github.com/PrettyReal/halflife-macos.git
cd halflife-macos
git clone --depth 1 https://github.com/FWGS/xash3d-fwgs.git /tmp/xash3d
cd /tmp/xash3d
./waf configure
./waf
```

## License

Xash3D FWGS is licensed under GPL-3.0. Half-Life is a trademark of Valve Corporation.
