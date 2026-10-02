VALORANT & Riot Client Cache Cleaner

A lightweight Windows batch script that closes Riot Client, VALORANT, and Vanguard processes, then removes the network cache file (`RiotGamesPrivateSettings.yaml`).

Uses `%LOCALAPPDATA%` environment variables to automatically support any user account.

## Features
- Terminate process trees for Riot Client, VALORANT, and Vanguard.
- Safe deletion prompt (`Y/N`) using native `choice` command.
- Language-independent console output (ASCII).

## Usage
1. Download `clear_riot.bat`.
2. Right-click the file and select **Run as Administrator**.
3. Press `Y` to confirm cache deletion.
