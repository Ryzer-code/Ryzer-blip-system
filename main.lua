Citizen.CreateThread(function()
	for i=1, #Config.blip, 1 do
		local blip = AddBlipForCoord(Config.blip[i].x, Config.blip[i].y, Config.blip[i].z)
		SetBlipSprite (blip, Config.blip[i].id)
		SetBlipDisplay(blip, 2)
		SetBlipColour (blip, Config.blip[i].color)
		SetBlipAsShortRange(blip, true)
		SetBlipScale(blip, Config.blip[i].scale)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Config.blip[i].name)
		EndTextCommandSetBlipName(blip)
	end
end)
