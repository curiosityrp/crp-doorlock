ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()

	-- Update the door list
	ESX.TriggerServerCallback('crp-doorlock:getDoorInfo', function(doorInfo)
		for doorID,state in pairs(doorInfo) do
			Config.DoorList[doorID].locked = state
		end
	end)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		for _,doorID in ipairs(Config.DoorList) do
			if doorID.doors then
				for k,v in ipairs(doorID.doors) do
					if not v.object or not DoesEntityExist(v.object) then
						v.object = GetClosestObjectOfType(v.objCoords, 1.0, GetHashKey(v.objName), false, false, false)
					end
				end
			else
				if not doorID.object or not DoesEntityExist(doorID.object) then
					doorID.object = GetClosestObjectOfType(doorID.objCoords, 1.0, GetHashKey(doorID.objName), false, false, false)
				end
			end
		end

		Citizen.Wait(1000)
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local playerCoords = GetEntityCoords(PlayerPedId())

		for k,doorID in ipairs(Config.DoorList) do
			local distance

			if doorID.doors then
				distance = #(playerCoords - doorID.doors[1].objCoords)
			else
				distance = #(playerCoords - doorID.objCoords)
			end

			local isAuthorized = IsAuthorized(doorID)
			local maxDistance, size, displayText = 1.25, 1, _U('unlocked')

			if doorID.distance then
				maxDistance = doorID.distance
			end

			if distance < 50 then

				if doorID.doors then
					for _,v in ipairs(doorID.doors) do
						FreezeEntityPosition(v.object, doorID.locked)

						if doorID.locked and v.objYaw and GetEntityRotation(v.object).z ~= v.objYaw then
							SetEntityRotation(v.object, 0.0, 0.0, v.objYaw, 2, true)
						end
					end
				else
					FreezeEntityPosition(doorID.object, doorID.locked)

					if doorID.locked and doorID.objYaw and GetEntityRotation(doorID.object).z ~= doorID.objYaw then
						SetEntityRotation(doorID.object, 0.0, 0.0, doorID.objYaw, 2, true)
					end
				end
			end

			if distance < maxDistance and isAuthorized then
				sleepThread = 5

				local size = 1
				if doorID.size then
					size = doorID.size
				end

				if doorID.locked then
					displayText = _U('locked')
				end

				displayText = _U('press_button', displayText)
				DrawText3D(doorID.textCoords, displayText, size)
			
				if IsControlJustReleased(0, 38) then
					if isAuthorized then
						if doorID.locked == true then
							local iLocking = true
							local swingcount = 0
							TriggerEvent("dooranim")
							doorID.locked = false
							displayText = _U('unlocked')
							TriggerServerEvent('crp-doorlock:updateState', k, doorID.locked)
							while iLocking do
								Citizen.Wait(10)
								DrawText3D(doorID.textCoords, "Unlocking", size)
								 swingcount = swingcount + 1
								if swingcount > 50 then
									iLocking = false
								end
							end
						elseif doorID.locked == false then
							local iUnlocking = true
							local swingcount = 0
							TriggerEvent("dooranim")
							doorID.locked = true
							displayText = _U('locked')
							TriggerServerEvent('crp-doorlock:updateState', k, doorID.locked)
							while iUnlocking do
								Citizen.Wait(10)
								DrawText3D(doorID.textCoords, "Unlocking", size)
								swingcount = swingcount + 1
								if swingcount > 50 then
									iUnlocking = false
								end
							end	
						end
					end
				end
			end
		end
		Citizen.Wait(sleepThread)
	end
end)

function IsAuthorized(doorID)
	if ESX.PlayerData.job == nil then
		return false
	end

	for _,job in pairs(doorID.authorizedJobs) do
		if job == ESX.PlayerData.job.name then
			return true
		end
	end

	return false
end

RegisterNetEvent('crp-doorlock:setState')
AddEventHandler('crp-doorlock:setState', function(doorID, state)
	Config.DoorList[doorID].locked = state
end)

-- Draw & Anim
function DrawText3D(coords, text, size)
    local onScreen,_x,_y=World3dToScreen2d(coords.x,coords.y,coords.z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

RegisterNetEvent( 'dooranim' )
AddEventHandler( 'dooranim', function()
    ClearPedSecondaryTask(GetPlayerPed(-1))
    loadAnimDict( "anim@heists@keycard@" ) 
    TaskPlayAnim( GetPlayerPed(-1), "anim@heists@keycard@", "exit", 8.0, 1.0, -1, 16, 0, 0, 0, 0 )
    Citizen.Wait(850)
    ClearPedTasks(GetPlayerPed(-1))
end)

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end