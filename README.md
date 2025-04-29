#Updater for Discord

A straightforward bash script that installs, updates, or reinstalls Discord only on Linux distributions based on Debian, such as Ubuntu or Linux Mint.

## Features

Verifies the installed version, retrieves the most recent version from Discord; uses `dpkg` to install the `.deb` package.
Addresses missing dependencies and cleans up after installation.

## Application

```bash
discord-updater
```

## Setup

Install the `.deb` file after downloading it from releases:
```bash
sudo dpkg -i discord-updater.deb
```

Or just download the discord-updater file from src folder, works the same.
