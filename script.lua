local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local VirtualUser = game:GetService("VirtualUser")
local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")

local player = Players.LocalPlayer
local guiName = "SilentAssassinESP_TWKS"

if CoreGui:FindFirstChild(guiName) then
    CoreGui[guiName]:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = guiName
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 260, 0, 200)
MainFrame.Position = UDim2.new(0.5, -130, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(40, 40, 40)
UIStroke.Thickness = 1.5
UIStroke.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 35)
Title.BackgroundTransparency = 1
Title.Text = "TWKS // ASSASSIN"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14
Title.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold)
Title.Parent = MainFrame

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 30, 0, 30)
MinimizeBtn.Position = UDim2.new(1, -35, 0, 3)
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Text = "-"
MinimizeBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
MinimizeBtn.TextSize = 18
MinimizeBtn.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold)
MinimizeBtn.Parent = MainFrame

local CombatContainer = Instance.new("Frame")
CombatContainer.Size = UDim2.new(1, 0, 0, 160)
CombatContainer.Position = UDim2.new(0, 0, 0, 35)
CombatContainer.BackgroundTransparency = 1
CombatContainer.Visible = true
CombatContainer.Parent = MainFrame

local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(0, 240, 0, 36)
ToggleBtn.Position = UDim2.new(0.5, -120, 0, 5)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ToggleBtn.Text = "ESP: OFF"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.TextSize = 13
ToggleBtn.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold)
ToggleBtn.Parent = CombatContainer

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 8)
ToggleCorner.Parent = ToggleBtn

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(50, 50, 50)
ToggleStroke.Thickness = 1
ToggleStroke.Parent = ToggleBtn

local AutoAttackBtn = Instance.new("TextButton")
AutoAttackBtn.Size = UDim2.new(0, 240, 0, 36)
AutoAttackBtn.Position = UDim2.new(0.5, -120, 0, 48)
AutoAttackBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AutoAttackBtn.Text = "AUTO ATTACK: OFF"
AutoAttackBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoAttackBtn.TextSize = 13
AutoAttackBtn.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold)
AutoAttackBtn.Parent = CombatContainer

local AutoAttackCorner = Instance.new("UICorner")
AutoAttackCorner.CornerRadius = UDim.new(0, 8)
AutoAttackCorner.Parent = AutoAttackBtn

local AutoAttackStroke = Instance.new("UIStroke")
AutoAttackStroke.Color = Color3.fromRGB(50, 50, 50)
AutoAttackStroke.Thickness = 1
AutoAttackStroke.Parent = AutoAttackBtn

local AntiLagBtn = Instance.new("TextButton")
AntiLagBtn.Size = UDim2.new(0, 240, 0, 36)
AntiLagBtn.Position = UDim2.new(0.5, -120, 0, 91)
AntiLagBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AntiLagBtn.Text = "ANTI-LAG: OFF"
AntiLagBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiLagBtn.TextSize = 13
AntiLagBtn.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold)
AntiLagBtn.Parent = CombatContainer

local AntiLagCorner = Instance.new("UICorner")
AntiLagCorner.CornerRadius = UDim.new(0, 8)
AntiLagCorner.Parent = AntiLagBtn

local AntiLagStroke = Instance.new("UIStroke")
AntiLagStroke.Color = Color3.fromRGB(50, 50, 50)
AntiLagStroke.Thickness = 1
AntiLagStroke.Parent = AntiLagBtn

local OpenBtn = Instance.new("TextButton")
OpenBtn.Size = UDim2.new(0, 45, 0, 45)
OpenBtn.Position = UDim2.new(0, 20, 0.5, -22)
OpenBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
OpenBtn.Text = "TWKS"
OpenBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenBtn.TextSize = 10
OpenBtn.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold)
OpenBtn.Visible = false
OpenBtn.Active = true
OpenBtn.Draggable = true
OpenBtn.Parent = ScreenGui

local OpenCorner = Instance.new("UICorner")
OpenCorner.CornerRadius = UDim.new(1, 0)
OpenCorner.Parent = OpenBtn

local OpenStroke = Instance.new("UIStroke")
OpenStroke.Color = Color3.fromRGB(255, 255, 255)
OpenStroke.Thickness = 1.5
OpenStroke.Parent = OpenBtn

local espEnabled = false
local autoAttackEnabled = false
local antiLagEnabled = false
local boxes = {}

local function createBox(plr)
    if plr == player then return end
    if not Drawing then return end
    
    local box = Drawing.new("Square")
    box.Visible = false
    box.Thickness = 5
    box.Filled = false
    box.Transparency = 1
    boxes[plr] = box
end

for _, p in ipairs(Players:GetPlayers()) do
    createBox(p)
end

Players.PlayerAdded:Connect(createBox)

Players.PlayerRemoving:Connect(function(plr)
    if boxes[plr] then
        boxes[plr]:Remove()
        boxes[plr] = nil
    end
end)

local savedProperties = {}
local savedSky = nil

local function toggleAntiLag(state)
    antiLagEnabled = state
    if antiLagEnabled then
        AntiLagBtn.Text = "ANTI-LAG: ON"
        AntiLagStroke.Color = Color3.fromRGB(255, 255, 255)
        
        Lighting.GlobalShadows = false
        Lighting.Brightness = 1
        Lighting.Ambient = Color3.fromRGB(128, 128, 128)
        Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        
        for _, obj in ipairs(Lighting:GetChildren()) do
            if obj:IsA("Sky") then
                savedSky = obj
                obj.Parent = nil
            end
        end
        
        local graySky = Instance.new("Sky")
        graySky.Name = "TWKS_GraySky"
        graySky.SkyboxBk = "rbxassetid://6068996615"
        graySky.SkyboxDn = "rbxassetid://6068996615"
        graySky.SkyboxFt = "rbxassetid://6068996615"
        graySky.SkyboxLf = "rbxassetid://6068996615"
        graySky.SkyboxRt = "rbxassetid://6068996615"
        graySky.SkyboxUp = "rbxassetid://6068996615"
        graySky.Parent = Lighting

        if Terrain then
            Terrain.WaterWaveSize = 0
            Terrain.WaterTransparency = 0
            Terrain.WaterReflectance = 0
        end
        
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") then
                savedProperties[obj] = {material = obj.Material, color = obj.Color, reflectance = obj.Reflectance}
                obj.Material = Enum.Material.SmoothPlastic
                obj.Reflectance = 0
            elseif obj:IsA("Texture") or obj:IsA("Decal") then
                obj.Transparency = 1
            elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
                obj.Enabled = false
            end
        end
    else
        AntiLagBtn.Text = "ANTI-LAG: OFF"
        AntiLagStroke.Color = Color3.fromRGB(50, 50, 50)
        
        Lighting.GlobalShadows = true
        Lighting.Brightness = 2
        Lighting.Ambient = Color3.fromRGB(0, 0, 0)
        Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
        
        local graySky = Lighting:FindFirstChild("TWKS_GraySky")
        if graySky then
            graySky:Destroy()
        end
        if savedSky then
            savedSky.Parent = Lighting
            savedSky = nil
        end
        
        for obj, props in pairs(savedProperties) do
            if obj and obj.Parent then
                obj.Material = props.material
                obj.Color = props.color
                obj.Reflectance = props.reflectance
            end
        end
        
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("Texture") or obj:IsA("Decal") then
                obj.Transparency = 0
            elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
                obj.Enabled = true
            end
        end
        savedProperties = {}
    end
end

workspace.DescendantAdded:Connect(function(obj)
    if not antiLagEnabled then return end
    task.spawn(function()
        if obj:IsA("BasePart") then
            task.wait()
            if obj and obj.Parent then
                savedProperties[obj] = {material = obj.Material, color = obj.Color, reflectance = obj.Reflectance}
                obj.Material = Enum.Material.SmoothPlastic
                obj.Reflectance = 0
            end
        elseif obj:IsA("Texture") or obj:IsA("Decal") then
            obj.Transparency = 1
        elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
            obj.Enabled = false
        end
    end)
end)

RunService.RenderStepped:Connect(function()
    local hue = tick() % 5 / 5
    local rainbowColor = Color3.fromHSV(hue, 1, 1)

    if autoAttackEnabled and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local myRoot = player.Character.HumanoidRootPart
        local closestTarget = nil
        local shortestDistance = math.huge

        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChildOfClass("Humanoid") then
                local hum = p.Character:FindFirstChildOfClass("Humanoid")
                if hum.Health > 0 then
                    local targetRoot = p.Character.HumanoidRootPart
                    local dist = (myRoot.Position - targetRoot.Position).Magnitude
                    if dist < shortestDistance then
                        shortestDistance = dist
                        closestTarget = targetRoot
                    end
                end
            end
        end

        if closestTarget and shortestDistance <= 5 then
            pcall(function()
                local cam = workspace.CurrentCamera
                local viewportSize = cam.ViewportSize
                local screenCenter = Vector2.new(viewportSize.X / 2, viewportSize.Y / 2)
                
                VirtualUser:Button1Down(screenCenter)
                task.wait(0.05)
                VirtualUser:Button1Up(screenCenter)
            end)
        end
    end

    for plr, box in pairs(boxes) do
        box.Color = rainbowColor
        local char = plr.Character
        if espEnabled and char then
            local part = char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso") or char:FindFirstChild("HumanoidRootPart")
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            
            if part and humanoid and humanoid.Health > 0 then
                local vector, onScreen = workspace.CurrentCamera:WorldToViewportPoint(part.Position)
                
                if onScreen then
                    local scale = 1 / (vector.Z * math.tan(math.rad(workspace.CurrentCamera.FieldOfView / 2)) * 2) * 1000
                    local size = math.clamp(15 * scale, 8, 50)
                    
                    box.Size = Vector2.new(size, size)
                    box.Position = Vector2.new(vector.X - size / 2, vector.Y - size / 2)
                    box.Visible = true
                else
                    box.Visible = false
                end
            else
                box.Visible = false
            end
        else
            box.Visible = false
        end
    end
end)

ToggleBtn.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    if espEnabled then
        ToggleBtn.Text = "ESP: ON"
        ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleStroke.Color = Color3.fromRGB(255, 255, 255)
    else
        ToggleBtn.Text = "ESP: OFF"
        ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleStroke.Color = Color3.fromRGB(50, 50, 50)
        for _, box in pairs(boxes) do
            box.Visible = false
        end
    end
end)

AutoAttackBtn.MouseButton1Click:Connect(function()
    autoAttackEnabled = not autoAttackEnabled
    if autoAttackEnabled then
        AutoAttackBtn.Text = "AUTO ATTACK: ON"
        AutoAttackBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        AutoAttackStroke.Color = Color3.fromRGB(255, 255, 255)
    else
        AutoAttackBtn.Text = "AUTO ATTACK: OFF"
        AutoAttackBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        AutoAttackStroke.Color = Color3.fromRGB(50, 50, 50)
    end
end)

AntiLagBtn.MouseButton1Click:Connect(function()
    toggleAntiLag(not antiLagEnabled)
end)

MinimizeBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    OpenBtn.Visible = true
end)

OpenBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    OpenBtn.Visible = false
end)