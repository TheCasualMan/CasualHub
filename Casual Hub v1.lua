local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Casual Hub", "BloodTheme")
local Tab = Window:NewTab("Main")

    -- MAIN

local Section = Tab:NewSection("Player")
Section:NewSlider("Walk Speed", "Changes The Walk Speed", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jump Power", "Changes The Jump Power", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section:NewButton("Skeleton ESP", "Makes you see skeletons thru walls", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNuggetEater05/ekaMiffutSmodnaR/main/GlobalR6SkeletonESP.lua"))()

shared.BoneESP_Settings = {
Circle_Visible = false,
Circle_Radius = 3,
BoneESP_Color = Color3.fromRGB(255,255,255)
}
end)

    -- CREDITS

local Tab = Window:NewTab("Credits")
    local Section = Tab:NewSection("TheCasualMan#1585 - Creator")
    local Section = Tab:NewSection("MastersMZ - Some Scripts")
    local Section = Tab:NewSection("xHeptc - UI")


    -- MISC

local Tab = Window:NewTab("Misc")
    local Section = Tab:NewSection("Troll")
    Section:NewButton("Sit", "Makes you sit", function()
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    end)
    Section:NewButton("Lag Switch", "Press X to activate", function()
        loadstring(game:HttpGet("https://paste.gg/p/anonymous/d3492bd620bd4c46b54680ac80b0fa0d/files/161ddd9c992c4ceba3c298458d45188a/raw", true))()
    end)
    Section:NewButton("Invisibility", "Might not work", function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
    end)
        Section:NewButton("HeadLess", "Might not work", function()
            local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end)