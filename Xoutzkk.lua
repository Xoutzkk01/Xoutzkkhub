if game.PlaceId == 14286860137 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Xoutzkk", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = false})

function AutoUpgrade()
  while _G.AutoUpgrade == true do
    game:GetService("Players").LocalPlayer:WaitForChild("UpgradesHandler")
    task.wait(0.1)
  end
end

local JogadorTab = Window:MakeTab({
  Name = "Jogador",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local Section = JogadorTab:AddSection({
  Name = "Auto Farm"
})

JogadorTab:AddToggle({
  Name = "AutoUpgrade",
  Default = false,
  Callback = function(Value)
    _G.AutoUpgrade = Value
    AutoUpgrade()
  end    
})

end
