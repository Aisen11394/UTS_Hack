local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("U.T.S Hack")

local serv = win:Server("Main", "")

local btns = serv:Channel("Buttons")

btns:Button("TP To big chest", function()

DiscordLib:Notification("Notification", "inf jump", "Okay!")
end)

btns:Seperator()

btns:Button("Get max level", function()
DiscordLib:Notification("Notification", "Max level!", "Okay!")
end)

local tgls = serv:Channel("Toggles")

tgls:Toggle("Auto-Farm",false, function(bool)
print(bool)
end)

local sldrs = serv:Channel("Sliders")

local sldr = sldrs:Slider("Set Walkspeed", 16, 1000, 16, function(t)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

sldrs:Button("Change to 50", function()
sldr:Change(50)
end)

local drops = serv:Channel("Dropdowns")


local drop = drops:Dropdown("Pick me!",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool)
print(bool)
end)

drops:Button("Clear", function()
drop:Clear()
end)

drops:Button("Add option", function()
drop:Add("Option")
end)

local clrs = serv:Channel("Colorpickers")

clrs:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)

local textbs = serv:Channel("Textboxes")

textbs:Textbox("Set walkspeed", "Type here!", true, function(s)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

textbs:Button("Change Walkspeed to normal speed", function()
sldr:Change(16)
end)

local lbls = serv:Channel("Labels")

lbls:Label("Credits to aisen_2021")

local bnds = serv:Channel("Binds")

bnds:Bind("Kill bind", Enum.KeyCode.RightShift, function()
print("Killed everyone!")
end)

serv:Channel("by dawid#7205")


win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")