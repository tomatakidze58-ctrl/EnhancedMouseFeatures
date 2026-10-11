# EnhancendMouseFeatures

A rebranded fork of [Mouse Tweaks](https://github.com/YaLTeR/MouseTweaks) for **Minecraft 26.2 Fabric**. It provides right-button item distribution, left-button inventory dragging, and mouse-wheel item transfers. The requested spelling **EnhancendMouseFeatures** is used throughout the visible branding.

## Install the included mod

1. Extract this ZIP.
2. Use Minecraft **26.2**, Fabric Loader **0.19.5 or newer**, and **Java 25**.
3. Copy `dist/EnhancendMouseFeatures-fabric-mc26.2-2.31+emf.1.jar` into your instance's `mods` folder. Replace an existing Mouse Tweaks installation with this JAR.
4. Install [Fabric API for 26.2](https://modrinth.com/mod/fabric-api/versions?g=26.2), version **0.161.0+26.2 or newer**.
5. To configure it through **Mods → EnhancendMouseFeatures → Configure**, install [Mod Menu for 26.2](https://modrinth.com/mod/modmenu/versions?g=26.2), version **20.0.3**, and its dependencies, including [Text Placeholder API](https://modrinth.com/mod/placeholder-api/versions?g=26.2).

Mod Menu is optional. The configuration file is `config/EnhancendMouseFeatures.cfg`. If you already have settings in `config/MouseTweaks.cfg`, copy that file to the new filename while Minecraft is closed.

## Settings

The configuration screen supports the original toggles for right-button dragging, left-button dragging with and without a held item, and wheel transfers. You can also choose the wheel search order, scroll direction, inventory-position-aware direction, macOS-compatible single-item scrolling, and debug logging. Closing the settings screen saves your changes.

## Build

Install **JDK 25** and run from the extracted project folder:

```sh
./gradlew build
```

On Windows, run `gradlew.bat build` or double-click `build-windows.bat`. The result is in `fabric/build/libs/`. Install the regular JAR; the `-sources.jar` is for reading the source.

The default root build selects Fabric. The rebranded upstream Forge and NeoForge sources are also included; their builds have not been verified here:

```sh
./gradlew -Ploader=forge build
./gradlew -Ploader=neoforge build
```

The Gradle 9.5.1 wrapper and the Fabric build dependencies are pinned. Dependencies download on the first build.

## GitHub build

Upload the files and folders **inside** `EnhancendMouseFeatures` to the repository root, preserving the folders. Keep `src`, `fabric`, `gradle`, and `.github` as folders. The root should contain `build.gradle`, `settings.gradle`, `gradle.properties`, and `gradlew`.

The included workflow is **`.github/workflows/build.yml`**. It builds the Fabric mod and uploads **EnhancendMouseFeatures-Fabric-26.2** under Actions → successful run → Artifacts.

## Upstream tests

The inventory client game tests are included. Compile them with:

```sh
./gradlew :fabric:testmodClientClasses
```

To run them in a graphics-capable environment:

```sh
./gradlew :fabric:runClientGametest
```

The optional **Fabric compatibility test** workflow tests the compiled fork against a compatible Minecraft patch version. It builds this fork before testing.

## Attribution

Original software and artwork: **Ivan Molodetskikh (YaLTeR)** and Mouse Tweaks contributors. The BSD 3-Clause license and attribution are retained in `LICENSE` and `NOTICE.md`, including inside the compiled JAR. Public Java/API names are retained for container integrations. This fork is not an official Mouse Tweaks release.
