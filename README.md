# Unreal Engine (cpak)

This package uses the official Unreal Engine 5.8 development image published by Epic Games. cpak does not copy or redistribute the engine.

## Requirements

Link your Epic Games and GitHub accounts, then create a GitHub token with the `read:packages` scope. Store it for this package origin:

```bash
cpak auth login github.com/containerpak/unreal-engine --username GITHUB_USERNAME
```

cpak reads the token from the terminal without printing or storing it in the package manifest. Registry access is limited to `ghcr.io/epicgames/unreal-engine` for this origin.

## Installation

```bash
cpak install github.com/containerpak/unreal-engine
```

The package uses Epic's `dev-slim-5.8.0` image, which contains the Linux editor and build tools without template projects or full debug symbols. The download is large and remains subject to the Unreal Engine EULA.

Start the editor from the application menu or run:

```bash
cpak run github.com/containerpak/unreal-engine UnrealEditor
```

Run AutomationTool with:

```bash
cpak run github.com/containerpak/unreal-engine RunUAT.sh -- -Help
```

See Epic's [container image guide](https://dev.epicgames.com/documentation/en-us/unreal-engine/quick-start-guide-for-using-container-images-in-unreal-engine) for account linking and image access.
