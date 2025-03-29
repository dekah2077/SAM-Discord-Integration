if SERVER then
    AddCSLuaFile()

    include("sam_discord_integration/sv_config.lua")
    include("sam_discord_integration/sv_discord.lua")
    include("sam_discord_integration/sv_sam_hooks.lua")

    local Config = SAM_DISCORD_INTEGRATION.Config
    local Settings = Config.Settings
    print("+-----------------------------+")
    print("| SAM Discord Integration V1.1")
    print("| BotName: " .. Config.BotName .. string.rep(" ", 17 - #Config.BotName))
    print("| Language: " .. Config.Language .. string.rep(" ", 16 - #Config.Language))
    print("| ShowPlayer: " .. tostring(Settings.ShowPlayer) .. string.rep(" ", 14 - #tostring(Settings.ShowPlayer)))
    print("| ShowStaff: " .. tostring(Settings.ShowStaff) .. string.rep(" ", 15 - #tostring(Settings.ShowStaff)))
    print("| ShowDuration: " .. tostring(Settings.ShowDuration) .. string.rep(" ", 12 - #tostring(Settings.ShowDuration)))
    print("| ShowType: " .. tostring(Settings.ShowType) .. string.rep(" ", 16 - #tostring(Settings.ShowType)))
    print("| ShowReason: " .. tostring(Settings.ShowReason) .. string.rep(" ", 14 - #tostring(Settings.ShowReason)))
    print("| ShowSteamID: " .. tostring(Settings.ShowSteamID) .. string.rep(" ", 13 - #tostring(Settings.ShowSteamID)))
    print("+-----------------------------+")
    print("By @dekah2077 ")
end