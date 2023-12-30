ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local PlayerData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
     ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

  Citizen.CreateThread(function()
    local blip = AddBlipForCoord(Config.PosBlips)

    SetBlipSprite (blip, Config.Imagedublips)
    SetBlipScale  (blip, Config.Tailledublips)
    SetBlipColour  (blip, Config.CouleurduBlips)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(Config.NomduBlips)
    EndTextCommandSetBlipName(blip)
end)

  
function KaitoLoc()
    local KaitoLoc = RageUI.CreateMenu("~u~Location", "Menu Intéraction..")
    local Voitures = RageUI.CreateSubMenu(KaitoLoc, "~u~Location", "Menu Intéraction..")
    local Motos = RageUI.CreateSubMenu(KaitoLoc, "~u~Location", "Menu Intéraction..")
    local Velos = RageUI.CreateSubMenu(KaitoLoc, "~u~Location", "Menu Intéraction..")
    KaitoLoc:SetRectangleBanner(200,120,58)
    Voitures:SetRectangleBanner(200,120,58)
    Motos:SetRectangleBanner(200,120,58)
    Velos:SetRectangleBanner(200,120,58)
        RageUI.Visible(KaitoLoc, not RageUI.Visible(KaitoLoc))
            while KaitoLoc do
            Citizen.Wait(0)
            RageUI.IsVisible(KaitoLoc, true, true, true, function()

                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.Location.position.x, Config.pos.Location.position.y, Config.pos.Location.position.z)
                if dist3 >= Config.DistanceVoirLePoint then
            RageUI.CloseAll()
                else

                    RageUI.ButtonWithStyle("~h~→ Voitures",nil, {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                        if Selected then
                        end
                    end, Voitures)

                    RageUI.ButtonWithStyle("~h~→ Motos",nil, {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                        if Selected then
                        end
                    end, Motos)

                    RageUI.ButtonWithStyle("~h~→ Vélos",nil, {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                        if Selected then
                        end
                    end, Velos)

                end

            end, function()
            end)

            RageUI.IsVisible(Voitures, true, true, true, function()

                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.Location.position.x, Config.pos.Location.position.y, Config.pos.Location.position.z)
                if dist3 >= Config.DistanceVoirLePoint then
            RageUI.CloseAll()
                else

                RageUI.ButtonWithStyle(Config.LabelVoiture1,"Prix : "..Config.PrixPrimo.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local prix = Config.PrixPrimo
                        local futo = Config.Voiture1
                        TriggerServerEvent('locpurchasekaito', futo,prix)
                        RageUI.CloseAll()
                    end
                end, Paiement)

                RageUI.ButtonWithStyle(Config.LabelVoiture2,"Prix : "..Config.PrixBlista.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local prix = Config.PrixBlista
                        local futo = Config.Voiture2
                        TriggerServerEvent('locpurchasekaito', futo,prix)
                        RageUI.CloseAll()
                    end
                end)

                RageUI.ButtonWithStyle(Config.LabelVoiture3,"Prix : "..Config.PrixPrairie.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local prix = Config.PrixPrairie
                        local futo = Config.Voiture3
                        TriggerServerEvent('locpurchasekaito', futo,prix)
                        RageUI.CloseAll()
                    end
                end)

                RageUI.ButtonWithStyle(Config.LabelVoiture4,"Prix : "..Config.PrixDilettante.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local prix = Config.PrixDilettante
                        local futo = Config.Voiture4
                        TriggerServerEvent('locpurchasekaito', futo,prix)
                        RageUI.CloseAll()
                    end
                end)

                RageUI.ButtonWithStyle(Config.LabelVoiture5,"Prix : "..Config.PrixSugoi.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local prix = Config.PrixSugoi
                        local futo = Config.Voiture5
                        TriggerServerEvent('locpurchasekaito', futo,prix)
                        RageUI.CloseAll()
                    end
                end)

                RageUI.ButtonWithStyle(Config.LabelVoiture6,"Prix : "..Config.PrixPanto.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Car}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local prix = Config.PrixPanto
                        local futo = Config.Voiture6
                        TriggerServerEvent('locpurchasekaito', futo,prix)
                        RageUI.CloseAll()
                    end
                end)
            end

            end, function()
            end)

            RageUI.IsVisible(Motos, true, true, true, function()
            
                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.Location.position.x, Config.pos.Location.position.y, Config.pos.Location.position.z)
                if dist3 >= Config.DistanceVoirLePoint then
            RageUI.CloseAll()
                else
                    RageUI.ButtonWithStyle(Config.LabelMoto1,"Prix : "..Config.PrixBati800.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Bike}, true, function(Hovered, Active, Selected)
                        if Selected then
                            local prix = Config.PrixBati800
                            local futo = Config.Moto1
                            TriggerServerEvent('locpurchasekaito', futo,prix)
                            RageUI.CloseAll()
                        end
                    end)


                    RageUI.ButtonWithStyle(Config.LabelMoto2,"Prix : "..Config.PrixRuffian.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Bike}, true, function(Hovered, Active, Selected)
                        if Selected then
                            local prix = Config.PrixRuffian
                            local futo = Config.Moto2
                            TriggerServerEvent('locpurchasekaito', futo,prix)
                            RageUI.CloseAll()
                        end
                    end)

                    RageUI.ButtonWithStyle(Config.LabelMoto3,"Prix : "..Config.PrixNemesis.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Bike}, true, function(Hovered, Active, Selected)
                        if Selected then
                            local prix = Config.PrixNemesis
                            local futo = Config.Moto3
                            TriggerServerEvent('locpurchasekaito', futo,prix)
                            RageUI.CloseAll()
                        end
                    end)

                    RageUI.ButtonWithStyle(Config.LabelMoto4,"Prix : "..Config.PrixPCJ600.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Bike}, true, function(Hovered, Active, Selected)
                        if Selected then
                            local prix = Config.PrixPCJ600
                            local futo = Config.Moto4
                            TriggerServerEvent('locpurchasekaito', futo,prix)
                            RageUI.CloseAll()
                        end
                    end)
    
      
            end
            end, function()
            end)

            RageUI.IsVisible(Velos, true, true, true, function()

                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.Location.position.x, Config.pos.Location.position.y, Config.pos.Location.position.z)
                if dist3 >= Config.DistanceVoirLePoint then
            RageUI.CloseAll()
                else

                    RageUI.ButtonWithStyle(Config.Velo1,"Prix : "..Config.PrixBMX.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Bike}, true, function(Hovered, Active, Selected)
                        if Selected then
                            local prix = Config.PrixBMX
                            local futo = Config.Velo1
                            TriggerServerEvent('locpurchasekaito', futo,prix)
                            RageUI.CloseAll()
                        end
                    end)

                    RageUI.ButtonWithStyle(Config.Velo2,"Prix : "..Config.PrixCruiser.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Bike}, true, function(Hovered, Active, Selected)
                        if Selected then
                            local prix = Config.PrixCruiser
                            local futo = Config.Velo2
                            TriggerServerEvent('locpurchasekaito', futo,prix)
                            RageUI.CloseAll()
                        end
                    end)

                    RageUI.ButtonWithStyle(Config.Velo3,"Prix : "..Config.PrixFixter.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Bike}, true, function(Hovered, Active, Selected)
                        if Selected then
                            local prix = Config.PrixFixter
                            local futo = Config.Velo3
                            TriggerServerEvent('locpurchasekaito', futo,prix)
                            RageUI.CloseAll()
                        end
                    end)
                    
                    RageUI.ButtonWithStyle(Config.Velo4,"Prix : "..Config.PrixScorcher.. " ~o~$", {RightBadge = RageUI.BadgeStyle.Bike}, true, function(Hovered, Active, Selected)
                        if Selected then
                            local prix = Config.PrixScorcher
                            local futo = Config.Velo4
                            TriggerServerEvent('locpurchasekaito', futo,prix)
                            RageUI.CloseAll()
                        end
                    end)
            end
            end, function()
            end)
            if not RageUI.Visible(KaitoLoc)and not RageUI.Visible(Voitures) and not RageUI.Visible(Motos) and not RageUI.Visible(Velos)then
            KaitoLoc = RMenu:DeleteType("KaitoLoc", true)
        end
    end
end

Citizen.CreateThread(function()
    while true do
        local Timer = 500
        local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
        local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.Location.position.x, Config.pos.Location.position.y, Config.pos.Location.position.z)
        if dist3 <= Config.DistanceVoirLeMarker then
            Timer = 0
            end
            if dist3 <= Config.DistanceVoirLePoint then
                Timer = 0   
                    RageUI.Text({  message = Config.TextLocation, time_display = 1 })
                        if IsControlJustPressed(1,51) then
                            KaitoLoc()    
                end
            end 
        Citizen.Wait(Timer)
    end
end)


Citizen.CreateThread(function()
    local hash = GetHashKey(Config.HashPed)
    while not HasModelLoaded(hash) do RequestModel(hash) Wait(20) end
    for _,v in pairs(Config.pos.PedPos) do
        ped = CreatePed("PED_TYPE_CIVFEMALE", Config.HashPed, v.x, v.y, v.z, v.h, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end
end)