-------------------------------------------
--Config Alterations
-------------------------------------------

application = {
	content = {
                graphicsCompatibility = 1,  --this turns on V1 Compatibility mode
		width = 310,
		height = 480, 
		scale = "letterBox",
		fps = 30,
		
		--[[
        imageSuffix = {
		    ["@2x"] = 2,
		}
		--]]
	},

    --[[
    -- Push notifications

    notification =
    {
        iphone =
        {
            types =
            {
                "badge", "sound", "alert", "newsstand"
            }
        }
    }
    --]]    
}
