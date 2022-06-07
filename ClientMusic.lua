wait(1)
local Player = game:GetService("Players")
local PlayerGui = Player.LocalPlayer.PlayerGui:FindFirstChild("MainGui")

local RunService = game:GetService("RunService")

local FrameOne_ = Instance.new("Frame")
FrameOne_.Name = "SpecialFrame"
FrameOne_.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
FrameOne_.BackgroundTransparency = 1
FrameOne_.BorderSizePixel = 0
FrameOne_.Parent = PlayerGui
FrameOne_:TweenSize(UDim2.new(1,0,1,0))
while FrameOne_.BackgroundTransparency > 0 do
	FrameOne_.BackgroundTransparency -= 0.1
end

local SoundI = Instance.new("Sound")
SoundI.Parent = FrameOne_
SoundI.SoundId = "rbxassetid://9046865270"
SoundI.Playing = true

local FrameTwo_ = Instance.new("Frame")
FrameTwo_.Name = "Frame1"
FrameTwo_.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
FrameTwo_.BackgroundTransparency = 1
FrameTwo_.BorderSizePixel = 0
FrameTwo_.Parent = FrameOne_
FrameTwo_.ClipsDescendants = true
FrameTwo_:TweenSize(UDim2.new(0.581, 0,0.642, 0))
FrameTwo_:TweenPosition(UDim2.new(0.209, 0,0.179, 0))

local TopText = Instance.new("TextLabel")
TopText.Name = "A"
TopText.BackgroundTransparency = 1
TopText.TextTransparency = 1
TopText.Parent = FrameTwo_
TopText:TweenPosition(UDim2.new(0, 0,-0.776, 0))
TopText:TweenSize(UDim2.new(1, 0,0.914, 0))
TopText.Font = "Legacy"
TopText.TextColor3 = Color3.fromRGB(255,255,255)
TopText.TextScaled = true
TopText.Text = "TEMPLATEKON"

local BottomText = Instance.new("TextLabel")
BottomText.Name = "B"
BottomText.BackgroundTransparency = 1
BottomText.TextTransparency = 1
BottomText.Parent = FrameTwo_
BottomText:TweenPosition(UDim2.new(0, 0,1, 0))
BottomText:TweenSize(UDim2.new(1, 0,0.914, 0))
BottomText.Font = "Legacy"
BottomText.TextColor3 = Color3.fromRGB(255,255,255)
BottomText.TextScaled = true
BottomText.Text = "ADDONS"

if FrameTwo_:FindFirstChild("A") and FrameTwo_:FindFirstChild("B") then

	wait(1.3)
	TopText:TweenPosition(UDim2.new(0,0,0,0),"Out","Back",2)
	wait(0.5)
	while TopText.TextTransparency > 0 do
		TopText.TextTransparency -= 0.1
		wait()
	end
	wait(1.6)
	BottomText:TweenPosition(UDim2.new(0, 0,0.199, 0), "Out", "Sine", 2)
	wait(0.5)
	while BottomText.TextTransparency > 0 do
		BottomText.TextTransparency -= 0.1
		wait()
	end

	wait(1.6)
	while BottomText.TextTransparency < 1 or TopText.TextTransparency < 1 do
		if BottomText.TextTransparency < 1 then
			BottomText.TextTransparency += 0.1
		end
		if TopText.TextTransparency < 1 then
			TopText.TextTransparency += 0.1
		end
		wait()
	end
	wait()
	while SoundI.Volume > 0 or FrameOne_.BackgroundTransparency < 1 do
		if FrameOne_.BackgroundTransparency < 1 then
			FrameOne_.BackgroundTransparency += 0.1
		end
		if SoundI.Volume > 0 then
			SoundI.Volume -= 0.05
		end
		wait()
	end
	wait(1)
	FrameOne_:Destroy()
end

local BackgroundSize = Instance.new("Frame")
BackgroundSize.Name = "BackgroundSize"
BackgroundSize.BackgroundTransparency = 1
BackgroundSize.Parent = PlayerGui
BackgroundSize:TweenSize(UDim2.new(1,0,1,0))
BackgroundSize.ZIndex = 4

local FrameInside = Instance.new("Frame")
FrameInside.Parent = BackgroundSize
FrameInside.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
FrameInside:TweenSize(UDim2.new(0.194, 0,1, 0))
FrameInside:TweenPosition(UDim2.new(0.806, 0,0, 0))

local UiButtonOne_ = Instance.new("TextButton")
UiButtonOne_.Name = "UiButton"
UiButtonOne_.Parent = FrameInside
UiButtonOne_.Text = "Close"
UiButtonOne_:TweenSize(UDim2.new(0.293, 0,0.031, 0))
UiButtonOne_:TweenPosition(UDim2.new(-0.295, 0,0.969, 0))
UiButtonOne_.BackgroundTransparency = 1
UiButtonOne_.TextColor3 = Color3.fromRGB(255,255,255)
UiButtonOne_.TextStrokeTransparency = 0.85
UiButtonOne_.TextScaled = true

local TitleOne_ = Instance.new("TextLabel")
TitleOne_.Name = "Title"
TitleOne_.Parent = FrameInside
TitleOne_.Text = "SoundId"
TitleOne_.BackgroundTransparency = 1
TitleOne_.TextColor3 = Color3.fromRGB(255,255,255)
TitleOne_.TextStrokeTransparency = 0.85
TitleOne_.TextScaled = true
TitleOne_:TweenSize(UDim2.new(0.263, 0,0.033, 0))
TitleOne_:TweenPosition(UDim2.new(0.038, 0,0.021, 0))

local TextBoxSound = Instance.new("TextBox")
TextBoxSound.Name = "SoundBox"
TextBoxSound.ClearTextOnFocus = false
TextBoxSound.Parent = FrameInside
TextBoxSound.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextBoxSound.PlaceholderText = "Write in SoundId"
TextBoxSound.Text = ""
TextBoxSound.TextColor3 = Color3.fromRGB(255,255,255)
TextBoxSound.TextStrokeTransparency = 0.85
TextBoxSound.BorderSizePixel = 0
TextBoxSound.TextScaled = true
TextBoxSound:TweenSize(UDim2.new(0.938, 0,0.033, 0))
TextBoxSound:TweenPosition(UDim2.new(0.036, 0,0.054, 0))

local UiCorner = Instance.new("UICorner")
UiCorner.Parent = TextBoxSound
UiCorner.Name = "Corner"
UiCorner.CornerRadius = UDim.new(0,0)
local USX = 0
while USX < 8 do
	USX += 0.2
	UiCorner.CornerRadius = UDim.new(0,USX)
	wait()
end

local ImageButton = Instance.new("ImageButton")
ImageButton.Name = "PlayButton"
ImageButton.Parent = FrameInside
ImageButton.BackgroundTransparency = 1
ImageButton.Image = "http://www.roblox.com/asset/?id=3192518259"
ImageButton.ScaleType = Enum.ScaleType.Fit
ImageButton:TweenSize(UDim2.new(0.048, 0,0.023, 0))
ImageButton:TweenPosition(UDim2.new(0.08, 0,0.094, 0))



local LoopLabel = Instance.new("TextLabel")
LoopLabel.Name = "Title2"
LoopLabel.Parent = FrameInside
LoopLabel.Text = "Loop(Optional)"
LoopLabel.BackgroundTransparency = 1
LoopLabel.TextColor3 = Color3.fromRGB(255,255,255)
LoopLabel.TextStrokeTransparency = 0.85
LoopLabel.TextScaled = true
LoopLabel:TweenSize(UDim2.new(0.263, 0,0.028, 0))
LoopLabel:TweenPosition(UDim2.new(0.71, 0,0.093, 0))

local ButtonInstance = Instance.new("TextButton")
ButtonInstance.Name = "Loops"
ButtonInstance.Parent = FrameInside
ButtonInstance.Text = "False"
ButtonInstance.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ButtonInstance.TextColor3 = Color3.fromRGB(255,255,255)
ButtonInstance.TextStrokeTransparency = 0.85
ButtonInstance.TextScaled = true
ButtonInstance:TweenSize(UDim2.new(0.263, 0,0.028, 0))
ButtonInstance:TweenPosition(UDim2.new(0.71, 0,0.123, 0))
ButtonInstance.ZIndex = 5

local UiCorner2 = Instance.new("UICorner")
UiCorner2.Parent = ButtonInstance
UiCorner2.Name = "Corner"
UiCorner2.CornerRadius = UDim.new(0,0)
local USX2 = 0
while USX2 < 8 do
	USX2 += 0.2
	UiCorner2.CornerRadius = UDim.new(0,USX2)
	wait()
end

local TheMainUi = PlayerGui.BackgroundSize

local SoundInt = Instance.new("Sound")
SoundInt.Parent = TheMainUi.Frame

local Toggle = true
TheMainUi.Frame.UiButton.MouseButton1Down:Connect(function()
	if Toggle == true then
		TheMainUi.Frame.UiButton.Text = "Open"
		TheMainUi.Frame:TweenPosition(UDim2.new(1, 0,0, 0))
		Toggle = false
	elseif Toggle == false then
		TheMainUi.Frame.UiButton.Text = "Close"
		TheMainUi.Frame:TweenPosition(UDim2.new(0.806, 0,0, 0))
		Toggle = true
	end
end)

TheMainUi.Frame.SoundBox.FocusLost:Connect(function()
	if not(tonumber(TheMainUi.Frame.SoundBox.Text)) then
		TheMainUi.Frame.SoundBox.Text = ""
	else
		TheMainUi.Frame.Sound.SoundId = "rbxassetid://"..TheMainUi.Frame.SoundBox.Text
	end
end)

TheMainUi.Frame.PlayButton.MouseButton1Down:Connect(function()
	if TheMainUi.Frame.Sound.Playing == false then
		TheMainUi.Frame.PlayButton.Image = "http://www.roblox.com/asset/?id=3192517628"
		TheMainUi.Frame.Sound.Playing = true
	elseif TheMainUi.Frame.Sound.Playing == true then
		TheMainUi.Frame.PlayButton.Image = "http://www.roblox.com/asset/?id=3192518259"
		TheMainUi.Frame.Sound.Playing = false
	else
		print("Audio Failed")
	end
end)

TheMainUi.Frame.Loops.MouseButton1Down:Connect(function()
	if TheMainUi.Frame.Sound.Looped == true then
		TheMainUi.Frame.Loops.Text = "false"
		TheMainUi.Frame.Sound.Looped = false
	elseif TheMainUi.Frame.Sound.Looped == false then
		TheMainUi.Frame.Loops.Text = "true"
		TheMainUi.Frame.Sound.Looped = true
	end
end)
