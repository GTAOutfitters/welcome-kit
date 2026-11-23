-- ============================================================
--  GTAOutfitters Welcome Kit (FREE) - client
--  Shows the welcome panel when the player spawns, hands the
--  config to the NUI, and releases focus cleanly on close.
-- ============================================================

local shownThisSession = false

local function openPanel()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'show',
        serverName = Config.ServerName,
        tagline = Config.Tagline,
        welcomeText = Config.WelcomeText,
        discordUrl = Config.DiscordUrl,
        storeUrl = Config.StoreUrl,
        websiteUrl = Config.WebsiteUrl,
        rules = Config.Rules,
        accent = Config.Accent,
        footerText = Config.FooterText,
    })
end

AddEventHandler('playerSpawned', function()
    if shownThisSession and not Config.ShowEveryJoin then return end
    shownThisSession = true
    Wait(1500) -- let the world settle before the panel opens
    openPanel()
end)

-- Let players reopen it any time: /welcome
RegisterCommand('welcome', function()
    openPanel()
end, false)

RegisterNUICallback('close', function(_, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)
