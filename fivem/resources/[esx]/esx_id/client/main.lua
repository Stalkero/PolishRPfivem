local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local isDead = false
local inAnim = false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)

AddEventHandler('playerSpawned', function(spawn)
	isDead = false
end)

RegisterNetEvent('esx_giveid:GiveIdResponse')
AddEventHandler('esx_giveid:GiveIdResponse', function(response)
	if response then 
		ESX.ShowNotification("You have given your ID to ~y~" .. response)
	else
		ESX.ShowNotification("~r~Error no ID found")
	end
end)

RegisterNetEvent('esx_giveid:DisplayPlayerId')
AddEventHandler('esx_giveid:DisplayPlayerId', function(playerInfoString, playerId)
	if playerInfoString and playerId then 
		showIdNotification(playerInfoString, playerId)
	else
		ESX.ShowNotification("~r~Error no ID found")
	end
end)

function showIdNotification(msg, playerServerId)
	local mugshot, mugshotStr = ESX.Game.GetPedMugshot(GetPlayerPed(GetPlayerFromServerId(playerServerId)))
	-- ESX.ShowAdvancedNotification('Driver', 'Identification', msg, mugshotStr, 1)
	DrawCTRPNotification('Driver', 'Identification', msg, mugshotStr, 1)
	UnregisterPedheadshot(mugshot)
end

function playAnim(animDict, animName, duration)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do Citizen.Wait(0) end
	TaskPlayAnim(PlayerPedId(), animDict, animName, 1.0, -1.0, duration, 49, 1, false, false, false)
	RemoveAnimDict(animDict)
end

function GetClosestPedNotInVehicle(coords)
	local ignoreList = ignoreList or {}
	local peds = ESX.Game.GetPeds(ignoreList)
	local closestDistance = -1
	local closestPed= -1

	for i=1, #peds, 1 do
		local pedCoords = GetEntityCoords(peds[i])
		local distance  = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, coords.x, coords.y, coords.z, true)
		
		if GetPlayerServerId(NetworkGetPlayerIndexFromPed(peds[i])) ~= 0 then
			if not IsPedInAnyVehicle(peds[i], true) then
				if peds[i] ~= GetPlayerPed(-1) then
					if closestDistance == -1 or closestDistance > distance then
						closestPed = peds[i]
						closestDistance = distance
					end
				end
			end
		end
	end
	return closestPed, closestDistance
end

function OpenAnimationsMenu()
	local playerCoords = GetEntityCoords(GetPlayerPed(-1))
	local closestPed, closestDistance = GetClosestPedNotInVehicle(playerCoords)
	local targetCoords = GetEntityCoords(closestPed)
	if GetDistanceBetweenCoords(playerCoords, targetCoords, true) < 2.0 then
		local targetPlayerId = GetPlayerServerId(NetworkGetPlayerIndexFromPed(closestPed))
		if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
			playAnim('veh@busted_std', 'issue_ticket_crim', 7500)
			Citizen.Wait(7500)
			TriggerServerEvent("esx_giveid:GiveIdToPlayer", targetPlayerId)
		else
			playAnim('mp_common', 'givetake1_a', 2500)
			Citizen.Wait(2500)
			TriggerServerEvent("esx_giveid:GiveIdToPlayer", targetPlayerId)
		end
	else
		ESX.ShowNotification("No player found nearby")
	end
end

function DrawCTRPNotification(title, subject, msg, icon, iconType)
	SetNotificationBackgroundColor(130)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	SetNotificationMessage(icon, icon, false, iconType, title, subject)
	DrawNotification(false, false)
end

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlJustReleased(0, Keys['F5']) and IsInputDisabled(0) and not isDead then
			OpenAnimationsMenu()
		end

		if IsControlJustReleased(0, Keys['X']) and IsInputDisabled(0) and not isDead then
			ClearPedTasks(PlayerPedId())
		end

	end
end)