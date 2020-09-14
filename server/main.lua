function startTsunamiCountdown()
  --Will refactor later to loop the time
  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 5 minutes! Seek shelter!"}
  })

  Citizen.Wait(1 * 60 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 4 minutes! Seek shelter!"}
  })

  Citizen.Wait(1 * 60 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 3 minutes! Seek shelter!"}
  })

  Citizen.Wait(1 * 60 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 2 minutes! Seek shelter!"}
  })
  
  Citizen.Wait(1 * 60 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 1 minute! Seek shelter!"}
  })
  
  Citizen.Wait(55 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 5!"}
  })
  
  Citizen.Wait(1 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 4!"}
  })

  Citizen.Wait(1 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 3!"}
  })

  Citizen.Wait(1 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 2!"}
  })

  Citizen.Wait(1 * 1000)

  TriggerClientEvent('chat:addMessage', -1, {
    args = {"^1WEAZEL NEWS", "Tsunami incoming in 1!"}
  })

  Citizen.Wait(1 * 1000)

  ExecuteCommand('quit')
end

Citizen.CreateThread(function()
  for i, time in ipairs(Config.Times) do
    local time = time
    if time > 23 then 
      print("[tsunami] [WARNING] Incorrect time value, must be less than or equal to 23, not adding " .. time .. " value")
      return
    elseif time == 0 then 
      time = 23
    elseif time <= 23 then 
      time = time - 1 
    end
    print(time)
    TriggerEvent('cron:runAt', time, 55, startTsunamiCountdown)
  end
end)
