local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/jncashhchisdhhuijlc/uilib/main/uilibsa"))()
Window = Library.Main("Said Client","RightControl")

local Tab = Window.NewTab("Main")

local Section = Tab.NewSection("Auto Farm can bug/lag.")

local Section = Tab.NewSection("Level")

local EnabledToggle = Section.NewToggle("Auto Farm",function(bool)
local lp = game.Players.LocalPlayer
local function getNPC()
    local dist, thing = math.huge
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if v.Name == "Fishman Karate User" then
            local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
            if mag < dist then 
                dist = mag 
                thing = v 
            end
        end
    end
    return thing
end

local TweenService = game:GetService("TweenService")
local noclipE = false
local antifall = false
 
local function noclip()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
        end
    end
end
 
local function moveto(obj, speed)
    local info = TweenInfo.new(((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - obj.Position).Magnitude)/ speed,Enum.EasingStyle.Linear)
    local tween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, info, {CFrame = obj})
 
    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        antifall.Velocity = Vector3.new(0,-12,0)
        noclipE = game:GetService("RunService").Stepped:Connect(noclip)
        tween:Play()
    end
 
    tween.Completed:Connect(function()
        antifall:Destroy()
        noclipE:Disconnect()
    end)
end
 
getgenv().bandit = bool --Toggle here
while bandit do task.wait()
    pcall(function()
    moveto(getNPC().HumanoidRootPart.CFrame + Vector3.new(0,-12,0), 45)
    end)
end
end,false) -- "true" is the default value of toggle

local Button = Section.NewButton("Fishman Hitbox",function()
    
    _G.Npchitbox = true
while _G.Npchitbox == true do
    wait (5)
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if v.Name == "Fishman Karate User" then --npc name
        v.HumanoidRootPart.Size = Vector3.new(20, 25, 20)
        v.HumanoidRootPart.Transparency = 0.9
            end
        end
    end
end)

local Button = Section.NewButton("Auto Click",function()
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Said Client | Auto Click", Text = "K = Enabled : P = Disabled."})
    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
        if key == "k" then
            _G.autoclickc = true
                while _G.autoclickc == true and wait() do
                    mouse1click()
                    mouse1release()
                end
            else
                if key == "p" then
                _G.autoclickc = false
            end
        end
    end)
end)

local Button = Section.NewButton("Instantly Fishman TP",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(5639.86865, -92.762001, -16611.4688, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    pl.CFrame = location
end)

local Button = Section.NewButton("Auto Farm Chest",function()

local teleport_table = {
    location1 = Vector3.new(1031.52283, 88.382988, 1028.06555, -0.963093281, 3.52461638e-09, 0.269167811, 2.20138858e-08, 1, 6.56720758e-08, -0.269167811, 6.91737654e-08, -0.963093281), -- your desired position
    location2 = Vector3.new(1031.52283, 88.382988, 1028.06555, -0.963093281, 3.52461638e-09, 0.269167811, 2.20138858e-08, 1, 6.56720758e-08, -0.269167811, 6.91737654e-08, -0.963093281)  -- your desired position
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function bypass_teleport(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        a.Completed:Wait()
        print('Teleporting Done!')
    end
end

bypass_teleport(teleport_table.location1)

wait(5)
local teleport_table = {
    location1 = Vector3.new(897.580078, 88.0999603, 1024.56116, 0.625364721, 0, 0.780332625, -0, 1, -0, -0.780332625, 0, 0.625364721), -- your desired position
    location2 = Vector3.new(897.580078, 88.0999603, 1024.56116, 0.625364721, 0, 0.780332625, -0, 1, -0, -0.780332625, 0, 0.625364721)  -- your desired position
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function bypass_teleport(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        a.Completed:Wait()
        print('Teleporting Done!')
    end
end

bypass_teleport(teleport_table.location1)
wait(5)
local teleport_table = {
    location1 = Vector3.new(1025.67542, 55.9999809, 1388.5979, 0.976508081, 8.22335477e-10, 0.21548076, 1.80727144e-09, 1, -1.2006411e-08, -0.21548076, 1.211379e-08, 0.976508081), -- your desired position
    location2 = Vector3.new(1025.67542, 55.9999809, 1388.5979, 0.976508081, 8.22335477e-10, 0.21548076, 1.80727144e-09, 1, -1.2006411e-08, -0.21548076, 1.211379e-08, 0.976508081)  -- your desired position
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function bypass_teleport(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        a.Completed:Wait()
        print('Teleporting Done!')
    end
end
bypass_teleport(teleport_table.location1)
end)

local Section = Tab.NewSection("Stats")
local DisabledToggle = Section.NewToggle("Auto Stats Gun",function(bool)
    _G.autostats = bool
    while _G.autostats == true do
        wait (0.1)
    game:GetService("ReplicatedStorage").Events.stats:FireServer("GunMastery")
    end
end,false)

local DisabledToggle = Section.NewToggle("Auto Stats Sword",function(bool)
    _G.autostats = bool
    while _G.autostats == true do
        wait (0.1)
    game:GetService("ReplicatedStorage").Events.stats:FireServer("SwordMastery")
    end
end,false)

local Section = Tab.NewSection("Rifle Farm")

local EnabledToggle = Section.NewToggle("Rifle Kill (Only 1 Fishman User)",function(bool)
    _G.rk = bool

    while _G.rk == true do
        wait(1)
    local args = {
        [1] = "reload",
        [2] = {
            ["Gun"] = "Rifle"
        }
    }

    game:GetService("ReplicatedStorage").Events.CIcklcon.gunFunctions:InvokeServer(unpack(args))

    local args = {
        [1] = "fire",
        [2] = {
            ["Start"] = CFrame.new(7486.12939453125, -2148.64404296875, -17312.888671875) * CFrame.Angles(1.472740888595581, -0.11135412007570267, 1.2792150974273682),
            ["Gun"] = "Rifle",
            ["joe"] = "true",
            ["Position"] = Vector3.new(7729.64892578125, -2179.90625, -17286.951171875)
        }
    }

    game:GetService("ReplicatedStorage").Events.CIcklcon:FireServer(unpack(args))
    end
end,false)

local Section = Tab.NewSection("Sword Farm")


local EnabledToggle = Section.NewToggle("Equip Katana",function(bool)
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Said Client | Enable Auto Click", Text = "K = Enabled : P = Disabled."})
    _G.kat = bool    
        
    while _G.kat == true and wait(0.1) do
    local plr = game.Players.LocalPlayer
    if plr:FindFirstChild("Backpack") and
        plr.Backpack:FindFirstChild("Katana")
            then
                plr.Character.Humanoid:EquipTool(plr.Backpack.Katana)
            else
                -- nothing
            end
        end
end,false)

local Tab = Window.NewTab("Player")

local Section = Tab.NewSection("Local Player")

local Button = Section.NewButton("Lag Switch (F3)", function()
    local ass = false
local bitch = settings()

game:service "UserInputService".InputEnded:connect(
    function(i)
        if i.KeyCode == Enum.KeyCode.F3 then
            ass = not ass
            bitch.Network.IncomingReplicationLag = ass and 10 or 0
        end
    end
)
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = HttpService:JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs))
                    wait()
                    TeleportService:TeleportToPlaceInstance(PlaceID, ID, Player)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport()
end)

local Button = Section.NewButton("Anti Grip", function()
    while true do
        for i,v in pairs(game:GetService("Workspace").Ragdolls:WaitForChild(game.Players.LocalPlayer.Name):GetChildren()) do
            if  v:IsA("ObjectValue") or v:IsA("BoolValue")  then
                v:Destroy()
                end
            end
        wait()
    end
    
    local RunService = game:GetService("RunService")
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    
    RunService.Heartbeat:Connect(function()
        humanoid.Health = 300
        wait()
    end)
end)

local Button = Section.NewButton("Infinite Jump (H)", function()
_G.infinjump = true
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "h" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
end)

local Button = Section.NewButton("Speed (G)",function()
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
    UIS.InputBegan:connect(function(UserInput)
            if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.G then
                _G.Running = true
                    while wait(0.05) and _G.Running == true do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1.2
            end
        end
    end)
UIS.InputEnded:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.G then
            _G.Running = false
        end
    end)
end)

local Button = Section.NewButton("No Stamina Drain",function()
    local X;
    local func;
    local script = game.Players.LocalPlayer.Backpack.Movements
    X = hookmetamethod(game, "__namecall", function(self, ...)
       if tostring(self) == "takestam" then
           return;
       end
       return X(self, ...)
    end)
    for i,v in pairs(getreg()) do
       if type(v) == 'function' and getfenv(v).script then
           if getfenv(v).script == script then
               local upvalues = getupvalues(v)
               if tostring(upvalues[12]) == "Ragdolls" then
                   func = v
               end
           end
       end
    end
    spawn(function()
       while wait() do
           setupvalue(func, 6, false)
            end
        end)
end)

local Button = Section.NewButton("No Clip",function()
    local player = game.Players.LocalPlayer

for _, child in pairs(player.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true then
        child.CanCollide = false
    end
end
end)

local Button = Section.NewButton("No Clip Reset",function()
    local plr = game.Players.LocalPlayer
    plr.Character.Humanoid:ChangeState(14)
end)

local Tab = Window.NewTab("Battle Royale")

local Section = Tab.NewSection("Visuals")

local Button = Section.NewButton("Player ESP",function()
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")
    
    local function getdistancefc(part)
        return (part.Position - c.CFrame.Position).Magnitude
    end
    
    local function esp(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")
    
        local text = Drawing.new("Text")
        text.Visible = false
        text.Center = true 
        text.Outline = true 
        text.Font = 0
        text.Color = Color3.fromRGB(193, 0, 197)
        text.Size = 14
    
        local c1 
        local c2 
        local c3 
    
        local function dc()
            text.Visible = false
            text:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil 
            end
            if c2 then
                c2:Disconnect()
                c2 = nil 
            end
            if c3 then
                c3:Disconnect()
                c3 = nil 
            end
        end
    
        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)
    
        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end)
    
        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_os = c:WorldToViewportPoint(hrp.Position)
            if hrp_os then
                text.Position = Vector2.new(hrp_pos.X,hrp_pos.Y)
                text.Text = p.Name .. ' | '..tostring(math.floor(getdistancefc(hrp)))..' Meters'
                text.Visible = true 
            else
                text.Visible = false 
            end
        end)
    end
    
    local function p_added(p)
        if p.Character then
            esp(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esp(p,cr)
        end)
    end
    
    
    for i,p in next, ps:GetPlayers() do 
        if p ~= lp then
            p_added(p)
        end
    end
    
    ps.PlayerAdded:Connect(p_added)
end)

local Button = Section.NewButton("Rare Chest Esp",function()
local EspFolder = Instance.new("Folder",game.CoreGui)
        EspFolder.Name = "ChestEspFolder"
        modelsWithEsp = {} 
        while wait() do
            wait()
            for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
                if v.ClassName == "Model" and not modelsWithEsp[v] then 
                    local Chest = v:FindFirstChildOfClass("MeshPart")
                    if Chest and Chest.MeshId == "rbxassetid://10788852296" then
                        local esp = Instance.new("BoxHandleAdornment",EspFolder)
                        esp.Adornee = v
                        esp.ZIndex = 0
                        esp.Size = Vector3.new(4, 5, 1)
                        esp.Transparency = 0.65
                        esp.Color3 = Color3.fromRGB(193, 0, 197)
                        esp.AlwaysOnTop = true
                        esp.Name = "Rare Chest"
                        modelsWithEsp[v] = true 
                    end
                end
            end
        end
    end)

local Button = Section.NewButton("Legendary Esp",function()
local EspFolder = Instance.new("Folder",game.CoreGui)
EspFolder.Name = "ChestEspFolder"
modelsWithEsp = {} 
while wait() do
    wait()
        for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
            if v.ClassName == "Model" and not modelsWithEsp[v] then
                local Chest = v:FindFirstChildOfClass("MeshPart")
                if Chest and Chest.MeshId == "rbxassetid://10798559852" then
                    local esp = Instance.new("BoxHandleAdornment",EspFolder)
                    esp.Adornee = v
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(1, 124, 255)
                    esp.AlwaysOnTop = true
                    esp.Name = "Legendary Chest"
                    modelsWithEsp[v] = true 
                end
            end
        end
    end
end)

local Button = Section.NewButton("Mythical Esp",function()
local EspFolder = Instance.new("Folder",game.CoreGui)
EspFolder.Name = "ChestEspFolder"
modelsWithEsp = {} 
while wait() do
    wait()
        for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
            if v.ClassName == "Model" and not modelsWithEsp[v] then
                local Chest = v:FindFirstChildOfClass("MeshPart")
                if Chest and Chest.MeshId == "rbxassetid://10811929054" then
                    local esp = Instance.new("BoxHandleAdornment",EspFolder)
                    esp.Adornee = v
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(255, 165, 0)
                    esp.AlwaysOnTop = true
                    esp.Name = "Mythical Chest"
                    modelsWithEsp[v] = true 
                end
            end
        end
    end
end)

local Section = Tab.NewSection("Risky Stuff")

local EnabledToggle = Section.NewToggle("No Cooldown Rapid Slashes",function(bool)
    _G.infslash = bool
    while _G.infslash == true do
        wait (0.1)
    game:GetService("ReplicatedStorage").Events.Skill:InvokeServer("Rapid Slashes")
    end
end,false)

local EnabledToggle = Section.NewToggle("No Cooldown BlackLeg",function(bool)
    _G.ptkc = bool
    while _G.ptkc == true do
        wait (0.1)
    game:GetService("ReplicatedStorage").Events.Skill:InvokeServer("Party Table Kick Course")
    end
end,false)

local Button = Section.NewButton("Hitbox Extender",function()
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Hitbox Working!", Text = "T = Enabled : P = disabled."})
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

-- Settings
-- Leave "bind" empty
bind = ""
bind2 = "t"
bind3 = "p"

-- Script

mouse.KeyDown:connect(function(key)
if key == bind then
player.Character.HumanoidRootPart.CFrame = CFrame.new(1254.09656, 137.906067, -172.128204)
end
end)

mouse.KeyDown:connect(function(key2)
if key2 == bind2 then
_G.HeadSize = 20
_G.Disabled = true


if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.9
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
v.Character.HumanoidRootPart.Material = "Plastic"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end
end)

mouse.KeyDown:connect(function(key3)
if key3 == bind3 then
_G.HeadSize = 7
_G.Disabled = true


for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
v.Character.HumanoidRootPart.Transparency = 1
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
v.Character.HumanoidRootPart.Material = "Plastic"
v.Character.HumanoidRootPart.CanCollide = true
end)
end
end
end
end)
end)

local Tab = Window.NewTab("World Stuff")

local Section = Tab.NewSection("World")

local Button = Section.NewButton("FPS Boost",function()
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = 0
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(w:GetDescendants()) do
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted  then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.Graphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end
for i = 1,#l:GetChildren() do
    e=l:GetChildren()[i]
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
w.DescendantAdded:Connect(function(v)
    wait()--prevent errors and shit
   if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.ShirtGraphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end)
end)

local Tab = Window.NewTab("Settings")

local Section = Tab.NewSection("User Settings")

local Button = Section.NewButton("Server Hop",function()
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)

    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)

coroutine.resume(Rejoin)
end)

local Button = Section.NewButton("Join Private Server",function()
    _G.join = true
    
    while _G.join == true do
        wait(0.1)
    game:GetService("ReplicatedStorage").Events.reserved:InvokeServer("TYt3QjtN9n") 
    game:GetService("Players").LocalPlayer.PlayerGui.chooseType.Frame.RemoteEvent:FireServer(true)
    end
end)