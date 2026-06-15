# Half-Life for macOS (Xash3D FWGS)

Unofficial macOS port of Half-Life using [Xash3D FWGS](https://github.com/FWGS/xash3d-fwgs) engine.

## Requirements

- macOS 10.13 or later
- Intel x86_64 Mac
- Half-Life (Steam)

## Installation

1. Clone this repo or download the release
2. Run `./setup.sh` to link your Steam game data
3. Launch `Half-Life.app`

## Supported Mods

- Half-Life (valve)
- Blue Shift (bshift)
- Opposing Force (gearbox)
- Paranoia (paranoia) — built from [Spirit of Half-Life 1.2](https://github.com/FWGS/hlsdk-portable/tree/sohl1.2)

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
