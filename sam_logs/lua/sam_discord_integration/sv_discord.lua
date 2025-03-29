require("chttp")
require("gwsockets")

local Config = SAM_DISCORD_INTEGRATION.Config
local Lang = Config.Languages[Config.Language] or Config.Languages.en
local Settings = Config.Settings

<<<<<<< HEAD
-- Sends punishment data to Discord as an embed
local function SendPunishmentEmbed(target_name, staff_name, sanction_type, duration, steamid, reason)
    local steamid64 = (steamid ~= "Not found." and util.SteamIDTo64(steamid)) or "76561197960265728"
    local color = Config.Colors[sanction_type] or 0xFFFFFF
    local duration_text = (sanction_type == "Kick" and "N/A") or (duration == 0 and "Permanent") or sam.format_length(duration)
=======
local function SendPunishmentEmbed(target_name, staff_name, sanction_type, duration, steamid, reason)
    local steamid64 = (steamid ~= "Not found." and util.SteamIDTo64(steamid)) or "76561197960265728"
    local color = Config.Colors[sanction_type] or 0xFFFFFF
    local duration_text
    if sanction_type == "Kick" then
        duration_text = "N/A"
    elseif duration == 0 then
        duration_text = Lang.Permanent
    else
        local seconds = tonumber(duration)
        if seconds >= 31536000 then
            local years = math.floor(seconds / 31536000)
            duration_text = years == 1 and "1 " .. Lang.Year or years .. " " .. Lang.Years
        elseif seconds >= 2592000 then
            local months = math.floor(seconds / 2592000)
            duration_text = months == 1 and "1 " .. Lang.Month or months .. " " .. Lang.Months
        elseif seconds >= 86400 then
            local days = math.floor(seconds / 86400)
            duration_text = days == 1 and "1 " .. Lang.Day or days .. " " .. Lang.Days
        elseif seconds >= 3600 then
            local hours = math.floor(seconds / 3600)
            duration_text = hours == 1 and "1 " .. Lang.Hour or hours .. " " .. Lang.Hours
        elseif seconds >= 60 then
            local minutes = math.floor(seconds / 60)
            duration_text = minutes == 1 and "1 " .. Lang.Minute or minutes .. " " .. Lang.Minutes
        else
            duration_text = seconds .. " " .. (seconds == 1 and Lang.Second or Lang.Seconds)
        end
    end
>>>>>>> master

    local fields = {}
    if Settings.ShowPlayer then table.insert(fields, { name = Lang.Player, value = "`" .. target_name .. "`", inline = true }) end
    if Settings.ShowStaff then table.insert(fields, { name = Lang.Staff, value = "`" .. staff_name .. "`", inline = true }) end
    if Settings.ShowDuration then table.insert(fields, { name = Lang.Duration, value = "`" .. duration_text .. "`", inline = true }) end
    if Settings.ShowType then table.insert(fields, { name = Lang.Type, value = "`" .. sanction_type .. "`", inline = true }) end
    if Settings.ShowReason then table.insert(fields, { name = Lang.Reason, value = "`" .. reason .. "`", inline = true }) end

    local embed = {
        username = Config.BotName,
        embeds = {{
            title = string.format(Lang.Title, sanction_type),
            description = Lang.Description,
            color = color,
            fields = fields,
            footer = Settings.ShowSteamID and { text = string.format(Lang.Footer, steamid) } or nil,
            timestamp = os.date("!%Y-%m-%dT%TZ")
        }}
    }

    CHTTP({
        method = "POST",
        url = Config.WebhookURL,
        body = util.TableToJSON(embed),
        type = "application/json; charset=utf-8"
    })
end

SAM_DISCORD_INTEGRATION.SendPunishmentEmbed = SendPunishmentEmbed