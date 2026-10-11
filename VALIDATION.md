# Validation

The Minecraft 26.2 Fabric build was checked with Java 25.0.2, Gradle 9.5.1, Fabric Loom 1.17.21, Fabric Loader 0.19.5, Fabric API 0.161.0+26.2, and Mod Menu 20.0.3.

## Build checks

The default root build and `:fabric:testmodClientClasses` completed successfully. All upstream inventory client game tests compile. One test helper was updated from `getClientLevel()` to the current Fabric API's `getConnection()` method. The compatibility-test project is selected only when its task is explicitly requested, so a normal build does not require a prebuilt compatibility input JAR.

The JAR was checked for valid entrypoint classes, both renamed mixin configurations, the renamed icon, expanded metadata, the new config filename in the compiled class, and embedded `LICENSE` and `NOTICE.md`. The original BSD 3-Clause license is unchanged from the source revision.

## Fabric bootstrap checks

A separate pre-launch checker exercised the compiled mod using the official Minecraft runtime and Fabric Loader. It verified:

- The name and runtime mod ID are `EnhancendMouseFeatures` and `enhancendmousefeatures`.
- The legacy `mousetweaks` alias resolves to this fork.
- Client and compatibility API classes link successfully.
- The container accessor mixin applies to the real Minecraft container-screen class.
- The Minecraft mouse-handler class loads with the renamed mouse-drag mixin active.
- The mod loads with and without Mod Menu present.
- With Mod Menu present, its entrypoint registry discovers the fork's Configure-screen factory.
- With a separate legacy-ID fixture supplied, Fabric selects this fork's provider and does not load the legacy implementation alongside it.

Results:

```text
EMF_MIXINS_PASSED
EMF_CHECK_PASSED: identity, alias, API, class linking, mixins; Mod Menu=false
EMF_MIXINS_PASSED
EMF_MODMENU_PASSED
EMF_CHECK_PASSED: identity, alias, API, class linking, mixins; Mod Menu=true
EMF_PROVIDER_SELECTION_PASSED: only the rebranded provider loaded
```

## Manual checks

These bootstrap checks exit before opening a game window. Inventory interactions and the rendered configuration screen have not been tested here. The original interactive client game tests are included for that verification. Forge and NeoForge sources are rebranded but their builds have not been checked.
