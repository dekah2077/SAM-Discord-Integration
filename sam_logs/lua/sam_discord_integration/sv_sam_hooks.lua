local SendPunishmentEmbed = SAM_DISCORD_INTEGRATION.SendPunishmentEmbed
local Config = SAM_DISCORD_INTEGRATION.Config

local function ParseDuration(duration_str)
    if not duration_str or duration_str == "" then return 0 end
    local num = tonumber(duration_str:match("^(%d+)"))
    if not num then return 0 end
    local unit = duration_str:lower():match("[smhdwmy]o?") or "m"
    
    if duration_str:lower():find("mo") then
        return num * 2592000
    elseif unit == "s" then return num
    elseif unit == "m" then return num * 60
    elseif unit == "h" then return num * 3600
    elseif unit == "d" then return num * 86400
    elseif unit == "w" then return num * 604800
    elseif unit == "y" then return num * 31536000
    else return num * 60 end
end

local function ResolveTarget(target_str)
    if sam.is_steamid(target_str) then
        return target_str, target_str
    elseif sam.is_steamid64(target_str) then
        local steamid = util.SteamIDFrom64(target_str)
        return steamid, steamid
    end

    local target = sam.player.find_by_name(target_str)
    if sam.istable(target) then
        target = target[1]
    end

    if IsValid(target) then
        return target:SteamID(), target:Name()
    end

    return "Not found.", target_str
end

hook.Add("SAM.RanCommand", "SAMDiscordIntegration_PunishmentLogs", function(ply, cmd_name, args)
    local target_str = args[1]
    local length, sanction_type, reason
    
    if cmd_name == "kick" then
        sanction_type = "Kick"
        length = 0
        reason = args[2] or "No reason provided"
    else
        length = ParseDuration(args[2])
        reason = args[3] or "No reason provided"
        
        if cmd_name == "jail" then sanction_type = "Jail"
        elseif cmd_name == "ban" then sanction_type = "Ban"
        elseif cmd_name == "mute" then sanction_type = "Mute"
        elseif cmd_name == "gag" then sanction_type = "Gag"
        else return end
    end

    local steamid, target_name = ResolveTarget(target_str)
    if IsValid(ply) then
        local staff_name = ply:Name()
        SendPunishmentEmbed(target_name, staff_name, sanction_type, length, steamid, reason)
    end
end)