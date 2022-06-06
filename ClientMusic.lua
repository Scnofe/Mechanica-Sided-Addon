wait(3)
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

	local Sizer = Instance.new("Frame")
	Sizer.SizeConstraint = Enum.SizeConstraint.RelativeXX
	Sizer.Parent = PlayerGui
	Sizer.Name = "AudioPlayer"
	Sizer.BackgroundTransparency = 1
	Sizer.ClipsDescendants = true
	Sizer:TweenSize(UDim2.new(0.152, 0,0.121, 0))
	Sizer:TweenPosition(UDim2.new(0.848, 0,0.174, 0))

	local FrameThree_ = Instance.new("Frame")
	FrameThree_.Parent = Sizer
	FrameThree_.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	FrameThree_.BorderSizePixel = 0
	FrameThree_:TweenSize(UDim2.new(0.997, 0,0.802, 0))
	FrameThree_:TweenPosition(UDim2.new(0.003, 0,0.198, 0))

	local UiButton = Instance.new("TextButton")
	UiButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	UiButton.Name = "Ui"
	UiButton.BorderSizePixel = 0
	UiButton.Parent = FrameThree_
	UiButton:TweenSize(UDim2.new(0.417, 0,0.079, 0))
	UiButton:TweenPosition(UDim2.new(0, 0,-0.079, 0))
	UiButton.TextColor3 = Color3.fromRGB(255,255,255)
	UiButton.Text = "Close"
	UiButton.TextScaled = true
	UiButton.TextStrokeTransparency = 0.85

end

local AudioPlayer = PlayerGui:FindFirstChild("AudioPlayer")

local ToggleUi = true
AudioPlayer.Frame.Ui.MouseButton1Down:Connect(function()
	if ToggleUi == true then
		AudioPlayer.Frame.Ui.Text = "Open"
		AudioPlayer.Frame:TweenPosition(UDim2.new(0, 0, 1, 0))
		ToggleUi = false
	elseif ToggleUi == false then
		AudioPlayer.Frame.Ui.Text = "Close"
		AudioPlayer.Frame:TweenPosition(UDim2.new(0, 0, 0, 0))
		ToggleUi = true
	end
end)

local AudioForPlay = Instance.new("Sound")
AudioForPlay.Parent = AudioPlayer

local Title1 = Instance.new("TextLabel")
Title1.BorderSizePixel = 0
Title1.Name = "Title1"
Title1.BackgroundTransparency = 1
Title1.TextColor3 = Color3.fromRGB(255,255,255)
Title1.TextStrokeTransparency = 0.85
Title1.TextScaled = true
Title1.Text = "SoundId"
Title1.Parent = AudioPlayer.Frame
Title1:TweenPosition(UDim2.new(0.035, 0,0.082, 0))
Title1:TweenSize(UDim2.new(0.273, 0,0.079, 0))

local TextBoxInt = Instance.new("TextBox")
TextBoxInt.Name = "AudioTextBox"
TextBoxInt.Text = ""
TextBoxInt.PlaceholderText = "Type in SoundId"
TextBoxInt.TextColor3 = Color3.fromRGB(255,255,255)
TextBoxInt.TextStrokeTransparency = 0.85
TextBoxInt.TextScaled = true
TextBoxInt.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextBoxInt.BorderSizePixel = 0
TextBoxInt.Parent = AudioPlayer.Frame
TextBoxInt:TweenSize(UDim2.new(0.669, 0,0.079, 0))
TextBoxInt:TweenPosition(UDim2.new(0.309, 0,0.082, 0))

wait()
local PlayB = Instance.new("TextButton")
PlayB.Name = "PlayButton"
PlayB.TextScaled = true
PlayB.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PlayB.BorderSizePixel = 0
PlayB.TextColor3 = Color3.fromRGB(255,255,255)
PlayB.Parent = AudioPlayer.Frame
PlayB.Text = "Play"
PlayB:TweenSize(UDim2.new(0.143, 0,0.079, 0))
PlayB:TweenPosition(UDim2.new(0.307, 0,0.197, 0))

local PauseB = Instance.new("TextButton")
PauseB.Name = "PauseButton"
PauseB.TextScaled = true
PauseB.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PauseB.BorderSizePixel = 0
PauseB.TextColor3 = Color3.fromRGB(255,255,255)
PauseB.Parent = AudioPlayer.Frame
PauseB.Text = "Pause"
PauseB:TweenSize(UDim2.new(0.143, 0,0.079, 0))
PauseB:TweenPosition(UDim2.new(0.448, 0,0.197, 0))

local LoopB = Instance.new("TextButton")
LoopB.Name = "Loops"
LoopB.TextScaled = true
LoopB.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LoopB.BorderSizePixel = 0
LoopB.TextColor3 = Color3.fromRGB(255,255,255)
LoopB.Parent = AudioPlayer.Frame
LoopB.Text = "Loop It"
LoopB:TweenSize(UDim2.new(0.16, 0,0.079, 0))
LoopB:TweenPosition(UDim2.new(0.59, 0,0.197, 0))

AudioPlayer.Frame.AudioTextBox.FocusLost:Connect(function()
	if not(tonumber(AudioPlayer.Frame.AudioTextBox.Text)) then
		AudioPlayer.Frame.AudioTextBox.Text = ""
	else
		AudioPlayer.Sound.SoundId = "rbxassetid://"..AudioPlayer.Frame.AudioTextBox.Text
	end
end)

AudioPlayer.Frame.PlayButton.MouseButton1Down:Connect(function()
	AudioPlayer.Sound.Playing = true
end)

AudioPlayer.Frame.PauseButton.MouseButton1Down:Connect(function()
	AudioPlayer.Sound.Playing = false
end)

AudioPlayer.Frame.Loops.MouseButton1Down:Connect(function()
	if AudioPlayer.Sound.Looped == true then
		AudioPlayer.Frame.Loops.Text = "Loop It"
		AudioPlayer.Sound.Looped = false
	elseif AudioPlayer.Sound.Looped == false then
		AudioPlayer.Frame.Loops.Text = "Looping"
		AudioPlayer.Sound.Looped = true
	end
end)
