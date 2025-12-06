local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer

local correctKey = "123456" -- 你可以改成自己想要的 KEY

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeyGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Parent = ScreenGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 0, 50)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Text = "請輸入 KEY"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.8, 0, 0, 50)
TextBox.Position = UDim2.new(0.1, 0, 0, 50)
TextBox.Text = ""
TextBox.PlaceholderText = "輸入 KEY"
TextBox.TextColor3 = Color3.fromRGB(0,0,0)
TextBox.Parent = Frame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.5, 0, 0, 40)
Button.Position = UDim2.new(0.25, 0, 0, 110)
Button.Text = "確認"
Button.TextColor3 = Color3.fromRGB(255,255,255)
Button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Button.Parent = Frame

Button.MouseButton1Click:Connect(function()
    local inputKey = TextBox.Text
    if inputKey == correctKey then
        TextLabel.Text = "KEY 正確！開始執行腳本"
        Frame:Destroy()
        
        StarterGui:SetCore("SendNotification", {
            Title = "Script Made By",
            Text = "GhostPlayer",
            Duration = 3,
        })
        print("腳本功能啟動！")
    else
        TextLabel.Text = "KEY 錯誤，請重新輸入"
    end
end)
