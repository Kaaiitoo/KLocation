ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('locpurchasekaito')
AddEventHandler('locpurchasekaito', function(futo, prix)
  local joueur = ESX.GetPlayerFromId(source)  
  local argent = joueur.getMoney()
    if argent >= prix then
      joueur.removeMoney(prix)
      CreateVehicle(futo, Config.pos.SpawnVehicle.position.x, Config.pos.SpawnVehicle.position.y, Config.pos.SpawnVehicle.position.z, Config.pos.SpawnVehicle.position.h, true, false)
      TriggerClientEvent('esx:showNotification', source, "Vous avez payé "..prix.. " ~o~$")
    else
      TriggerClientEvent('esx:showNotification', source, Config.PasDargentNotif)
    end
end)
