Citizen.CreateThread(function()
    while true do

        SetDiscordAppId(Config.DiscordAppId)

        SetDiscordRichPresenceAsset(Config.AssetsPic)
        SetDiscordRichPresenceAssetText(Config.AssetsText)

        for i=1, #Config.Buttons, 1 do

            SetDiscordRichPresenceAction(Config.Buttons[i].id, Config.Buttons[i].name, Config.Buttons[i].url)

        end

        Citizen.Wait(Config.UpdateTime)
    end
end)