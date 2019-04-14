local WaitTime = 2500 -- How often do you want to update the status (In MS)

local DiscordAppId = tonumber(GetConvar("RichAppId", "382624125287399424"))
local DiscordAppAsset = GetConvar("RichAssetId", "fivem_large")
	
Citizen.CreateThread(function()
	SetDiscordAppId(DiscordAppId)
	SetDiscordRichPresenceAsset(DiscordAppAsset)
	while true do
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
		local StreetHash = GetStreetNameAtCoord(x, y, z)
		Citizen.Wait(WaitTime)
		if StreetHash ~= nil then
			StreetName = GetStreetNameFromHashKey(StreetHash)
			if IsPedOnFoot(PlayerPedId()) and not IsEntityInWater(PlayerPedId()) then
				if IsPedSprinting(PlayerPedId()) then
					SetRichPresence("Biega na "..StreetName)
				elseif IsPedRunning(PlayerPedId()) then
					SetRichPresence("Truchta na "..StreetName)
				elseif IsPedWalking(PlayerPedId()) then
					SetRichPresence("Chodzi na "..StreetName)
				elseif IsPedStill(PlayerPedId()) then
					SetRichPresence("Stoi na "..StreetName)
				end
			elseif GetVehiclePedIsUsing(PlayerPedId()) ~= nil and not IsPedInAnyHeli(PlayerPedId()) and not IsPedInAnyPlane(PlayerPedId()) and not IsPedOnFoot(PlayerPedId()) and not IsPedInAnySub(PlayerPedId()) and not IsPedInAnyBoat(PlayerPedId()) then
				local MPH = math.ceil(GetEntitySpeed(GetVehiclePedIsUsing(PlayerPedId())) * 2.236936)
				local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
				if MPH > 50 then
					SetRichPresence("Jedzie na "..StreetName.." W "..VehName)
				elseif MPH <= 50 and MPH > 0 then
					SetRichPresence("Zwalnia na "..StreetName.." W "..VehName)
				elseif MPH == 0 then
					SetRichPresence("Stoi na "..StreetName.." W "..VehName)
				end
			elseif IsPedInAnyHeli(PlayerPedId()) or IsPedInAnyPlane(PlayerPedId()) then
				local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
				if IsEntityInAir(GetVehiclePedIsUsing(PlayerPedId())) or GetEntityHeightAboveGround(GetVehiclePedIsUsing(PlayerPedId())) > 5.0 then
					SetRichPresence("Lata nad"..StreetName.." w "..VehName)
				else
					SetRichPresence("Wylądował na "..StreetName.." w "..VehName)
				end
			elseif IsEntityInWater(PlayerPedId()) then
				SetRichPresence("Pływa sobie")
			elseif IsPedInAnyBoat(PlayerPedId()) and IsEntityInWater(GetVehiclePedIsUsing(PlayerPedId())) then
				local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
				SetRichPresence("Płwya sobie w "..VehName)
			elseif IsPedInAnySub(PlayerPedId()) and IsEntityInWater(GetVehiclePedIsUsing(PlayerPedId())) then
				SetRichPresence("W łodzi podwodnej")
			end
		end
	end
end)
