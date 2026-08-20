# Before installing Unreal Engine

This package uses the official Unreal Engine 5.8 development image published by Epic Games. The engine is downloaded directly from Epic's private GitHub Container Registry and is not mirrored by cpak.

## Give cpak access to the image

Link your Epic Games and GitHub accounts, accept the invitation to the Epic Games organization on GitHub, then create a GitHub token with the `read:packages` scope. Save it for this package with:

```bash
cpak auth login github.com/containerpak/unreal-engine --username GITHUB_USERNAME
```

cpak reads the token from the terminal without printing or storing it in the package manifest. Registry access is limited to `ghcr.io/epicgames/unreal-engine` for this package origin.

Epic documents the complete account and registry setup in its [container image guide](https://dev.epicgames.com/documentation/en-us/unreal-engine/quick-start-guide-for-using-container-images-in-unreal-engine).

## What gets installed

The package uses Epic's `dev-slim-5.8.0` image, which includes the Linux editor and build tools without template projects or full debug symbols. The download is large and remains subject to the Unreal Engine EULA.

After installation, start Unreal Editor from the application menu. AutomationTool is also available through:

```bash
cpak run github.com/containerpak/unreal-engine RunUAT.sh -- -Help
```
