
local HopGui = Instance.new("ScreenGui")
local HopFrame = Instance.new("Frame")
local NameHub = Instance.new("TextLabel")
local UIStroke = Instance.new("UIStroke")
local HopIn = Instance.new("TextLabel")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local Reason = Instance.new("TextLabel")
local ClickTo = Instance.new("TextLabel")
local ButtonCall = Instance.new("TextButton")

HopGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HopGui.Name = "HopGui"
HopGui.Parent = game:GetService("CoreGui")
HopGui.Enabled = true

HopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
HopFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HopFrame.BackgroundTransparency = 0.9990000128746033
HopFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
HopFrame.BorderSizePixel = 0
HopFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
HopFrame.Size = UDim2.new(1, 0, 1, 0)
HopFrame.Name = "HopFrame"
HopFrame.Parent = HopGui

NameHub.Font = Enum.Font.Gotham
NameHub.Text = "Snezhnaya"
NameHub.TextColor3 = Color3.fromRGB(175.00000476837158, 187.00000405311584, 230.00000149011612)
NameHub.TextSize = 85
NameHub.AnchorPoint = Vector2.new(0.5, 0.5)
NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameHub.BackgroundTransparency = 0.9990000128746033
NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameHub.BorderSizePixel = 0
NameHub.Position = UDim2.new(0.5, 0, 0.5, -45)
NameHub.Size = UDim2.new(0, 200, 0, 80)
NameHub.Name = "NameHub"
NameHub.Parent = HopFrame

UIStroke.Color = Color3.fromRGB(175.00000476837158, 187.00000405311584, 230.00000149011612)
UIStroke.Thickness = 1.5
UIStroke.Parent = NameHub

HopIn.Font = Enum.Font.Gotham
HopIn.Text = "hold on a sec"
HopIn.TextColor3 = Color3.fromRGB(255, 255, 255)
HopIn.TextSize = 20
HopIn.AnchorPoint = Vector2.new(0.5, 0.5)
HopIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HopIn.BackgroundTransparency = 0.9990000128746033
HopIn.BorderColor3 = Color3.fromRGB(0, 0, 0)
HopIn.BorderSizePixel = 0
HopIn.Position = UDim2.new(0.5, 0, 0.5, 0)
HopIn.Size = UDim2.new(0, 200, 0, 30)
HopIn.Name = "HopIn"
HopIn.Parent = HopFrame

DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = HopFrame

DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.999
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Reason.Font = Enum.Font.Gotham
Reason.Text = ""
Reason.TextColor3 = Color3.fromRGB(255, 255, 255)
Reason.TextSize = 16
Reason.AnchorPoint = Vector2.new(0.5, 0.5)
Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reason.BackgroundTransparency = 0.9990000128746033
Reason.BorderColor3 = Color3.fromRGB(0, 0, 0)
Reason.BorderSizePixel = 0
Reason.Position = UDim2.new(0.5, 0, 0.5, 32)
Reason.Size = UDim2.new(0, 200, 0, 16)
Reason.Name = "Reason"
Reason.Parent = HopFrame

ClickTo.Font = Enum.Font.Gotham
ClickTo.Text = "Click to this frame to abort the process"
ClickTo.TextColor3 = Color3.fromRGB(255, 255, 255)
ClickTo.TextSize = 16
ClickTo.TextTransparency = 0.5
ClickTo.AnchorPoint = Vector2.new(0.5, 0.5)
ClickTo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickTo.BackgroundTransparency = 0.9990000128746033
ClickTo.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClickTo.BorderSizePixel = 0
ClickTo.Position = UDim2.new(0.5, 0, 0.5, 50)
ClickTo.Size = UDim2.new(1, 0, 1, 0)
ClickTo.Name = "ClickTo"
ClickTo.Parent = HopFrame

ButtonCall.Font = Enum.Font.SourceSans
ButtonCall.Text = ""
ButtonCall.TextColor3 = Color3.fromRGB(0, 0, 0)
ButtonCall.TextSize = 14
ButtonCall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonCall.BackgroundTransparency = 0.9990000128746033
ButtonCall.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonCall.BorderSizePixel = 0
ButtonCall.Size = UDim2.new(1, 0, 1, 0)
ButtonCall.Name = "ButtonCall"
ButtonCall.Parent = HopFrame

local Blur = Instance.new("BlurEffect")
Blur.Size = 0
Blur.Parent = game.Lighting
Blur.Enabled = true

function fadein()
    for i = 0, 50, 5 do
        Blur.Size = i
        wait()
    end
end
function fadeout()
    for i = 50, 0, -5 do
        Blur.Size = i
        wait()
    end
end

HopServer = function(reasonreal, time, lockabort, teleportsea)
    lockabort = lockabort
    if not reasonreal then
        reasonreal = ""
    end
    if reasonreal == "" then
        HopGui.Enabled = false
        fadeout()
        return
    end
    if not time then
        time = 3
    end
    HopGui.Enabled = true
    fadein()
    Reason.Text = "Reason: " .. reasonreal
    txt1 = "Hopping"
    if teleportsea then
        txt1 = "Wraping"
    end
    local t0 = time * 10
    while task.wait(0.1) do
        HopIn.Text = "Delay " .. txt1 .. ": " .. t0 / 10
        t0 = t0 - 1
        if math.floor(t0) == 0 then
            break
        end
        if CancelHop then
            CancelHop = false
            return
        end
    end
    wait(.4)
    local tb1 = {
        "Main",
        "Dressrosa",
        "Zou"
    }
    if tb1[teleportsea] then
        ClickTo.Text = "wrapping..."
        FireRemotes(1, "Travel" .. tb1[teleportsea])
        wait()
        return
    end
    ClickTo.Text = "finding a new server..."
    for i = 1, 100, 1 do
        if CancelHop then
            CancelHop = false
            ClickTo.Text = "Process cancelled."
            wait(1)
            return
        end
        _G.Hopping = true
        for a, b in game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(i) do
            if a ~= game.JobId and b.Count < (PlayerLimit or 9) then
                print(a, b.Count)
                wait(1)
                pcall(
                    function()
                        clearteleportqueue()
                    end
                )
                HopIn.Text = "Joining Server: " .. a .. " Player Count: " .. b.Count .. "/12"
                game:GetService("TeleportService"):SetTeleportGui(HopGui)
                ClickTo.Text = "Processing..."
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, a, game.Players.LocalPlayer)
                wait(10)
            end
        end
    end
    game:GetService("TeleportService"):Teleport(game.PlaceId)
end
---- Events
ButtonCall.Activated:Connect(
    function()
        if lockabort then
            ClickTo.Text = "Aborting Locked!"
            wait(.6)
            ClickTo.Text = "Click to this frame to abort the process"
            return
        end
        CancelHop = true
        HopServer()
    end
)

return HopServer
