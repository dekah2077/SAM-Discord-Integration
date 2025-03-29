if not SAM_DISCORD_INTEGRATION then
    SAM_DISCORD_INTEGRATION = {}
end

SAM_DISCORD_INTEGRATION.Config = {
    WebhookURL = "https://discord.com/api/webhooks/url",
    BotName = "SAM Logs",
    Colors = {
        Jail = 0xFFA500,
        Ban = 0xFF0000,
        Mute = 0xFFD700,
        Kick = 0xFF4500,
        Gag = 0xFF69B4
    },
    Language = "es",
    Languages = {
        en = {
            Title = "New Punishment: %s",
            Description = "A punishment has been applied.",
            Player = "Punished Player",
            Staff = "Staff",
            Duration = "Duration",
            Type = "Type",
            Reason = "Reason",
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
        },
        es = {
            Title = "Nueva Sanción: %s",
            Description = "Se ha aplicado una sanción.",
            Player = "Jugador Sancionado",
            Staff = "Staff",
            Duration = "Duración",
            Type = "Sanción",
            Reason = "Razón",
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