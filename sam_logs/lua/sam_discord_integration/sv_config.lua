-- Thank you for using this addon, feel free to modify, improve and publish it.
-- by @dekah2077

if not SAM_DISCORD_INTEGRATION then
    SAM_DISCORD_INTEGRATION = {}
end

-- Configuration for SAM Discord Integration
-- Edit these values to customize the addon
SAM_DISCORD_INTEGRATION.Config = {
    WebhookURL = "https://discord.com/api/webhooks/url",
    BotName = "SAM Logs",
    TimeZoneOffset = -3, -- Argentina (UTC-3)
    Colors = {
        Jail = 0xFFA500,
        Ban = 0xFF0000,
        Mute = 0xFFD700,
        Kick = 0xFF4500,
        Gag = 0xFF69B4
    },
    Language = "en",
    Languages = {
        en = {
            Title = "New Punishment: %s",
            Description = "A punishment has been applied.",
            Player = "Punished Player",
            Staff = "Staff",
            Duration = "Duration",
            Type = "Type",
            Reason = "Reason",
            Footer = "SteamID: %s"
        },
        es = {
            Title = "Nueva Sanción: %s",
            Description = "Se ha aplicado una sanción.",
            Player = "Jugador Sancionado",
            Staff = "Staff",
            Duration = "Duración",
            Type = "Sanción",
            Reason = "Razón",
            Footer = "SteamID: %s"
        }
    },
    Settings = {
        ShowPlayer = true,
        ShowStaff = true,
        ShowDuration = true,
        ShowType = true,
        ShowReason = true,
        ShowSteamID = true
    }
}