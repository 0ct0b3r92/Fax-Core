--[[
Fax Core, made by FAXES
Do not edit this file. Please edit the config.lua instead
]]
-- Functions for owners
function isCarBlacklistedowner(model)
	for _, blacklistedCar in pairs(ownercarblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

function checkCarowner(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklistedowner(carModel) then
			_DeleteEntity(car)
			notifycar()
		end
	end
end

function isWeaponBlacklistedowner(model)
	for _, blacklistedWeapon in pairs(ownerweaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end

function isPedBlacklistedowner(model)
	for _, blacklistedPed in pairs(ownerpedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end

-- Functions for Senior Admins
function isCarBlacklistedsadmin(model)
	for _, blacklistedCar in pairs(sadmincarblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

function checkCarsadmin(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklistedsadmin(carModel) then
			_DeleteEntity(car)
			notifycar()
		end
	end
end

function isWeaponBlacklistedsadmin(model)
	for _, blacklistedWeapon in pairs(sadminweaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end

function isPedBlacklistedsadmin(model)
	for _, blacklistedPed in pairs(sadminpedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end

-- Functions for Admins
function isCarBlacklistedadmin(model)
	for _, blacklistedCar in pairs(admincarblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

function checkCaradmin(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklistedadmin(carModel) then
			_DeleteEntity(car)
			notifycar()
		end
	end
end

function isWeaponBlacklistedadmin(model)
	for _, blacklistedWeapon in pairs(adminweaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end

function isPedBlacklistedadmin(model)
	for _, blacklistedPed in pairs(adminpedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end

-- Functions for Member 3
function isCarBlacklistedm3(model)
	for _, blacklistedCar in pairs(m3carblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

function checkCarm3(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklistedm3(carModel) then
			_DeleteEntity(car)
			notifycar()
		end
	end
end

function isWeaponBlacklistedm3(model)
	for _, blacklistedWeapon in pairs(m3weaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end

function isPedBlacklistedm3(model)
	for _, blacklistedPed in pairs(m3pedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end

-- Functions for Member 2
function isCarBlacklistedm2(model)
	for _, blacklistedCar in pairs(m2carblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

function checkCarm2(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklistedm2(carModel) then
			_DeleteEntity(car)
			notifycar()
		end
	end
end

function isWeaponBlacklistedm2(model)
	for _, blacklistedWeapon in pairs(m2weaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end

function isPedBlacklistedm2(model)
	for _, blacklistedPed in pairs(m2pedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end

-- Functions for Member 1
function isCarBlacklistedm1(model)
	for _, blacklistedCar in pairs(m1carblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

function checkCarm1(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklistedm1(carModel) then
			_DeleteEntity(car)
			notifycar()
		end
	end
end

function isWeaponBlacklistedm1(model)
	for _, blacklistedWeapon in pairs(m1weaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end

function isPedBlacklistedm1(model)
	for _, blacklistedPed in pairs(m1pedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end

-- Functions for guests
function isCarBlacklistedguest(model)
	for _, blacklistedCar in pairs(guestcarblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

function checkCarguest(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklistedguest(carModel) then
			_DeleteEntity(car)
			notifycar()
		end
	end
end

function isWeaponBlacklistedguest(model)
	for _, blacklistedWeapon in pairs(guestweaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end

function isPedBlacklistedguest(model)
	for _, blacklistedPed in pairs(guestpedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end

--
-- Global Functions
function _DeleteEntity(entity)
	Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end

function notifycar()
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(carblacklistMessage)
	DrawNotification(true, true)
end

function notifygun()
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(gunblacklistMessage)
	DrawNotification(true, true)
end

function notifyped()
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(pedblacklistMessage)
	DrawNotification(true, true)
end