--[[
Fax Core, made by FAXES
Do not edit this file. Please edit the config.lua instead
]]
-- Checks for Ace perms
RegisterServerEvent("Fax:CheckWhite")
AddEventHandler('Fax:CheckWhite', function()
    -- Check for owner perms
    if IsPlayerAceAllowed(source, "owner") then
        TriggerClientEvent("Fax:owner", source)
    -- Check for senior admin perms
    elseif IsPlayerAceAllowed(source, "snradmin") then
        TriggerClientEvent("Fax:sadmin", source)
    -- Check for admin perms
    elseif IsPlayerAceAllowed(source, "fadmin") then
        TriggerClientEvent("Fax:fadmin", source)
    -- Check for member 3 perms
    elseif IsPlayerAceAllowed(source, "member3") then
        TriggerClientEvent("Fax:member3", source)
    -- Check for member 2 perms
    elseif IsPlayerAceAllowed(source, "member2") then
        TriggerClientEvent("Fax:member2", source)
    -- Check for member 1 perms
    elseif IsPlayerAceAllowed(source, "member1") then
        TriggerClientEvent("Fax:member1", source)
    -- Check if client does not have ace and uses guest
    else
        TriggerClientEvent("Fax:guest", source)
    end
end)

-- Checked Messages
RegisterServerEvent("Fax:CheckWhiteMessage")
AddEventHandler('Fax:CheckWhiteMessage', function()
    if IsPlayerAceAllowed(source, "owner") then
        TriggerClientEvent("Fax:ownerMessage", source)
    -- Check for senior admin perms
elseif IsPlayerAceAllowed(source, "snradmin") then
    TriggerClientEvent("Fax:sadminMessage", source)
-- Check for admin perms
elseif IsPlayerAceAllowed(source, "fadmin") then
    TriggerClientEvent("Fax:fadminMessage", source)
-- Check for member 3 perms
elseif IsPlayerAceAllowed(source, "member3") then
    TriggerClientEvent("Fax:m3Message", source)
-- Check for member 2 perms
elseif IsPlayerAceAllowed(source, "member2") then
    TriggerClientEvent("Fax:m2Message", source)
-- Check for member 1 perms
elseif IsPlayerAceAllowed(source, "member1") then
    TriggerClientEvent("Fax:m1Message", source)
-- Check if client does not have ace and uses guest
    else
        TriggerClientEvent("Fax:guestMessage", source)
    end
end)

-- Version checker
PerformHttpRequest("http://faxes.zone/files/fax-core/version.txt", function(err, serverVersion, headers)
    local version = "v1.0.0"
    if string.find(serverVersion, version) == nil then
        Wait(120)
        print("\n")
        print("---------------------- Fax-Core ----------------------")
        print("---- ALERT : Your version of Fax-Core is outdated ----")
        print("--- Please update your version as soon as possible ---")
        print("------ http://faxes.zone/scripts/fax-core.html -------")
        print("------------------------------------------------------")
        print("\n")
    else
        Wait(120)
        print("\n")
        print("---------------------- Fax-Core ----------------------")
        print("--------- Fax Core is on the latest version ----------")
        print("------------------------------------------------------")
        print("\n")
    end
end)

Citizen.CreateThread(function ()
check = (GetConvar("Fax-Core", "false") == "true")
    if not check then
        Wait(140)
        print("\n")
        print("---------------------- Fax-Core ----------------------")
        print("------ ALERT: Permissions are not set correctly ------")
        print("--- Please read the Wiki on setting up permissions ---")
        print("------ http://faxes.zone/scripts/fax-core.html -------")
        print("------------------------------------------------------")
        print("\n")
    end
end)