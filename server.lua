NDCore = exports["ND_Core"]:GetCoreObject()

RegisterNetEvent("ND_NoCharacters:GetCharacter", function()
    local player = source
    local characters = NDCore.Functions.GetPlayerCharacters(player)
    if next(characters) then
        for id, characterData in pairs(characters) do
            NDCore.Functions.SetActiveCharacter(player, id)
            return
        end
    end
    NDCore.Functions.CreateCharacter(player, GetPlayerName(player), "", "", "", GetPlayerName(player), "")
    characters = NDCore.Functions.GetPlayerCharacters(player)
    for id, characterData in pairs(characters) do
        NDCore.Functions.SetActiveCharacter(player, id)
        break
    end
end)