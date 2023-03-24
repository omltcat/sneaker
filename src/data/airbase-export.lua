--[[
DCS World Airbase script for Sneaker GCI

Based on https://github.com/fyyyyy/dcs-global-terrain-database/blob/main/exporters/get-airbases.lua

This code is under MIT licence, you can find the complete file at https://opensource.org/licenses/MIT
]]--
local features = {}

local categories = { "AIRDROME", "HELIPAD", "SHIP" }

function addAirbase (airbase)
    local feature = {}

    local point = Airbase.getPoint(airbase)
    local lat, lon, alt = coord.LOtoLL(point)
    local coordinates = {}
    coordinates[1] = lat
    coordinates[2] = lon
    coordinates[3] = alt

    feature.id = Airbase.getID(airbase)
    feature.callsign = Airbase.getCallsign(airbase)
    feature.cat = Airbase.getCategory(airbase)

    feature.desc = Airbase.getDesc(airbase)
    feature.point = coordinates
    feature.runways = Airbase.getRunways(airbase)
    if #feature.runways == 0 then
        feature.runways = {{}}
    end

    features[feature.desc.typeName] = feature
    
end

for _, airbase in pairs(world.getAirbases()) do
    addAirbase(airbase)
end

return features
