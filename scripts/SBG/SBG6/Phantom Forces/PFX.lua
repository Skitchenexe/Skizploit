--[[
    TO DO LIST:
    -Add/Fix Spot All
]]


if game:GetService('CoreGui'):FindFirstChild('PFX') then 
	game:GetService('CoreGui').PFX:Destroy()
end

if PROTOSMASHER_LOADED and (not shared.repair) then
	warn("Loading ProtoSmasher Fixes, Ty wally and Classy")--credits to wally
	coroutine.wrap(function()
		pcall(function()
			loadstring(game:HttpGet("https://pastebin.com/raw/m8zyuQMv", true))()
		end)
	end)()
	repeat wait() until shared.repair
end

local getgc = (getgc or get_gc_objects);--200 iq for proto ;-;
local getupvalues = (getupvalues or debug.getupvalues);--also 200 for proto
local setupvalue = (setupvalue or debug.setupvalue);--another 200 for proto
local getreg = (getreg or debug.getregistry);

local Windows = {}
local Spotted = {}

local V = Vector3.new()
local Client = {}

for i,v in next, getgc() do
    if network and gamelogic and effects and char then
        break
    end

    if type(v) == "function" then
        for k,x in next, getupvalues(v) do
            if type(x) == "table" then
                for Func, Name in next, x do
                    if Func == "loadgrenade" and "loadgun" then
                        Client.char = x
                    elseif Func == "breakwindows" then
                        Client.effects = x
                    elseif Func == "add" then
                        Client.network = x 
                        Client.Funcs = x
                    end
                end
            end
        end
    end
end

local counter1 = 1
local counter2 = 0
local openups = 1

local cam = workspace.CurrentCamera
local blur = Instance.new("BlurEffect")

blur.Size = 40
blur.Parent = cam
blur.Enabled = true

function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

local Char_Settings = {
    FallDamage = false,
    BreakWindows = false,
    InfJump = false,
    TimescaleMulti = false,
    NoClip = false
}

local walktimescale = {
    MaxSpeed = false
}

local Gun_Settings = {
    NoRecoil = false,
    NoFlash = false,
    NoSway = false,
    NoSpread = false,
    InstaReload = false,
    RapidFire = false,
    FullAuto = false,
    FireRate = false,
    InstaAim = false,
    BulletAcceleration = false
}

local Render_Settings = {
    SpotAll = false,
    Esp = false
}

local in_progress = {
    OneShot = false,
    InfCreds = false,
    InfFrags = false
}


local version = 'v.2.0.5.b'
local Updated = '9/15/19'
local DiscordLink = 'https://discord.gg/MyjGtee'

local GoodStat = 'Hooked, Secured, Ready to use'
local MainFrameFail = 'Failed to hook mainframe'
local HookFuncFail = 'Failed to Hook Functions'
local Failure = 'Failed to Hook func, or Mainframe'

local P = game:GetService'Players'
local client = game:GetService'Players'.LocalPlayer

if Client then
    local LoadGun = Client.char.loadgun
    local LoadFrag = Client.char.loadgrenade

    local Char = Client.char

    local Network = Client.network

    local Effects = Client.effects

    local Send = Network.send

    local spotclients = Client.Funcs.spotplayer

    local function PlayerData()
        for i, v in ipairs(game:GetService'Players':GetPlayers'') do
            if v.TeamColor ~= client.TeamColor then
                table.insert(Spotted, v);
            end;
        end;
        return Spotted
    end
    
        function BreakWindex()--llol
            for i,v in next, workspace:GetDescendants() do
                if v.Name:lower() == "window" then
                    table.insert(Windows,v)
                end
            end
            Effects:breakwindows(Windows)
        end

        do
            if Render_Settings.SpotAll then
                Client.spotclients(PlayerData())
            end
        end

            do
                Network.send = function(self, ...)
                    local Args = {...};
                    if #Args > 0 then
                        local Name = Args[1];
                        if Name == 'changehealthx' then
                            if #Args > 4 and Args[5] == 'Falling' and Char_Settings.FallDamage then
                                return
                            else
                                if args[1] == 'equip' then
                                    openups = args[2]
                                end
                            end
                        end
                        return Send(self, ...)
                    end
                end

            --[[
                [TO DO LIST]
                {finished}
            ]]
            Char.loadgun = function(...)
                local args = {...}
                local data = args[2]
                local data2 = args[1]

                if Gun_Settings.NoRecoil then
                    data.camkickmin = V
                    data.camkickmax = V
                    data.aimcamkickmin = V
                    data.aimcamkickmax = V
                    data.aimtranskickmin = V
                    data.aimtranskickmax = V
                    data.transkickmin = V
                    data.transkickmax = V
                    data.rotkickmin = V
                    data.rotkickmax = V
                    data.aimrotkickmin = V
                    data.aimrotkickmax = V
                end

                if Gun_Settings.NoFlash then
                    data.hideflash = true
                    data.hideminimap = true
                end

                if Gun_Settings.NoSway then
                    data.swayamp = 0
                    data.swayspeed = 0
                    data.steadyspeed = 0
                    data.breathspeed = 0
                end

                if Gun_Settings.NoSpread then
                    data.hipfirespreadrecover = 100
                    data.hipfirespread = 0
                    data.hipfirestability = 0
                end

                if Gun_Settings.RapidFire then
                    data.firerate = 1500
                    data.variablefirerate = false
                    data.firemodes = {true, 3, 1}
                    data.requirechamber = false
                end

                if Gun_Settings.FullAuto then
                    data.variablefirerate = false
                    data.firemodes = {true, 3, 1}
                    data.requirechamber = false
                end

                if Gun_Settings.InstaAim then
                    data.aimspeed = 100
                    data.magnifyspeed = 100
                end

                --[[if Gun_Settings.FireRate then
                    data.firerate = FireRateTXT.Text
                    data.variablefirerate = false
                    data.requirechamber = false
                end]]

                --[[if Gun_Settings.BulletAcceleration then
                    data2.acceleration = V;
                    error'error might of failed to load'
                end]]

                if walktimescale.MaxSpeed then
                    data.walkspeed = 30
                end 

                if Gun_Settings.InstaReload then
                    for i, v in next, data.animations do
						if string.find(string.lower(i), "reload") then
                            data.animations[i].timescale = 0.0
                        elseif string.find(string.lower(i), "pullbolt") then
                            data.animations[i].timescale = 0.0
                        elseif string.find(string.lower(i), "tacticalreload") then
                            data.animations[i].timescale = 0.0
                        elseif string.find(string.lower(i), "onfire") then
                            data.animations[i].timescale = 0.0
                        elseif string.find(string.lower(i), "inspect") then
                            data.animations[i].timescale = 0.0
                        elseif string.find(string.lower(i), "spot") then
                            data.animations[i].timescale = 0.0
                        elseif string.find(string.lower(i), "parkour") then
                            data.animations[i].timescale = 0.0
						end
                    end
                end
            args[2] = data
            return LoadGun(unpack(args))
        end

        local function CreateRegEsp( ... )
            for _,p in pairs(game:GetChildren()) do
                if p.ClassName == ("Players") then
                plrs = p
                end
             end
             wait(0.1)
             for _, v in pairs(plrs:GetChildren()) do
                 if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then
                     i = Instance.new("BillboardGui",v.Character.Head)
                     i.Active = true
                     i.AlwaysOnTop = true
                     i.Size = UDim2.new(1,0,1,0)
                     h = Instance.new("Frame",i)
                     h.Size = UDim2.new(2,0,1,0)
                     h.AnchorPoint = Vector2.new(0.25, 0)
                     h.BackgroundColor3 = Color3.new(1,0,0)
                     h.BorderSizePixel = 0
                     h.BackgroundTransparency = 0.4
                     
                     i2 = Instance.new("BillboardGui",v.Character.Torso)
                     i2.Active = true
                     i2.AlwaysOnTop = true
                     i2.Size = UDim2.new(2,0,2,0)
                     t = Instance.new("Frame",i2)
                     t.Size = UDim2.new(1,0,1,0)
                     t.AnchorPoint = Vector2.new(0, 0)
                     t.BackgroundColor3 = Color3.new(0,1,0)
                     t.BorderSizePixel = 0
                     t.BackgroundTransparency = 0.4
                     
                     i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
                     i3.Active = true
                     i3.AlwaysOnTop = true
                     i3.Size = UDim2.new(1,0,2,0)
                     la = Instance.new("Frame",i3)
                     la.Size = UDim2.new(1,0,1,0)
                     la.AnchorPoint = Vector2.new(0, 0)
                     la.BackgroundColor3 = Color3.new(0,0,1)
                     la.BorderSizePixel = 0
                     la.BackgroundTransparency = 0.4
                     
                     i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
                     i4.Active = true
                     i4.AlwaysOnTop = true
                     i4.Size = UDim2.new(1,0,2,0)
                     ra = Instance.new("Frame",i4)
                     ra.Size = UDim2.new(1,0,1,0)
                     ra.AnchorPoint = Vector2.new(0, 0)
                     ra.BackgroundColor3 = Color3.new(0,0,1)
                     ra.BorderSizePixel = 0
                     ra.BackgroundTransparency = 0.4
                     
                     i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
                     i5.Active = true
                     i5.AlwaysOnTop = true
                     i5.Size = UDim2.new(1,0,2,0)
                     ll = Instance.new("Frame",i5)
                     ll.Size = UDim2.new(1,0,1,0)
                     ll.AnchorPoint = Vector2.new(0, 0)
                     ll.BackgroundColor3 = Color3.new(0,0,1)
                     ll.BorderSizePixel = 0
                     ll.BackgroundTransparency = 0.4

                     i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
                     i6.Active = true
                     i6.AlwaysOnTop = true
                     i6.Size = UDim2.new(1,0,2,0)
                     rl = Instance.new("Frame",i6)
                     rl.Size = UDim2.new(1,0,1,0)
                     rl.AnchorPoint = Vector2.new(0, 0)
                     rl.BackgroundColor3 = Color3.new(0,0,1)
                     rl.BorderSizePixel = 0
                     rl.BackgroundTransparency = 0.4
                 end
             end
        end

        local function RemoveEsp()
            for k, x in next, workspace:GetChildren() do
                for i, v in next, x:GetChildren() do
                    for a, b in next, v:GetChildren() do
                        if b.ClassName == 'BillboardGui' then
                            b:Destroy()
                        end
                    end
                end
            end
        end

        function InfJumpers()--Made by Exploit Revived(Old Lx friend ;-; he quit xd)
            local Player = game:GetService("Players").LocalPlayer;
            local UserInputService = game:GetService("UserInputService");
            local Bricks = {};
            local Space;
            local WalkInAir = false;
            
            UserInputService.InputBegan:Connect(function(
                InputObject,
                GameProcessedEvent
                )
                if (
                    (not GameProcessedEvent) and 
                    (InputObject.UserInputType == Enum.UserInputType.Keyboard)
                ) then
                    if (InputObject.KeyCode == Enum.KeyCode.P) then
                        for Key, Value in next, Bricks do
                            Value:Destroy();
                        end;
                    elseif (InputObject.KeyCode == Enum.KeyCode.Space) then
                        Space = true;
                    elseif (InputObject.KeyCode == Enum.KeyCode.L) then
                        WalkInAir = (not WalkInAir);
                    end;
                end;
            end);

            UserInputService.InputEnded:Connect(function(
                InputObject,
                GameProcessedEvent
                )
                if (
                    (not GameProcessedEvent) and
                    (InputObject.UserInputType == Enum.UserInputType.Keyboard)
                ) then
                    if (InputObject.KeyCode == Enum.KeyCode.Space) then
                        Space = nil;
                    end;
                end;
            end);

            local LastPosition = Vector3.new(0, 0, 0);

            game:GetService("RunService").RenderStepped:Connect(function()
                local PositionChanged;
                local Torso = (
                    Player.Character or
                    Player.CharacterAdded:wait()
                ):WaitForChild("Torso");
                if ((Torso.Position - LastPosition).Magnitude > 0.75) then
                    PositionChanged = true;
                end;

                if (Space or (WalkInAir and PositionChanged)) then
                    local FlyBrick = Instance.new("Part",
                    (
                        Torso:GetChildren()[1] or
                        Torso
                    )
                );

                FlyBrick.Transparency = 1;
                FlyBrick.Anchored = true;

                FlyBrick.CFrame = (
                    Torso.CFrame *
                    CFrame.new(0, -2.25, 0)
                );

                FlyBrick.Size = Vector3.new(5, 0.05, 5);
                FlyBrick.BrickColor = BrickColor.new("Institutional white");
                FlyBrick.Locked = true;
                FlyBrick.TopSurface = Enum.SurfaceType.SmoothNoOutlines;
                FlyBrick.BottomSurface = FlyBrick.TopSurface;
                FlyBrick.RightSurface = FlyBrick.TopSurface;
                FlyBrick.LeftSurface = FlyBrick.TopSurface;
                FlyBrick.FrontSurface = FlyBrick.TopSurface;
                FlyBrick.BackSurface = FlyBrick.TopSurface;
                Bricks[#Bricks + 1] = FlyBrick;
            end;
            LastPosition = Torso.Position;
        end)   
    end



    local PFX = Instance.new("ScreenGui")
    local CharacterFrame = Instance.new("Frame")
    local ClientTitle = Instance.new("TextLabel")
    local Bar4 = Instance.new("Frame")
    local NoFallDamageBTN = Instance.new("TextButton")
    local WalkSpeedSett = Instance.new("TextButton")
    local MaxBTN = Instance.new("TextButton")
    local Toggle = Instance.new("TextLabel")
    local GameSetFrame = Instance.new("Frame")
    local GameTitle = Instance.new("TextLabel")
    local Bar6 = Instance.new("Frame")
    local BreakWindowsBTN = Instance.new("TextButton")
    local Toggle_2 = Instance.new("TextLabel")
    local GunModFrame = Instance.new("Frame")
    local GunTitle = Instance.new("TextLabel")
    local NoFlashBTN = Instance.new("TextButton")
    local NoRecoilBTN = Instance.new("TextButton")
    local NoSwayBTN = Instance.new("TextButton")
    local FullAutoBTN = Instance.new("TextButton")
    local RapidFireBTN = Instance.new("TextButton")
    local InstantReloadBTN = Instance.new("TextButton")
    local InstaAimBTN = Instance.new("TextButton")
    local BulletSpeedBTN = Instance.new("TextButton")
    local NoSpreadBTN = Instance.new("TextButton")
    local Toggle_3 = Instance.new("TextLabel")
    local Bar5 = Instance.new("Frame")
    local RenderFrame = Instance.new("Frame")
    local VisTitle = Instance.new("TextLabel")
    local Bar3 = Instance.new("Frame")
    local ESPBTN = Instance.new("TextButton")
    local SpotAllBTN = Instance.new("TextButton")
    local Toggle_4 = Instance.new("TextLabel")
    local MainTitle = Instance.new("ImageLabel")
    local Version = Instance.new("TextLabel")
    local Credit = Instance.new("TextLabel")
    local MiscFrame = Instance.new("Frame")
    local MiscTitle = Instance.new("TextLabel")
    local Bar7 = Instance.new("Frame")
    local NoClipBTN = Instance.new("TextButton")
    local InfJumpBTN = Instance.new("TextButton")
    local Toggle_5 = Instance.new("TextLabel")
    
    PFX.Name = "PFX"
    PFX.Parent = game.CoreGui
    
    CharacterFrame.Name = "CharacterFrame"
    CharacterFrame.Parent = PFX
    CharacterFrame.Active = true
    CharacterFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    CharacterFrame.BorderSizePixel = 0
    CharacterFrame.Position = UDim2.new(0.24393411, 0, 0.109803259, 0)
    CharacterFrame.Selectable = true
    CharacterFrame.Size = UDim2.new(0, 189, 0, 166)
    
    ClientTitle.Name = "ClientTitle"
    ClientTitle.Parent = CharacterFrame
    ClientTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    ClientTitle.BackgroundTransparency = 1
    ClientTitle.Size = UDim2.new(0, 190, 0, 40)
    ClientTitle.Font = Enum.Font.SourceSans
    ClientTitle.Text = "Character - Client"
    ClientTitle.TextColor3 = Color3.new(1, 1, 1)
    ClientTitle.TextSize = 20
    
    Bar4.Name = "Bar4"
    Bar4.Parent = CharacterFrame
    Bar4.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar4.BorderSizePixel = 0
    Bar4.Position = UDim2.new(0, 0, 0.213989094, 0)
    Bar4.Size = UDim2.new(0, 190, 0, 4)
    
    NoFallDamageBTN.Name = "NoFallDamageBTN"
    NoFallDamageBTN.Parent = CharacterFrame
    NoFallDamageBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoFallDamageBTN.BackgroundTransparency = 1
    NoFallDamageBTN.Position = UDim2.new(0.0156502128, 0, 0.243455589, 0)
    NoFallDamageBTN.Size = UDim2.new(0, 182, 0, 37)
    NoFallDamageBTN.Font = Enum.Font.SourceSans
    NoFallDamageBTN.Text = "[ + ] No Fall Damage: OFF"
    NoFallDamageBTN.TextColor3 = Color3.new(1, 0, 0)
    NoFallDamageBTN.TextSize = 20
    NoFallDamageBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    WalkSpeedSett.Name = "WalkSpeedSett"
    WalkSpeedSett.Parent = CharacterFrame
    WalkSpeedSett.BackgroundColor3 = Color3.new(1, 1, 1)
    WalkSpeedSett.BackgroundTransparency = 1
    WalkSpeedSett.Position = UDim2.new(0.02094125, 0, 0.461659521, 0)
    WalkSpeedSett.Size = UDim2.new(0, 182, 0, 37)
    WalkSpeedSett.Font = Enum.Font.SourceSans
    WalkSpeedSett.Text = "[ X ] Walk Speed Settings"
    WalkSpeedSett.TextColor3 = Color3.new(1, 0, 0)
    WalkSpeedSett.TextSize = 20
    WalkSpeedSett.TextXAlignment = Enum.TextXAlignment.Left
    
    MaxBTN.Name = "MaxBTN"
    MaxBTN.Parent = WalkSpeedSett
    MaxBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    MaxBTN.BackgroundTransparency = 1
    MaxBTN.Position = UDim2.new(0, 0, 0.914083958, 0)
    MaxBTN.Size = UDim2.new(0, 185, 0, 32)
    MaxBTN.Font = Enum.Font.SourceSans
    MaxBTN.Text = "[ + ] Walk Speed: OFF"
    MaxBTN.TextColor3 = Color3.new(1, 0, 0)
    MaxBTN.TextSize = 20
    MaxBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    Toggle.Name = "Toggle"
    Toggle.Parent = CharacterFrame
    Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
    Toggle.BackgroundTransparency = 1
    Toggle.Position = UDim2.new(-0.0105819702, 0, 0.891972661, 0)
    Toggle.Size = UDim2.new(0, 190, 0, 17)
    Toggle.Font = Enum.Font.SourceSans
    Toggle.Text = "Press [ p ] to Toggle"
    Toggle.TextColor3 = Color3.new(1, 0.333333, 0)
    Toggle.TextSize = 14
    
    GameSetFrame.Name = "GameSetFrame"
    GameSetFrame.Parent = PFX
    GameSetFrame.Active = true
    GameSetFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    GameSetFrame.BorderSizePixel = 0
    GameSetFrame.Position = UDim2.new(0.622261167, 0, 0.109803259, 0)
    GameSetFrame.Selectable = true
    GameSetFrame.Size = UDim2.new(0, 190, 0, 93)
    
    GameTitle.Name = "GameTitle"
    GameTitle.Parent = GameSetFrame
    GameTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    GameTitle.BackgroundTransparency = 1
    GameTitle.Size = UDim2.new(0, 190, 0, 40)
    GameTitle.Font = Enum.Font.SourceSans
    GameTitle.Text = "Game - Environment"
    GameTitle.TextColor3 = Color3.new(1, 1, 1)
    GameTitle.TextSize = 20
    
    Bar6.Name = "Bar6"
    Bar6.Parent = GameSetFrame
    Bar6.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar6.BorderSizePixel = 0
    Bar6.Position = UDim2.new(0, 0, 0.385983616, 0)
    Bar6.Size = UDim2.new(0, 190, 0, 4)
    
    BreakWindowsBTN.Name = "BreakWindowsBTN"
    BreakWindowsBTN.Parent = GameSetFrame
    BreakWindowsBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    BreakWindowsBTN.BackgroundTransparency = 1
    BreakWindowsBTN.Position = UDim2.new(0.0578947365, 0, 0.427206963, 0)
    BreakWindowsBTN.Size = UDim2.new(0, 179, 0, 37)
    BreakWindowsBTN.Font = Enum.Font.SourceSans
    BreakWindowsBTN.Text = "[ + ] Break Windows"
    BreakWindowsBTN.TextColor3 = Color3.new(1, 0, 0)
    BreakWindowsBTN.TextSize = 20
    BreakWindowsBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    Toggle_2.Name = "Toggle"
    Toggle_2.Parent = GameSetFrame
    Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Toggle_2.BackgroundTransparency = 1
    Toggle_2.Position = UDim2.new(0, 0, 0.829134226, 0)
    Toggle_2.Size = UDim2.new(0, 190, 0, 15)
    Toggle_2.Font = Enum.Font.SourceSans
    Toggle_2.Text = "Press [ p ] to Toggle"
    Toggle_2.TextColor3 = Color3.new(1, 0.333333, 0)
    Toggle_2.TextSize = 14
    
    GunModFrame.Name = "GunModFrame"
    GunModFrame.Parent = PFX
    GunModFrame.Active = true
    GunModFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    GunModFrame.BorderSizePixel = 0
    GunModFrame.Position = UDim2.new(0.368775636, 0, 0.109803259, 0)
    GunModFrame.Selectable = true
    GunModFrame.Size = UDim2.new(0, 190, 0, 384)
    
    GunTitle.Name = "GunTitle"
    GunTitle.Parent = GunModFrame
    GunTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    GunTitle.BackgroundTransparency = 1
    GunTitle.Size = UDim2.new(0, 190, 0, 40)
    GunTitle.Font = Enum.Font.SourceSans
    GunTitle.Text = "Gun - Modding"
    GunTitle.TextColor3 = Color3.new(1, 1, 1)
    GunTitle.TextSize = 20
    
    NoFlashBTN.Name = "NoFlashBTN"
    NoFlashBTN.Parent = GunModFrame
    NoFlashBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoFlashBTN.BackgroundTransparency = 1
    NoFlashBTN.Position = UDim2.new(0.042105265, 0, 0.207096025, 0)
    NoFlashBTN.Size = UDim2.new(0, 182, 0, 37)
    NoFlashBTN.Font = Enum.Font.SourceSans
    NoFlashBTN.Text = "[ + ] No Flash:  OFF"
    NoFlashBTN.TextColor3 = Color3.new(1, 0, 0)
    NoFlashBTN.TextSize = 20
    NoFlashBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    NoRecoilBTN.Name = "NoRecoilBTN"
    NoRecoilBTN.Parent = GunModFrame
    NoRecoilBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoRecoilBTN.BackgroundTransparency = 1
    NoRecoilBTN.Position = UDim2.new(0.042105265, 0, 0.111985251, 0)
    NoRecoilBTN.Size = UDim2.new(0, 182, 0, 37)
    NoRecoilBTN.Font = Enum.Font.SourceSans
    NoRecoilBTN.Text = "[ + ] No Recoil:  OFF"
    NoRecoilBTN.TextColor3 = Color3.new(1, 0, 0)
    NoRecoilBTN.TextSize = 20
    NoRecoilBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    NoSwayBTN.Name = "NoSwayBTN"
    NoSwayBTN.Parent = GunModFrame
    NoSwayBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoSwayBTN.BackgroundTransparency = 1
    NoSwayBTN.Position = UDim2.new(0.042105265, 0, 0.302027136, 0)
    NoSwayBTN.Size = UDim2.new(0, 182, 0, 37)
    NoSwayBTN.Font = Enum.Font.SourceSans
    NoSwayBTN.Text = "[ + ] No Sway: OFF"
    NoSwayBTN.TextColor3 = Color3.new(1, 0, 0)
    NoSwayBTN.TextSize = 20
    NoSwayBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    FullAutoBTN.Name = "FullAutoBTN"
    FullAutoBTN.Parent = GunModFrame
    FullAutoBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    FullAutoBTN.BackgroundTransparency = 1
    FullAutoBTN.Position = UDim2.new(0.042105265, 0, 0.494117588, 0)
    FullAutoBTN.Size = UDim2.new(0, 182, 0, 37)
    FullAutoBTN.Font = Enum.Font.SourceSans
    FullAutoBTN.Text = "[ + ] Full Auto: OFF"
    FullAutoBTN.TextColor3 = Color3.new(1, 0, 0)
    FullAutoBTN.TextSize = 20
    FullAutoBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    RapidFireBTN.Name = "RapidFireBTN"
    RapidFireBTN.Parent = GunModFrame
    RapidFireBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    RapidFireBTN.BackgroundTransparency = 1
    RapidFireBTN.Position = UDim2.new(0.042105265, 0, 0.588704109, 0)
    RapidFireBTN.Size = UDim2.new(0, 182, 0, 37)
    RapidFireBTN.Font = Enum.Font.SourceSans
    RapidFireBTN.Text = "[ + ] Rapid Fire: OFF"
    RapidFireBTN.TextColor3 = Color3.new(1, 0, 0)
    RapidFireBTN.TextSize = 20
    RapidFireBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    InstantReloadBTN.Name = "InstantReloadBTN"
    InstantReloadBTN.Parent = GunModFrame
    InstantReloadBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    InstantReloadBTN.BackgroundTransparency = 1
    InstantReloadBTN.Position = UDim2.new(0.042105265, 0, 0.683290482, 0)
    InstantReloadBTN.Size = UDim2.new(0, 182, 0, 37)
    InstantReloadBTN.Font = Enum.Font.SourceSans
    InstantReloadBTN.Text = "[ + ] Instant Reload: OFF"
    InstantReloadBTN.TextColor3 = Color3.new(1, 0, 0)
    InstantReloadBTN.TextSize = 20
    InstantReloadBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    InstaAimBTN.Name = "InstaAimBTN"
    InstaAimBTN.Parent = GunModFrame
    InstaAimBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    InstaAimBTN.BackgroundTransparency = 1
    InstaAimBTN.Position = UDim2.new(0.042105265, 0, 0.77837193, 0)
    InstaAimBTN.Size = UDim2.new(0, 182, 0, 36)
    InstaAimBTN.Font = Enum.Font.SourceSans
    InstaAimBTN.Text = "[ + ] Insta Aim: OFF"
    InstaAimBTN.TextColor3 = Color3.new(1, 0, 0)
    InstaAimBTN.TextSize = 20
    InstaAimBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    BulletSpeedBTN.Name = "BulletSpeedBTN"
    BulletSpeedBTN.Parent = GunModFrame
    BulletSpeedBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    BulletSpeedBTN.BackgroundTransparency = 1
    BulletSpeedBTN.Position = UDim2.new(0.042105265, 0, 0.870012462, 0)
    BulletSpeedBTN.Size = UDim2.new(0, 182, 0, 33)
    BulletSpeedBTN.Font = Enum.Font.SourceSans
    BulletSpeedBTN.Text = "[ + ] Bullet Acceleration: OFF"
    BulletSpeedBTN.TextColor3 = Color3.new(1, 0, 0)
    BulletSpeedBTN.TextSize = 18
    BulletSpeedBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    NoSpreadBTN.Name = "NoSpreadBTN"
    NoSpreadBTN.Parent = GunModFrame
    NoSpreadBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoSpreadBTN.BackgroundTransparency = 1
    NoSpreadBTN.Position = UDim2.new(0.042105265, 0, 0.397935271, 0)
    NoSpreadBTN.Size = UDim2.new(0, 182, 0, 37)
    NoSpreadBTN.Font = Enum.Font.SourceSans
    NoSpreadBTN.Text = "[ + ] No Spread: OFF"
    NoSpreadBTN.TextColor3 = Color3.new(1, 0, 0)
    NoSpreadBTN.TextSize = 20
    NoSpreadBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    Toggle_3.Name = "Toggle"
    Toggle_3.Parent = GunModFrame
    Toggle_3.BackgroundColor3 = Color3.new(1, 1, 1)
    Toggle_3.BackgroundTransparency = 1
    Toggle_3.Position = UDim2.new(0, 0, 0.956174374, 0)
    Toggle_3.Size = UDim2.new(0, 190, 0, 16)
    Toggle_3.Font = Enum.Font.SourceSans
    Toggle_3.Text = "Press [ p ] to Toggle"
    Toggle_3.TextColor3 = Color3.new(1, 0.333333, 0)
    Toggle_3.TextSize = 14
    
    Bar5.Name = "Bar5"
    Bar5.Parent = GunModFrame
    Bar5.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar5.BorderSizePixel = 0
    Bar5.Position = UDim2.new(0, 0, 0.0926648602, 0)
    Bar5.Size = UDim2.new(0, 190, 0, 4)
    
    RenderFrame.Name = "RenderFrame"
    RenderFrame.Parent = PFX
    RenderFrame.Active = true
    RenderFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    RenderFrame.BorderSizePixel = 0
    RenderFrame.Position = UDim2.new(0.119092554, 0, 0.109803259, 0)
    RenderFrame.Selectable = true
    RenderFrame.Size = UDim2.new(0, 190, 0, 130)
    
    VisTitle.Name = "VisTitle"
    VisTitle.Parent = RenderFrame
    VisTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    VisTitle.BackgroundTransparency = 1
    VisTitle.Size = UDim2.new(0, 190, 0, 40)
    VisTitle.Font = Enum.Font.SourceSans
    VisTitle.Text = "Visual - Rendering"
    VisTitle.TextColor3 = Color3.new(1, 1, 1)
    VisTitle.TextSize = 20
    
    Bar3.Name = "Bar3"
    Bar3.Parent = RenderFrame
    Bar3.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar3.BorderSizePixel = 0
    Bar3.Position = UDim2.new(0, 0, 0.274296194, 0)
    Bar3.Size = UDim2.new(0, 190, 0, 4)
    
    ESPBTN.Name = "ESPBTN"
    ESPBTN.Parent = RenderFrame
    ESPBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    ESPBTN.BackgroundTransparency = 1
    ESPBTN.Position = UDim2.new(0.036842104, 0, 0.293615371, 0)
    ESPBTN.Size = UDim2.new(0, 183, 0, 37)
    ESPBTN.Font = Enum.Font.SourceSans
    ESPBTN.Text = "[ + ] Esp/Chams: OFF"
    ESPBTN.TextColor3 = Color3.new(1, 0, 0)
    ESPBTN.TextSize = 20
    ESPBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    SpotAllBTN.Name = "SpotAllBTN"
    SpotAllBTN.Parent = RenderFrame
    SpotAllBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    SpotAllBTN.BackgroundTransparency = 1
    SpotAllBTN.Position = UDim2.new(0.036842104, 0, 0.585493505, 0)
    SpotAllBTN.Size = UDim2.new(0, 183, 0, 37)
    SpotAllBTN.Font = Enum.Font.SourceSans
    SpotAllBTN.Text = "[ + ] Spot All:  OFF"
    SpotAllBTN.TextColor3 = Color3.new(1, 0, 0)
    SpotAllBTN.TextSize = 20
    SpotAllBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    Toggle_4.Name = "Toggle"
    Toggle_4.Parent = RenderFrame
    Toggle_4.BackgroundColor3 = Color3.new(1, 1, 1)
    Toggle_4.BackgroundTransparency = 1
    Toggle_4.Position = UDim2.new(0, 0, 0.873460531, 0)
    Toggle_4.Size = UDim2.new(0, 190, 0, 17)
    Toggle_4.Font = Enum.Font.SourceSans
    Toggle_4.Text = "Press [ p ] to Toggle"
    Toggle_4.TextColor3 = Color3.new(1, 0.333333, 0)
    Toggle_4.TextSize = 14
    
    MainTitle.Name = "MainTitle"
    MainTitle.Parent = PFX
    MainTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    MainTitle.BackgroundTransparency = 1
    MainTitle.Position = UDim2.new(-0.0418251529, 0, 0.791569054, 0)
    MainTitle.Size = UDim2.new(0, 451, 0, 245)
    MainTitle.Image = "rbxassetid://3632679485"
    
    Version.Name = "Version"
    Version.Parent = PFX
    Version.BackgroundColor3 = Color3.new(1, 1, 1)
    Version.BackgroundTransparency = 1
    Version.Position = UDim2.new(0.133713543, 0, 0.914519906, 0)
    Version.Size = UDim2.new(0, 200, 0, 50)
    Version.Font = Enum.Font.SourceSans
    Version.Text = "v.2.0.5.b"
    Version.TextColor3 = Color3.new(1, 1, 1)
    Version.TextSize = 18
    Version.TextWrapped = true
    
    Credit.Name = "Credit"
    Credit.Parent = PFX
    Credit.BackgroundColor3 = Color3.new(1, 1, 1)
    Credit.BackgroundTransparency = 1
    Credit.Position = UDim2.new(0.0373890959, 0, 0.914519906, 0)
    Credit.Size = UDim2.new(0, 200, 0, 50)
    Credit.Font = Enum.Font.SourceSans
    Credit.Text = "Made by ThisW0ntGetBanned"
    Credit.TextColor3 = Color3.new(0.333333, 1, 0)
    Credit.TextSize = 14
    
    MiscFrame.Name = "MiscFrame"
    MiscFrame.Parent = PFX
    MiscFrame.Active = true
    MiscFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    MiscFrame.BorderSizePixel = 0
    MiscFrame.Position = UDim2.new(0.495518357, 0, 0.109803259, 0)
    MiscFrame.Selectable = true
    MiscFrame.Size = UDim2.new(0, 190, 0, 139)
    
    MiscTitle.Name = "MiscTitle"
    MiscTitle.Parent = MiscFrame
    MiscTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    MiscTitle.BackgroundTransparency = 1
    MiscTitle.Size = UDim2.new(0, 190, 0, 40)
    MiscTitle.Font = Enum.Font.SourceSans
    MiscTitle.Text = "Misc - Random"
    MiscTitle.TextColor3 = Color3.new(1, 1, 1)
    MiscTitle.TextSize = 20
    
    Bar7.Name = "Bar7"
    Bar7.Parent = MiscFrame
    Bar7.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar7.BorderSizePixel = 0
    Bar7.Position = UDim2.new(0, 0, 0.256332487, 0)
    Bar7.Size = UDim2.new(0, 190, 0, 4)
    
    NoClipBTN.Name = "NoClipBTN"
    NoClipBTN.Parent = MiscFrame
    NoClipBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoClipBTN.BackgroundTransparency = 1
    NoClipBTN.Position = UDim2.new(0.0473684222, 0, 0.306504816, 0)
    NoClipBTN.Size = UDim2.new(0, 182, 0, 37)
    NoClipBTN.Font = Enum.Font.SourceSans
    NoClipBTN.Text = "[ + ] NoClip:  OFF"
    NoClipBTN.TextColor3 = Color3.new(1, 0, 0)
    NoClipBTN.TextSize = 20
    NoClipBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    InfJumpBTN.Name = "InfJumpBTN"
    InfJumpBTN.Parent = MiscFrame
    InfJumpBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    InfJumpBTN.BackgroundTransparency = 1
    InfJumpBTN.Position = UDim2.new(0.0473684222, 0, 0.567258239, 0)
    InfJumpBTN.Size = UDim2.new(0, 182, 0, 37)
    InfJumpBTN.Font = Enum.Font.SourceSans
    InfJumpBTN.Text = "[ + ] Inf Jump: OFF"
    InfJumpBTN.TextColor3 = Color3.new(1, 0, 0)
    InfJumpBTN.TextSize = 20
    InfJumpBTN.TextXAlignment = Enum.TextXAlignment.Left
    
    Toggle_5.Name = "Toggle"
    Toggle_5.Parent = MiscFrame
    Toggle_5.BackgroundColor3 = Color3.new(1, 1, 1)
    Toggle_5.BackgroundTransparency = 1
    Toggle_5.Position = UDim2.new(0, 0, 0.872204423, 0)
    Toggle_5.Size = UDim2.new(0, 190, 0, 17)
    Toggle_5.Font = Enum.Font.SourceSans
    Toggle_5.Text = "Press [ p ] to Toggle"
    Toggle_5.TextColor3 = Color3.new(1, 0.333333, 0)
    Toggle_5.TextSize = 14    

    CharacterFrame.Draggable = true
    GameSetFrame.Draggable = true
    RenderFrame.Draggable = true
    GunModFrame.Draggable = true
    MiscFrame.Draggable = true

        if Client then
            print('Functionality Status : '..tostring(GoodStat))--yes ik the console automatically makes it to a string lol.
        end

        if not Client then
            print('Functionality Status : '..tostring(MainFrameFail))
        end

        if not Client and not Network then
            print('Functionality Status : '..tostring(Failure))
        end

        warn('Discord: '..tostring(DiscordLink))
        warn('Last Updated: '..tostring(Updated))
        warn('Version: '..tostring(version))
        
        --Visual/Rendering shit--
        ESPBTN.MouseButton1Click:connect(function()
            Render_Settings.Esp = not Render_Settings.Esp 
            if Render_Settings.Esp then
                ESPBTN.Text = "[ + ] Esp/Chams: ON"
                ESPBTN.TextColor3 = Color3.new(0,185,0)
                CreateRegEsp()
            else
                ESPBTN.Text = "[ + ] Esp/Chams: OFF"
                ESPBTN.TextColor3 = Color3.new(170,0,0)
                RemoveEsp()
            end
        end)
        
        SpotAllBTN.MouseButton1Click:connect(function()
            Render_Settings.SpotAll = not Render_Settings.SpotAll 
            if Render_Settings.SpotAll then
                SpotAllBTN.Text = '[ + ] Spot All: ON'
                SpotAllBTN.TextColor3 = Color3.new(0,185,0)
            else
                SpotAllBTN.Text = '[ + ] Spot All: OFF'
                SpotAllBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        --Character/Client shit--
        NoFallDamageBTN.MouseButton1Click:connect(function()
            Char_Settings.FallDamage = not Char_Settings.FallDamage
            if Char_Settings.FallDamage then
                NoFallDamageBTN.Text = '[ + ] No Fall Damage: ON'
                NoFallDamageBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoFallDamageBTN.Text = '[ + ] No Fall Damage: OFF'
                NoFallDamageBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        InfJumpBTN.MouseButton1Click:connect(function()
            Char_Settings.InfJump = not Char_Settings.InfJump 
            if Char_Settings.InfJump then
                InfJumpers()
                InfJumpBTN.Text = '[ + ] Inf Jump: ON'
                InfJumpBTN.TextColor3 = Color3.new(0,185,0)
            else
                InfJumpBTN.Text = '[ + ] Inf Jump: OFF'
                InfJumpBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        NoClipBTN.MouseButton1Click:connect(function()
            if NoClipBTN.Text == "[ + ] NoClip: OFF" then
                Char_Settings.NoClip = true
                NoClipBTN.Text = "[ + ] NoClip: ON"
                NoClipBTN.TextColor3 = Color3.new(0,185,0)
                Stepped = game:GetService("RunService").Stepped:Connect(function()
                    if not Char_Settings.NoClip == false then
                        for a, b in pairs(Workspace:GetChildren()) do
                            for i, v in pairs(Workspace[client.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    else
                        Stepped:Disconnect()
                    end
                end)
            elseif NoClipBTN.Text == "[ + ] NoClip: ON" then
                Char_Settings.NoClip = false
                NoClipBTN.Text = "[ + ] NoClip: OFF"
                NoClipBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)

        --Client Speeding--

        MaxBTN.MouseButton1Click:connect(function()
            walktimescale.MaxSpeed = not walktimescale.MaxSpeed
            if walktimescale.MaxSpeed then
                MaxBTN.Text = '[ + ] Walk Speed: ON'
                MaxBTN.TextColor3 = Color3.new(0, 185, 0)
            else
                MaxBTN.Text = '[ + ] Walk Speed: OFF'
                MaxBTN.TextColor3 = Color3.new(170, 0, 0)
            end
        end)
        
        --Gun Modding shit--
        
        NoFlashBTN.MouseButton1Click:connect(function()
            Gun_Settings.NoFlash = not Gun_Settings.NoFlash
            if Gun_Settings.NoFlash then
                NoFlashBTN.Text = '[ + ] No Flash: ON'
                NoFlashBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoFlashBTN.Text = '[ + ] No Flash: OFF'
                NoFlashBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        NoRecoilBTN.MouseButton1Click:connect(function()
            Gun_Settings.NoRecoil = not Gun_Settings.NoRecoil
            if Gun_Settings.NoRecoil then
                NoRecoilBTN.Text = '[ + ] No Recoil: ON'
                NoRecoilBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoRecoilBTN.Text = '[ + ] No Recoil: OFF'
                NoRecoilBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)

        NoSpreadBTN.MouseButton1Click:connect(function()
            Gun_Settings.NoSpread = not Gun_Settings.NoSpread
            if Gun_Settings.NoSpread then
                NoSpreadBTN.Text = '[ + ] No Spread: ON'
                NoSpreadBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoSpreadBTN.Text = '[ + ] No Spread: OFF'
                NoSpreadBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        NoSwayBTN.MouseButton1Click:connect(function()
            Gun_Settings.NoSway = not Gun_Settings.NoSway
            if Gun_Settings.NoSway then
                NoSwayBTN.Text = '[ + ] No Sway: ON'
                NoSwayBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoSwayBTN.Text = '[ + ] No Sway: OFF'
                NoSwayBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        FullAutoBTN.MouseButton1Click:connect(function()
            Gun_Settings.FullAuto = not Gun_Settings.FullAuto
            if Gun_Settings.FullAuto then
                FullAutoBTN.Text = '[ + ] Full Auto: ON'
                FullAutoBTN.TextColor3 = Color3.new(0,185,0)
            else
                FullAutoBTN.Text = '[ + ] Full Auto: OFF'
                FullAutoBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        RapidFireBTN.MouseButton1Click:connect(function()
            Gun_Settings.RapidFire = not Gun_Settings.RapidFire
            if Gun_Settings.RapidFire then
                RapidFireBTN.Text = '[ + ] Rapid Fire: ON'
                RapidFireBTN.TextColor3 = Color3.new(0,185,0)
            else
                RapidFireBTN.Text = '[ + ]Rapid Fire: OFF'
                RapidFireBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        InstantReloadBTN.MouseButton1Click:connect(function()
            Gun_Settings.InstaReload = not Gun_Settings.InstaReload
            if Gun_Settings.InstaReload then
                InstantReloadBTN.Text = '[ + ] Instant Reload: ON'
                InstantReloadBTN.TextColor3 = Color3.new(0,185,0)
            else
                InstantReloadBTN.Text = '[ + ] Instant Reload: OFF'
                InstantReloadBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        BulletSpeedBTN.MouseButton1Click:connect(function()
            Gun_Settings.BulletAcceleration = not Gun_Settings.BulletAcceleration
            if Gun_Settings.BulletAcceleration then
                BulletSpeedBTN.Text = '[ + ] Bullet Acceleration: ON'
                BulletSpeedBTN.TextColor3 = Color3.new(0,185,0)
            else
                BulletSpeedBTN.Text = '[ + ] Bullet Acceleration: OFF'
                BulletSpeedBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)

        InstaAimBTN.MouseButton1Click:connect(function()
            Gun_Settings.InstaAim = not Gun_Settings.InstaAim 
            if Gun_Settings.InstaAim then
                InstaAimBTN.Text = '[ + ] Insta Aim: ON'
                InstaAimBTN.TextColor3 = Color3.new(0,185,0)
            else
                InstaAimBTN.Text = '[ + ] Insta Aim: OFF'
                InstaAimBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        -- game shit --
        
        BreakWindowsBTN.MouseButton1Click:connect(function()
            Char_Settings.BreakWindows = not Char_Settings.BreakWindows
            if Char_Settings.BreakWindows then
                BreakWindex()
            end
        end)
        -- hoool up lmao --

        game:GetService("UserInputService").InputBegan:Connect(function(key,ischat)
            if ischat then return end
            if key.KeyCode == Enum.KeyCode.P then
                PFX.Enabled = not PFX.Enabled
                blur.Enabled = not blur.Enabled
            end
        end)

        while wait() do
            MainTitle.ImageColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar3.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar4.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar5.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar6.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar7.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            WalkSpeedSett.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            counter1 = counter1 + 0.01
        end
    end
end