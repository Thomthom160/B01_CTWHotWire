---@type promise?
local p

RegisterNUICallback("minigameOver", function(data, cb)
    cb('ok')
    if p then
        SetNuiFocus(false,false)
        p:resolve(data.result)
        p = nil
    end
end)

startMinigame = function(duration)
    if p ~= nil then return end
    p = promise:new()

    SetNuiFocus(true,true)
    SendNUIMessage({
        type = "start",
        duration = duration
    })

    return Citizen.Await(p)
end

stopMinigame = function()
    if p then
        SetNuiFocus(false,false)
        SendNUIMessage({
            type = "stop",
        })
        p:resolve(false)
        p = nil
    end
end

isMinigameActive = function()
    return p ~= nil
end