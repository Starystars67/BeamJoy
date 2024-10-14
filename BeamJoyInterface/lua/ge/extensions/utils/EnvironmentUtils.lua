local utils = {}

function utils.numericData()
    return {
        -- SUN
        ToD = { label = BJILang.get("environment.ToD"), step = .001, stepFast = .01, min = 0, max = .999 },
        dayLength = { label = BJILang.get("environment.dayLength"), step = 1, stepFast = 10, min = 1, max = 14400 },
        dayScale = { label = BJILang.get("environment.dayScale"), step = .01, stepFast = .1, min = .01, max = 100 },
        nightScale = { label = BJILang.get("environment.nightScale"), step = .01, stepFast = .1, min = .01, max = 100 },
        sunAzimuthOverride = { label = BJILang.get("environment.sunAzimuthOverride"), step = .1, stepFast = .5, min = .001, max = 6.25 },
        sunSize = { label = BJILang.get("environment.sunSize"), step = .01, stepFast = .1, min = 0, max = 100 },
        skyBrightness = { label = BJILang.get("environment.skyBrightness"), step = .1, stepFast = 1, min = 0, max = 200 },
        sunLightBrightness = { label = BJILang.get("environment.sunLightBrightness"), step = .01, stepFast = .1, min = 0, max = 10 },
        rayleighScattering = { label = BJILang.get("environment.rayleighScattering"), step = .001, stepFast = .005, min = .001, max = .15 },
        flareScale = { label = BJILang.get("environment.flareScale"), step = .01, stepFast = .1, min = 0, max = 25 },
        occlusionScale = { label = BJILang.get("environment.occlusionScale"), step = .001, stepFast = .01, min = 0, max = 1 },
        exposure = { label = BJILang.get("environment.exposure"), step = .01, stepFast = .1, min = 0, max = 3 },
        shadowDistance = { label = BJILang.get("environment.shadowDistance"), step = 1, min = 0, max = 12800 },
        shadowSoftness = { label = BJILang.get("environment.shadowSoftness"), step = .001, stepFast = .01, min = -10, max = 10 },
        shadowSplits = { label = BJILang.get("environment.shadowSplits"), step = 1, min = 0, max = 4 },
        shadowTexSize = { label = BJILang.get("environment.shadowTexSize"), step = 1, min = 32, max = 2048 },
        shadowLogWeight = { label = BJILang.get("environment.shadowLogWeight"), step = .001, stepFast = .01, min = .001, max = .999 },
        visibleDistance = { label = BJILang.get("environment.visibleDistance"), step = 1, min = 1000, max = 32000 },
        moonAzimuth = { label = BJILang.get("environment.moonAzimuth"), step = .1, stepFast = 1, min = 0, max = 360 },
        moonElevation = { label = BJILang.get("environment.moonElevation"), step = .1, stepFast = 1, min = 0, max = 360 },
        moonScale = { label = BJILang.get("environment.moonScale"), step = .001, stepFast = .01, min = .005, max = 1 },
        -- WEATHER
        fogDensity = { label = BJILang.get("environment.fogDensity"), step = .001, stepFast = .01, min = 0, max = .2 },
        fogDensityOffset = { label = BJILang.get("environment.fogDensityOffset"), step = 1, stepFast = 1000, min = 0, max = 100 },
        fogAtmosphereHeight = { label = BJILang.get("environment.fogAtmosphereHeight"), step = 1, stepFast = 1000, min = 0, max = 10000 },
        cloudHeight = { label = BJILang.get("environment.cloudHeight"), step = 1, stepFast = 1000, min = 0, max = 20 },
        cloudHeightOne = { label = BJILang.get("environment.cloudHeightOne"), step = 1, stepFast = 1000, min = 0, max = 20 },
        cloudCover = { label = BJILang.get("environment.cloudCover"), step = 1, stepFast = 100, min = 0, max = 5 },
        cloudCoverOne = { label = BJILang.get("environment.cloudCoverOne"), step = 1, stepFast = 100, min = 0, max = 5 },
        cloudSpeed = { label = BJILang.get("environment.cloudSpeed"), step = 1, stepFast = 10, min = 0, max = 10 },
        cloudSpeedOne = { label = BJILang.get("environment.cloudSpeedOne"), step = 1, stepFast = 10, min = 0, max = 10 },
        cloudExposure = { label = BJILang.get("environment.cloudExposure"), step = 1, stepFast = 10, min = 0, max = 10 },
        cloudExposureOne = { label = BJILang.get("environment.cloudExposureOne"), step = 1, stepFast = 10, min = 0, max = 10 },
        rainDrops = { label = BJILang.get("environment.rainDrops"), step = 1, stepFast = 20000, min = 0, max = 20000 },
        dropSize = { label = BJILang.get("environment.dropSize"), step = 1, stepFast = 10, min = 0, max = 2 },
        dropMinSpeed = { label = BJILang.get("environment.dropMinSpeed"), step = 1, stepFast = 10, min = 0, max = 2 },
        dropMaxSpeed = { label = BJILang.get("environment.dropMaxSpeed"), step = 1, stepFast = 10, min = 0, max = 2 },
        -- GRAVITY
        gravityRate = { label = BJILang.get("environment.gravityRate"), step = .5, stepFast = 10, min = -280, max = 10 },
        --TEMPERATURE
        tempCurveNoon = { label = BJILang.get("environment.tempCurveNoon"), step = 1, stepFast = 2, min = -50, max = 50 },
        tempCurveDusk = { label = BJILang.get("environment.tempCurveDusk"), step = 1, stepFast = 2, min = -50, max = 50 },
        tempCurveMidnight = { label = BJILang.get("environment.tempCurveMidnight"), step = 1, stepFast = 2, min = -50, max = 50 },
        tempCurveDawn = { label = BJILang.get("environment.tempCurveDawn"), step = 1, stepFast = 2, min = -50, max = 50 },
        --SPEED
        simSpeed = { label = BJILang.get("environment.simSpeed"), step = .01, stepFast = .1, min = .01, max = 10 },
    }
end

function utils.gravityPresets()
    return {
        { label = BJILang.get("presets.gravity.zero"),    value = 0, },
        { label = BJILang.get("presets.gravity.pluto"),   value = -0.58, },
        { label = BJILang.get("presets.gravity.moon"),    value = -1.62, },
        { label = BJILang.get("presets.gravity.mars"),    value = -3.71, },
        { label = BJILang.get("presets.gravity.mercury"), value = -3.7, },
        { label = BJILang.get("presets.gravity.uranus"),  value = -8.87, },
        { label = BJILang.get("presets.gravity.earth"),   value = -9.81,  display = false },
        { label = BJILang.get("presets.gravity.saturn"),  value = -10.44, },
        { label = BJILang.get("presets.gravity.neptune"), value = -11.15, },
        { label = BJILang.get("presets.gravity.jupiter"), value = -24.92, },
        { label = BJILang.get("presets.gravity.sun"),     value = -274, },
    }
end

function utils.speedPresets()
    return {
        { label = BJILang.get("presets.speed.slowextreme"), value = 0.01 },
        { label = BJILang.get("presets.speed.slowest"),     value = 0.1 },
        { label = BJILang.get("presets.speed.slower"),      value = 0.5 },
        { label = BJILang.get("presets.speed.slow"),        value = 0.75 },
        { label = BJILang.get("presets.speed.normal"),      value = 1,   display = false },
        { label = BJILang.get("presets.speed.fast"),        value = 1.25 },
        { label = BJILang.get("presets.speed.faster"),      value = 2 },
        { label = BJILang.get("presets.speed.fastest"),     value = 5 },
        { label = BJILang.get("presets.speed.fastextreme"), value = 10 },
    }
end

function utils.timePresets()
    return {
        { label = "dawn",     ToD = .791, icon = ICONS.brightness_3 },
        { label = "midday",   ToD = 0,    icon = ICONS.brightness_high },
        { label = "dusk",     ToD = .210, icon = ICONS.brightness_3 },
        { label = "midnight", ToD = .5,   icon = ICONS.brightness_low }
    }
end

function utils.weatherPresets()
    return {
        {
            label = "clear",
            keys = {
                skyBrightness = 40,
                sunLightBrightness = 1,
                shadowSoftness = .1,
                fogDensity = 0.001,
                fogDensityOffset = 0,
                fogAtmosphereHeight = 1000,
                cloudHeight = 1.7,
                cloudHeightOne = 2.2,
                cloudCover = .05,
                cloudCoverOne = .03,
                cloudSpeed = .1,
                cloudSpeedOne = .2,
                cloudExposure = 4,
                cloudExposureOne = 6,
                rainDrops = 0,
            },
            icon = ICONS.simobject_sun,
        },
        {
            label = "cloud",
            keys = {
                skyBrightness = 30,
                sunLightBrightness = .5,
                shadowSoftness = 7,
                fogDensity = 0.004,
                fogDensityOffset = 20,
                fogAtmosphereHeight = 1000,
                cloudHeight = 1.15,
                cloudHeightOne = 1.17,
                cloudCover = 5,
                cloudCoverOne = 5,
                cloudSpeed = .8,
                cloudSpeedOne = 1,
                cloudExposure = 8,
                cloudExposureOne = 7,
                rainDrops = 0,
            },
            icon = ICONS.simobject_cloud_layer,
        },
        {
            label = "lightrain",
            keys = {
                skyBrightness = 20,
                sunLightBrightness = .2,
                shadowSoftness = 10,
                fogDensity = 0.001,
                fogDensityOffset = 20,
                fogAtmosphereHeight = 0,
                cloudHeight = 1.15,
                cloudHeightOne = 1.17,
                cloudCover = 5,
                cloudCoverOne = 5,
                cloudSpeed = .4,
                cloudSpeedOne = .6,
                cloudExposure = 3,
                cloudExposureOne = 3,
                rainDrops = 20000,
                dropSize = .15,
                dropMinSpeed = 1.5,
                dropMaxSpeed = 2,
                precipType = "rain_drop",
            },
            icon = ICONS.simobject_precipitation,
        },
        {
            label = "rain",
            keys = {
                skyBrightness = 10,
                sunLightBrightness = 0,
                shadowSoftness = 10,
                fogDensity = 0.008,
                fogDensityOffset = 5,
                fogAtmosphereHeight = 0,
                cloudHeight = 1.15,
                cloudHeightOne = 1.17,
                cloudCover = 5,
                cloudCoverOne = 5,
                cloudSpeed = .4,
                cloudSpeedOne = .6,
                cloudExposure = 3,
                cloudExposureOne = 3,
                rainDrops = 20000,
                dropSize = .5,
                dropMinSpeed = 1.8,
                dropMaxSpeed = 2,
                precipType = "rain_drop",
            },
            icon = ICONS.simobject_precipitation,
        },
        {
            label = "lightsnow",
            keys = {
                skyBrightness = 30,
                sunLightBrightness = .4,
                shadowSoftness = 2,
                fogDensity = 0.001,
                fogDensityOffset = 20,
                fogAtmosphereHeight = 1000,
                cloudHeight = 1.15,
                cloudHeightOne = 1.17,
                cloudCover = .35,
                cloudCoverOne = .1,
                cloudSpeed = .1,
                cloudSpeedOne = .05,
                cloudExposure = 10,
                cloudExposureOne = 10,
                rainDrops = 20000,
                dropSize = 1,
                dropMinSpeed = .1,
                dropMaxSpeed = .3,
                precipType = "Snow_menu",
            },
            icon = ICONS.ac_unit,
        },
        {
            label = "snow",
            keys = {
                skyBrightness = 10,
                sunLightBrightness = 0,
                shadowSoftness = 10,
                fogDensity = 0.01,
                fogDensityOffset = 5,
                fogAtmosphereHeight = 0,
                cloudHeight = 1.15,
                cloudHeightOne = 1.17,
                cloudCover = 2,
                cloudCoverOne = 2,
                cloudSpeed = 0,
                cloudSpeedOne = 0,
                cloudExposure = 0,
                cloudExposureOne = 0,
                rainDrops = 20000,
                dropSize = 2,
                dropMinSpeed = 1.8,
                dropMaxSpeed = 2,
                precipType = "Snow_menu",
            },
            icon = ICONS.ac_unit,
        }
    }
end

return utils
