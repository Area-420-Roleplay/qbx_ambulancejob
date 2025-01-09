return {
    checkInCost = 2000, -- Price for using the hospital check-in system
    minForCheckIn = 2, -- Minimum number of people with the ambulance job to prevent the check-in system from being used

    locations = { -- Various interaction points
        duty = {
            vec3(305.98, -596.89, 43.28),
        },
        vehicle = {
            -- vec4(294.36, -603.45, 43.19, 67.88),
        },
        helicopter = {
            -- vec4(351.58, -587.45, 74.16, 160.5),
        },
        armory = {
            --[[
            {
                shopType = 'AmbulanceArmory',
                name = 'Armory',
                groups = { ambulance = 0 },
                inventory = {
                    { name = 'radio', price = 0 },
                    { name = 'bandage', price = 0 },
                    { name = 'painkillers', price = 0 },
                    { name = 'firstaid', price = 0 },
                    { name = 'weapon_flashlight', price = 0 },
                    { name = 'weapon_fireextinguisher', price = 0 },
                },
                locations = {
                    vec3(310.21, -603.00, 43.28)
                }
            }
            ]]--
        },
        roof = {
            vec3(338.54, -583.88, 74.17),
        },
        main = {
            vec3(332.40, -595.71, 43.28),
        },
        stash = {
            {
                name = 'ambulanceStash',
                label = 'Personal Locker',
                weight = 100000,
                slots = 30,
                groups = { ambulance = 0 },
                owner = true, -- Set to false for group stash
                location = vec3(301.94, -599.43, 43.28)
            }
        },

        ---@class Bed
        ---@field coords vector4
        ---@field model number

        ---@type table<string, {coords: vector3, checkIn?: vector3|vector3[], beds: Bed[]}>
        hospitals = {
            pillbox = {
                coords = vec3(350, -580, 43),
                checkIn = vec3(307.44, -595.26, 43.28),
                beds = {
                    {coords = vec4(319.41, -581.04, 42.84, 160), model = 1631638868},
                    {coords = vec4(313.93, -579.04, 42.84, 160), model = 1631638868},
                    {coords = vec4(311.06, -582.96, 42.84, 340), model = 1631638868},
                    {coords = vec4(314.47, -584.20, 42.84, 340), model = 1631638868},
                    {coords = vec4(317.67, -585.37, 42.84, 340), model = 1631638868},
                },
            },
            jail = {
                coords = vec3(1767.64, 2569.53, 45.72),
                checkIn = vec3(1768.61, 2570.58, 45.72),
                beds = {
                    {coords = vec4(1761.96, 2597.74, 45.66, 270.14), model = 2117668672},
                    {coords = vec4(1761.96, 2591.51, 45.66, 269.8), model = 2117668672},
                    {coords = vec4(1771.8, 2598.02, 45.66, 89.05), model = 2117668672},
                    {coords = vec4(1771.85, 2591.85, 45.66, 91.51), model = 2117668672},
                },
            },
        },

        stations = {
            {label = 'Pillbox Hospital', coords = vec4(304.27, -600.33, 43.28, 272.24)},
            {label = 'Prison Infirmary', coords = vec4(1767.64, 2569.53, 45.72, 313.27)},
        }
    },
}