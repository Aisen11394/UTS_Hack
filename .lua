local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/weakhoes/Roblox-UI-Libs/main/Vanis%20Lib/Vanis%20Lib%20Source.lua'))()

local Window = library:CreateWindow("UTS HACK", "Version 1.0", 10044538000)

local Tab = Window:CreateTab("Main")

local Page = Tab:CreateFrame("Page 1")

Button = Page:CreateButton("Button", "Description", function()
CreateNotification("Title", "Description", function(value)
if value == true then
print(true)
else
print(false)
end
end)
end)



Toggle = Page:CreateToggle("Toggle", "Description", function(arg)
Toggle:UpdateToggle("New Title", "New Description")
print(arg)
end)



Bind = Page:CreateBind("KeyBind", "F", function(arg)
Bind:UpdateBind("New Title")
print(arg)
end)



TextBox = Page:CreateBox("TextBox", 10044538000, function(spd)
TextBox:UpdateBox("Speed ​​changed successfully")
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = spd
end)



Page:CreateSlider("Slider", 16, 500,function(arg)
print(arg)
end)



Label = Page:CreateLabel("Label")
Label:UpdateLabel("New Title")
