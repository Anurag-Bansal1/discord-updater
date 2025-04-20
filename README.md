# Discord Updater

A simple bash script that installs/updates (or reinstalls) Discord on Debian-based Linux distros like Ubuntu or Linux Mint.

## Features

- 🧾 Checks installed version
- 🌐 Fetches latest release from Discord
- 📦 Installs `.deb` package using `dpkg`
- ✅ Handles missing dependencies
- 🧹 Cleans up after install

## Usage

```bash
discord-updater
```

## Installation

Download the `.deb` file from releases and install:

```bash
sudo dpkg -i discord-updater.deb
```

Or just download the discord-updater file from src folder, works the same.
