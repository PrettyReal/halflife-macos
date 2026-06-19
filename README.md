# Half-Life Xash3D FWGS for macOS

Native .app для запуска Half-Life, Blue Shift и Opposing Force на macOS через Xash3D FWGS.

## Установка

1. Установите Half-Life через Steam
2. Запустите `setup.sh` для создания симлинков на игровые данные
3. Запустите `Half-Life.app`

## Что включено

- Xash3D FWGS (свежая сборка из исходников)
- Поддержка Half-Life, Blue Shift, Opposing Force
- Русская локализация (текст + озвучка)
- OpenGL рендерер

## Структура

```
Half-Life.app/
├── Contents/
│   ├── Frameworks/          # Движковые библиотеки
│   │   ├── xash3d.bin       # Лаунчер
│   │   ├── libxash.dylib    # Ядро движка
│   │   ├── libmenu.dylib    # Меню
│   │   ├── libref_gl.dylib  # OpenGL рендерер
│   │   ├── filesystem_stdio.dylib
│   │   └── libSDL2-2.0.0.dylib
│   ├── MacOS/
│   │   └── xash3d           # Баш-скрипт запуска
│   └── Resources/           # Игровые ресурсы
│       ├── paranoia/        # Paranoia мод
│       ├── app.icns         # Иконка
│       └── opengl.cfg
├── setup.sh                 # Скрипт настройки
└── README.md
```

## Требования

- macOS 13+
- Half-Life через Steam
- Rosetta 2 (для Intel бинарника на Apple Silicon)
