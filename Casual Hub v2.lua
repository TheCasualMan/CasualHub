local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Casual Hub", "Serpent")
local Tab = Window:NewTab("Main")

    -- MAIN

local Section = Tab:NewSection("Player")
Section:NewSlider("Walk Speed", "Changes The Walk Speed", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jump Power", "Changes The Jump Power", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section:NewButton("Noclip", "Press N To Toggle!", function()
    plr = game:service'Players'.LocalPlayer
char = plr.Character
hum = char:FindFirstChildOfClass'Humanoid'
mouse = plr:GetMouse()
on = false

mouse.KeyDown:connect(function(key)
if key == "n" then
if not on then
on = true
elseif on then
on = false
end
end
end)

while wait() do
if char then
hum = char:FindFirstChildOfClass'Humanoid'
end
if on then
hum:ChangeState(11)
end
end
end)
Section:NewButton("Skeleton ESP", "Makes you see skeletons thru walls", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNuggetEater05/ekaMiffutSmodnaR/main/GlobalR6SkeletonESP.lua"))()

shared.BoneESP_Settings = {
Circle_Visible = false,
Circle_Radius = 3,
BoneESP_Color = Color3.fromRGB(255,255,255)
}
end)
Section:NewDropdown("Fly", "DropdownInf", {"Low Speed", "Medium Speed", "High Speed"}, function(currentOption)
    if (currentOption) == "Low Speed" then
        repeat wait()
        until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
     local mouse = game.Players.LocalPlayer:GetMouse()
     repeat wait() until mouse
     local plr = game.Players.LocalPlayer
     local torso = plr.Character.Torso
     local flying = true
     local deb = true
     local ctrl = {f = 0, b = 0, l = 0, r = 0}
     local lastctrl = {f = 0, b = 0, l = 0, r = 0}
     local maxspeed = 150
     local speed = 30
     
     function Fly()
     local bg = Instance.new("BodyGyro", torso)
     bg.P = 9e4
     bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
     bg.cframe = torso.CFrame
     local bv = Instance.new("BodyVelocity", torso)
     bv.velocity = Vector3.new(0,0.1,0)
     bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
     repeat wait()
     plr.Character.Humanoid.PlatformStand = true
     if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
     speed = speed+.5+(speed/maxspeed)
     if speed > maxspeed then
     speed = maxspeed
     end
     elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
     speed = speed-1
     if speed < 0 then
     speed = 0
     end
     end
     if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
     lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
     elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
     else
     bv.velocity = Vector3.new(0,0.1,0)
     end
     bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
     until not flying
     ctrl = {f = 0, b = 0, l = 0, r = 0}
     lastctrl = {f = 0, b = 0, l = 0, r = 0}
     speed = 0
     bg:Destroy()
     bv:Destroy()
     plr.Character.Humanoid.PlatformStand = false
     end
     mouse.KeyDown:connect(function(key)
     if key:lower() == "h" then
     if flying then flying = false
     else
     flying = true
     Fly()
     end
     elseif key:lower() == "w" then
     ctrl.f = 1
     elseif key:lower() == "s" then
     ctrl.b = -1
     elseif key:lower() == "a" then
     ctrl.l = -1
     elseif key:lower() == "d" then
     ctrl.r = 1
     end
     end)
     mouse.KeyUp:connect(function(key)
     if key:lower() == "w" then
     ctrl.f = 0
     elseif key:lower() == "s" then
     ctrl.b = 0
     elseif key:lower() == "a" then
     ctrl.l = 0
     elseif key:lower() == "d" then
     ctrl.r = 0
     end
     end)
     Fly()
    end
end)     
    if (currentOption) == "Medium Speed" then
        repeat wait()
        until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
     local mouse = game.Players.LocalPlayer:GetMouse()
     repeat wait() until mouse
     local plr = game.Players.LocalPlayer
     local torso = plr.Character.Torso
     local flying = true
     local deb = true
     local ctrl = {f = 0, b = 0, l = 0, r = 0}
     local lastctrl = {f = 0, b = 0, l = 0, r = 0}
     local maxspeed = 300
     local speed = 60
     
     function Fly()
     local bg = Instance.new("BodyGyro", torso)
     bg.P = 9e4
     bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
     bg.cframe = torso.CFrame
     local bv = Instance.new("BodyVelocity", torso)
     bv.velocity = Vector3.new(0,0.1,0)
     bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
     repeat wait()
     plr.Character.Humanoid.PlatformStand = true
     if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
     speed = speed+.5+(speed/maxspeed)
     if speed > maxspeed then
     speed = maxspeed
     end
     elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
     speed = speed-1
     if speed < 0 then
     speed = 0
     end
     end
     if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
     lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
     elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
     else
     bv.velocity = Vector3.new(0,0.1,0)
     end
     bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
     until not flying
     ctrl = {f = 0, b = 0, l = 0, r = 0}
     lastctrl = {f = 0, b = 0, l = 0, r = 0}
     speed = 0
     bg:Destroy()
     bv:Destroy()
     plr.Character.Humanoid.PlatformStand = false
     end
     mouse.KeyDown:connect(function(key)
     if key:lower() == "h" then
     if flying then flying = false
     else
     flying = true
     Fly()
     end
     elseif key:lower() == "w" then
     ctrl.f = 1
     elseif key:lower() == "s" then
     ctrl.b = -1
     elseif key:lower() == "a" then
     ctrl.l = -1
     elseif key:lower() == "d" then
     ctrl.r = 1
     end
     end)
     mouse.KeyUp:connect(function(key)
     if key:lower() == "w" then
     ctrl.f = 0
     elseif key:lower() == "s" then
     ctrl.b = 0
     elseif key:lower() == "a" then
     ctrl.l = 0
     elseif key:lower() == "d" then
     ctrl.r = 0
     end
     end)
     Fly()
    end

    if (currentOption) == "High Speed" then
        repeat wait()
        until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
     local mouse = game.Players.LocalPlayer:GetMouse()
     repeat wait() until mouse
     local plr = game.Players.LocalPlayer
     local torso = plr.Character.Torso
     local flying = true
     local deb = true
     local ctrl = {f = 0, b = 0, l = 0, r = 0}
     local lastctrl = {f = 0, b = 0, l = 0, r = 0}
     local maxspeed = 600
     local speed = 120
     
     function Fly()
     local bg = Instance.new("BodyGyro", torso)
     bg.P = 9e4
     bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
     bg.cframe = torso.CFrame
     local bv = Instance.new("BodyVelocity", torso)
     bv.velocity = Vector3.new(0,0.1,0)
     bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
     repeat wait()
     plr.Character.Humanoid.PlatformStand = true
     if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
     speed = speed+.5+(speed/maxspeed)
     if speed > maxspeed then
     speed = maxspeed
     end
     elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
     speed = speed-1
     if speed < 0 then
     speed = 0
     end
     end
     if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
     lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
     elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
     else
     bv.velocity = Vector3.new(0,0.1,0)
     end
     bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
     until not flying
     ctrl = {f = 0, b = 0, l = 0, r = 0}
     lastctrl = {f = 0, b = 0, l = 0, r = 0}
     speed = 0
     bg:Destroy()
     bv:Destroy()
     plr.Character.Humanoid.PlatformStand = false
     end
     mouse.KeyDown:connect(function(key)
     if key:lower() == "h" then
     if flying then flying = false
     else
     flying = true
     Fly()
     end
     elseif key:lower() == "w" then
     ctrl.f = 1
     elseif key:lower() == "s" then
     ctrl.b = -1
     elseif key:lower() == "a" then
     ctrl.l = -1
     elseif key:lower() == "d" then
     ctrl.r = 1
     end
     end)
     mouse.KeyUp:connect(function(key)
     if key:lower() == "w" then
     ctrl.f = 0
     elseif key:lower() == "s" then
     ctrl.b = 0
     elseif key:lower() == "a" then
     ctrl.l = 0
     elseif key:lower() == "d" then
     ctrl.r = 0
     end
     end)
     Fly()
    end
local Section = Tab:NewSection("Aim")
Section:NewButton("Universal Aimbot", "Auto Aim", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herrtt/AimHot-v8/master/Main.lua", true))()
end)
Section:NewButton("Silent Aimbot", "Silent Auto Aim", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/FuXqmMtD'))()
end)


    -- CREDITS

local Tab = Window:NewTab("Credits")
    local Section = Tab:NewSection("TheCasualMan#1585 - Creator")
    local Section = Tab:NewSection("MastersMZ - Scripts")
    local Section = Tab:NewSection("xHeptc - UI")
    local Section = Tab:NewSection("Adams Scripts - DarkHub")
    local Section = Tab:NewSection("Vermillion - Scripts")


    -- MISC

local Tab = Window:NewTab("Misc")
    local Section = Tab:NewSection("Stuff")
    Section:NewButton("Fullbright", "See Better!", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/06iG6YkU", true))()
    end)
    Section:NewButton("Sit", "Makes you sit", function()
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    end)
    Section:NewButton("Lag Switch", "Press X to activate", function()
        loadstring(game:HttpGet("https://paste.gg/p/anonymous/d3492bd620bd4c46b54680ac80b0fa0d/files/161ddd9c992c4ceba3c298458d45188a/raw", true))()
    end)
    Section:NewButton("Invisibility", "Might not work", function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
    end)
    Section:NewButton("Anti AFK", "Might not work", function()
        local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
    end)
    Section:NewButton("infinite Jump", "75 JumpPower Only", function()
        local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 75;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
    end)

        -- OTHER HUBS

local Tab = Window:NewTab("Other Hubs")
    local Section = Tab:NewSection("Universal")
Section:NewButton("DarkHub", "Launch DarkHub", function()
    loadstring(game:HttpGet("http://darkhub.xyz/remote-script.lua", true))()
end)
Section:NewButton("Kat", "Launch KAT Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)
local Section = Tab:NewSection("For Specific Games")
Section:NewButton("Blox Fruits Xenos Hub", "Launch Xenos Hub", function()
    loadstring(game:HttpGet("https://reaperking.xyz/bloxfruit", true))()
end)
Section:NewButton("Blox Fruits Evil Hub", "Launch Evil Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Natthawat69/EvilHub-FREE/main/Script.lua"))()
end)
Section:NewButton("Pet Simulator X [Shiny Tool]", "Launch Shiny Tool", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XLinestX/Shiny-Tool/main/ShinyTool.lua"))()
end)
Section:NewButton("DXH Pet Simulator X", "Launch DXH", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AyfXngSK"))()
end)


setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")
setfflag("CrashUploadToBacktracePercentage", "0")
setfflag("CrashUploadToBacktraceBlackholeToken", "")
setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")