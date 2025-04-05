# SAM Discord Integration

integrates SAM punishments with Discord.

## Features
- Sends punishment embeds to a Discord channel with configurable fields (player, staff, duration, type, reason, SteamID).
- Supports multiple languages (English and Spanish).

## Dependencies
- **[CHTTP](https://github.com/timschumi/gmod-chttp/releases)**: Required for sending HTTP requests to Discord webhooks.
- **[GWSockets](https://github.com/FredyH/GWSockets/releases/tag/1.3.0)**: Included as a dependency for CHTTP (ensure it's installed).

## Installation
1. **Download the Addon**:
   - Clone or download this repository into your Garry's Mod server's `addons` folder.
   - Example path: `garrysmod/addons/sam_logs`

2. **Install Dependencies**:
   - Ensure SAM is installed on your server.
   - Install CHTTP and GWSockets

3. **Configure the Webhook**:
   - Open `lua/sam_logs/sv_config.lua`.
   - Replace `WebhookURL` with your Discord webhook URL:

## Support.

- If you find any errors, please let me know on Discord and I'll fix them right away.

discord: overith
