

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent("KCoke:get")
AddEventHandler("KCoke:get", function()
    local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)
	
		
				if xPlayer.getInventoryItem('coke').count <= 200 then
					xPlayer.addInventoryItem("coke", math.random(1,8))
					else
					TriggerClientEvent('esx:showNotification', source, '~r~No puedes llevar más hojas')
				end

			
end)




ESX.RegisterServerCallback('KCoke:process', function (source, cb)
	
	local _source = source
	
	local xPlayer  = ESX.GetPlayerFromId(_source)
			
			
				if xPlayer.getInventoryItem('coke').count >= 2 then
					xPlayer.removeInventoryItem('coke', 2) 
					xPlayer.addInventoryItem('coke_pooch', 1) 
					cb(true)
				else
				TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes hojas')
				cb(false)
				end
			

end)



