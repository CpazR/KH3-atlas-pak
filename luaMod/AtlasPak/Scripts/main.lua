-- @enum AtlasWorldCodes
AtlasWorldCount = 4

AtlasWorldCodeNames = {
    "TRES_WCID_CO_REVISIT",
    "TRES_WCID_TEN",
    "TRES_WCID_SOM",
    "TRES_WCID_TRAV"
}

AtlasWorldCodeIndexes = {
    32,
    33,
    34,
    35
}

InitTresWorldCodes = nil

function Init()
    InitTresWorldCodes = StaticFindObject("/Script/TresGame.ETresWorldCode")

    if not InitTresWorldCodes:IsValid() then
        error("CurrentETresWorldCode not valid\n")
    end
    
    print(string.format("Existing World: %s\n", InitTresWorldCodes:GetPropertyValue("TRES_WCID_HE")))
    print(string.format("Existing World: %s\n", InitTresWorldCodes:GetPropertyValue("TRES_WCID_CO")))
    print(string.format("non-existing World: %s\n", InitTresWorldCodes:GetPropertyValue("TRES_WCID_SOM")))


    for worldIndex =  1, AtlasWorldCount do
        print(string.format("Attempting to add new world code: %s, %d\n", AtlasWorldCodeNames[worldIndex], AtlasWorldCodeIndexes[worldIndex]))
        InitTresWorldCodes:SetPropertyValue(AtlasWorldCodeNames[worldIndex], AtlasWorldCodeIndexes[worldIndex])
    end
end

Init()

