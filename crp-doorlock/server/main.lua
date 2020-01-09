ESX = nil
local doorInfo = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('crp-doorlock:updateState')
AddEventHandler('crp-doorlock:updateState', function(doorID, state)
	doorInfo[doorID] = state
	TriggerClientEvent('crp-doorlock:setState', -1, doorID, state)
end)

ESX.RegisterServerCallback('crp-doorlock:getDoorInfo', function(source, cb)
	cb(doorInfo)
end)