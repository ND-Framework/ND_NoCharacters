local requestedCharacter = false

AddEventHandler("onResourceStart", function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    Wait(2000)
    if not requestedCharacter then
        TriggerServerEvent("ND_NoCharacters:GetCharacter")
        requestedCharacter = true
    end
end)

AddEventHandler("playerSpawned", function()
    if not requestedCharacter then
        TriggerServerEvent("ND_NoCharacters:GetCharacter")
        requestedCharacter = true
    end
end)