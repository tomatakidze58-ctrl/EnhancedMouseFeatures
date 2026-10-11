# Fabric compatibility tester

This project builds and runs the inventory client game tests against a prebuilt `EnhancendMouseFeatures.jar` file. It can test the rebranded fork against a compatible Minecraft patch release.

- Build the fork and copy its installable JAR to `fabric-compat-test/EnhancendMouseFeatures.jar`.
- Run `./gradlew :fabric-compat-test:prodClient` from the repository root.
- Supply `-PfabricMcVersion=...` and `-PfabricApiVersion=...` for another compatible target.
