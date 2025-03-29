<<<<<<< HEAD
-- Thank you for using this addon, feel free to modify, improve and publish it.
-- by @dekah2077

=======
>>>>>>> master
if not SAM_DISCORD_INTEGRATION then
    SAM_DISCORD_INTEGRATION = {}
end

<<<<<<< HEAD
-- Configuration for SAM Discord Integration
-- Edit these values to customize the addon
SAM_DISCORD_INTEGRATION.Config = {
    WebhookURL = "https://discord.com/api/webhooks/url",
    BotName = "SAM Logs",
    TimeZoneOffset = -3, -- Argentina (UTC-3)
=======
SAM_DISCORD_INTEGRATION.Config = {
    WebhookURL = "https://discord.com/api/webhooks/url",
    BotName = "SAM Logs",
>>>>>>> master
    Colors = {
        Jail = 0xFFA500,
        Ban = 0xFF0000,
        Mute = 0xFFD700,
        Kick = 0xFF4500,
        Gag = 0xFF69B4
    },
<<<<<<< HEAD
    Language = "en",
=======
    Language = "es",
>>>>>>> master
    Languages = {
        en = {
            Title = "New Punishment: %s",
            Description = "A punishment has been applied.",
            Player = "Punished Player",
            Staff = "Staff",
            Duration = "Duration",
            Type = "Type",
            Reason = "Reason",
<<<<<<< HEAD
            Footer = "SteamID: %s"
=======
            Footer = "SteamID: %s",
            Permanent = "Permanent",
            Second = "second",
            Seconds = "seconds",
            Minute = "minute",
            Minutes = "minutes",
            Hour = "hour",
            Hours = "hours",
            Day = "day",
            Days = "days",
            Month = "month",
            Months = "months",
            Year = "year",
            Years = "years"
>>>>>>> master
        },
        es = {
            Title = "Nueva Sanción: %s",
            Description = "Se ha aplicado una sanción.",
            Player = "Jugador Sancionado",
            Staff = "Staff",
            Duration = "Duración",
            Type = "Sanción",
            Reason = "Razón",
<<<<<<< HEAD
            Footer = "SteamID: %s"
=======
            Footer = "SteamID: %s",
            Permanent = "Permanente",
            Second = "segundo",
            Seconds = "segundos",
            Minute = "minuto",
            Minutes = "minutos",
            Hour = "hora",
            Hours = "horas",
            Day = "día",
            Days = "días",
            Month = "mes",
            Months = "meses",
            Year = "año",
            Years = "años"
>>>>>>> master
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