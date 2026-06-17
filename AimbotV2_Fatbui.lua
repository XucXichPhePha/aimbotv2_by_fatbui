task.wait(1)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local function create(className, properties)
	local instance = Instance.new(className)
	for property, value in pairs(properties) do
		instance[property] = value
	end
	return instance
end

local function setToggleImage(button, enabled)
	button.Image = enabled and "http://www.roblox.com/asset/?id=1264515756" or "http://www.roblox.com/asset/?id=1264513374"
end

local function safeCharacterParts(player)
	local character = player and player.Character
	if not character then
		return nil
	end

	local head = character:FindFirstChild("Head")
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not head or not humanoidRootPart then
		return nil
	end

	return character, head, humanoidRootPart
end

local function makeDraggable(frame, handle)
	frame.Active = true
	handle.Active = true

	local dragging = false
	local dragStart = nil
	local startPosition = nil
	local dragInput = nil

	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(
			startPosition.X.Scale,
			startPosition.X.Offset + delta.X,
			startPosition.Y.Scale,
			startPosition.Y.Offset + delta.Y
		)
	end

	handle.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		dragging = true
		dragStart = input.Position
		startPosition = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end)

	handle.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging and dragStart and startPosition then
			update(input)
		end
	end)
end

local Main = create("ScreenGui", {
	Name = "Main",
	Parent = LocalPlayer:WaitForChild("PlayerGui"),
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	ResetOnSpawn = false,
	DisplayOrder = 9999,
})

local Loader = create("Frame", {
	Name = "Loader",
	Parent = Main,
	BackgroundColor3 = Color3.fromRGB(29, 29, 29),
	BackgroundTransparency = 0.2,
	BorderSizePixel = 0,
	Position = UDim2.new(0.436969697, 0, 0.455082744, 0),
	Size = UDim2.new(0, 0, 0, 76),
	Active = true,
})
create("UICorner", {Parent = Loader})

local Blur = create("ImageLabel", {
	Name = "Blur",
	Parent = Loader,
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Position = UDim2.new(-0.00483091781, 0, 0, 0),
	Size = UDim2.new(0, 0, 0, 76),
	Image = "http://www.roblox.com/asset/?id=6758962034",
	ImageTransparency = 0.55,
})
create("UICorner", {Parent = Blur})

local quotasloader = create("TextLabel", {
	Name = "quotasloader",
	Parent = Loader,
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Position = UDim2.new(0.123442277, 0, 0.157894731, 0),
	Size = UDim2.new(0, 180, 0, 39),
	Font = Enum.Font.JosefinSans,
	Text = 'AIMBOT V2 By Fatbui',
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 20,
	TextScaled = true,
	TextXAlignment = Enum.TextXAlignment.Center,
	TextWrapped = true,
	TextTransparency = 1,
})

local Bar = create("Frame", {
	Name = "Bar",
	Parent = Loader,
	BackgroundColor3 = Color3.fromRGB(84, 84, 84),
	BorderSizePixel = 0,
	Position = UDim2.new(0.128272906, 0, 0.75, 0),
	Size = UDim2.new(0, 154, 0, 6),
	BackgroundTransparency = 1,
})
create("UICorner", {Parent = Bar})

local Loaded = create("Frame", {
	Name = "Loaded",
	Parent = Loader,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BorderSizePixel = 0,
	Position = UDim2.new(0.123441979, 0, 0.75, 0),
	Size = UDim2.new(0, 0, 0, 6),
	Active = true,
})
create("UICorner", {Parent = Loaded})

TweenService:Create(Loader, TweenInfo.new(2), {Size = UDim2.new(0, 207, 0, 76)}):Play()
TweenService:Create(Blur, TweenInfo.new(2), {Size = UDim2.new(0, 207, 0, 76)}):Play()
task.wait(1)
TweenService:Create(quotasloader, TweenInfo.new(1), {TextTransparency = 0}):Play()
task.wait(0.2)
TweenService:Create(Bar, TweenInfo.new(1), {BackgroundTransparency = 0}):Play()
TweenService:Create(Loaded, TweenInfo.new(2), {Size = UDim2.new(0, 97, 0, 6)}):Play()
task.wait(1.3)
TweenService:Create(Loaded, TweenInfo.new(3.2), {Size = UDim2.new(0, 154, 0, 6)}):Play()
task.wait(4.2)
TweenService:Create(Blur, TweenInfo.new(1), {ImageTransparency = 1}):Play()
TweenService:Create(Loader, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
TweenService:Create(Bar, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
TweenService:Create(Loaded, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
task.wait(0.2)
TweenService:Create(quotasloader, TweenInfo.new(1.5), {TextTransparency = 1}):Play()
Loader.Visible = false

local ping = create("TextLabel", {
	Name = "ping",
	Parent = Main,
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Position = UDim2.new(0.409000009, 0, 0, 0),
	Size = UDim2.new(0, 329, 0, 62),
	Font = Enum.Font.JosefinSans,
	Text = '"RightShift" To Open Menu',
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 22,
	TextStrokeTransparency = 0,
	TextTransparency = 1,
})

local Basic = create("Frame", {
	Name = "Basic",
	Parent = Main,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(29, 29, 29),
	BackgroundTransparency = 0.2,
	BorderSizePixel = 0,
	Position = UDim2.new(0.400606066, 0, 0.381736517, 0),
	Size = UDim2.new(0, 329, 0, 221),
})
create("UICorner", {Parent = Basic})
create("ImageLabel", {Name = "Blurry", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.00483086752, 0, 0, 0), Size = UDim2.new(0, 330, 0, 221), Image = "http://www.roblox.com/asset/?id=6758962034", ImageTransparency = 0.55})

local Title = create("Frame", {
	Name = "Title",
	Parent = Basic,
	BackgroundColor3 = Color3.fromRGB(95, 95, 95),
	BackgroundTransparency = 0.35,
	BorderSizePixel = 0,
	Position = UDim2.new(-0.00483086752, 0, 0, 0),
	Size = UDim2.new(0, 331, 0, 24),
	Active = true,
})
create("UICorner", {Parent = Title})
create("TextLabel", {Name = "quotasname", Parent = Title, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0, 0, -0.000333150238, 0), Size = UDim2.new(0, 329, 0, 25), Font = Enum.Font.JosefinSans, Text = "AIMBOT V2 By Fatbui", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 14, TextWrapped = true})
create("ImageLabel", {Name = "Blurred", Parent = Title, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.00178288843, 0, 0, 0), Size = UDim2.new(0, 332, 0, 24), Image = "http://www.roblox.com/asset/?id=6758962034", ImageTransparency = 0.55})

local EspEnable = create("ImageButton", {Name = "EspEnable", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.258358657, 0, 0.244164556, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=1264513374"})
local TeamCheck = create("ImageButton", {Name = "TeamCheck", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.258358657, 0, 0.430164546, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=1264513374"})
local AimEnable = create("ImageButton", {Name = "AimEnable", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.742358685, 0, 0.245164558, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=1264513374"})
create("TextLabel", {Name = "TeamText", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.450395137, 0, 0.424177229, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Kiểm tra team", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local TeamCheck2 = create("ImageButton", {Name = "TeamCheck2", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.742358685, 0, 0.431164563, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=1264515756"})
create("TextLabel", {Name = "TeamText2", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.0303951371, 0, 0.418177217, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Kiểm tra team", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local NameTogle = create("ImageButton", {Name = "NameTogle", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.258358657, 0, 0.610164583, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=1264515756"})
create("TextLabel", {Name = "Namet", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.0303951371, 0, 0.602177203, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Hiện FOV", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local Close = create("ImageButton", {Name = "Close", Parent = Basic, BackgroundColor3 = Color3.fromRGB(22, 22, 22), BackgroundTransparency = 0.65, BorderSizePixel = 0, Position = UDim2.new(0.927358627, 0, 0.0253164563, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=10002373478"})
create("UICorner", {Parent = Close, CornerRadius = UDim.new(0, 5)})
local Mini = create("ImageButton", {Name = "Mini", Parent = Basic, BackgroundColor3 = Color3.fromRGB(22, 22, 22), BackgroundTransparency = 0.65, BorderSizePixel = 0, Position = UDim2.new(0.837358654, 0, 0.0253164563, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=848237313"})
create("UICorner", {Parent = Mini, CornerRadius = UDim.new(0, 5)})
create("ImageLabel", {Name = "line", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.495440722, 0, 0.196202889, 0), Size = UDim2.new(0, 33, 0, 147), Image = "http://www.roblox.com/asset/?id=14519771515"})
create("TextLabel", {Name = "EspText", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.0303951371, 0, 0.234177217, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "ESP người chơi", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
create("TextLabel", {Name = "AimbotText", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.450395137, 0, 0.231177211, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Aimbot", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local InfJump = create("ImageButton", {Name = "InfJump", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.259076059, 0, 0.793481112, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=17397360339"})
create("TextLabel", {Name = "InfText", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.0332827121, 0, 0.777658224, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Nhảy vô hạn", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local SilentAim = create("ImageButton", {Name = "SilentAim", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.742358744, 0, 0.613827407, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=17397360339"})
create("TextLabel", {Name = "SilentText", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.449999958, 0, 0.599004567, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Silent Aim", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local SpeedHack = create("ImageButton", {Name = "SpeedHack", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.741797566, 0, 0.790223122, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=17397360339"})
create("TextLabel", {Name = "SpeedText", Parent = Basic, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.448801696, 0, 0.777553499, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Tăng tốc", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})

local Bottom = create("Frame", {Name = "Bottom", Parent = Basic, Active = true, BackgroundColor3 = Color3.fromRGB(29, 29, 29), BackgroundTransparency = 0.2, BorderSizePixel = 0, Position = UDim2.new(-0.00787019543, 0, 1.03784513, 0), Size = UDim2.new(0, 331, 0, 31)})
create("UICorner", {Parent = Bottom})
create("ImageLabel", {Name = "Effect", Parent = Bottom, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.00180053711, 0, 0, 0), Size = UDim2.new(0, 331, 0, 30), Image = "http://www.roblox.com/asset/?id=6758962034", ImageTransparency = 0.55})
local GunsM = create("ImageButton", {Name = "GunsM", Parent = Bottom, BackgroundColor3 = Color3.fromRGB(22, 22, 22), BackgroundTransparency = 0.65, BorderSizePixel = 0, Position = UDim2.new(0.0814373121, 0, 0.129032254, 0), Size = UDim2.new(0, 76, 0, 22), Image = "http://www.roblox.com/asset/?id=17430191337"})
create("UICorner", {Parent = GunsM, CornerRadius = UDim.new(0, 5)})

local Mods = create("Frame", {Name = "Mods", Parent = Main, Active = true, BackgroundColor3 = Color3.fromRGB(29, 29, 29), BackgroundTransparency = 0.2, BorderSizePixel = 0, Position = UDim2.new(0.712401628, 0, 0.391192794, 0), Size = UDim2.new(0, 183, 0, 221), Visible = false})
create("UICorner", {Parent = Mods})
local Title_2 = create("Frame", {Name = "Title", Parent = Mods, BackgroundColor3 = Color3.fromRGB(95, 95, 95), BackgroundTransparency = 0.35, BorderSizePixel = 0, Position = UDim2.new(-0.00142020232, 0, 0, 0), Size = UDim2.new(0, 183, 0, 24), Active = true})
create("UICorner", {Parent = Title_2})
create("TextLabel", {Name = "ModName", Parent = Title_2, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.00955917314, 0, -0.000333150238, 0), Size = UDim2.new(0, 184, 0, 25), Font = Enum.Font.JosefinSans, Text = 'Tinh chỉnh vũ khí', TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 14, TextWrapped = true})
create("ImageLabel", {Name = "abcblur", Parent = Title_2, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.00285597844, 0, 0, 0), Size = UDim2.new(0, 183, 0, 24), Image = "http://www.roblox.com/asset/?id=6758962034", ImageTransparency = 0.55})
create("ImageLabel", {Name = "bloor", Parent = Mods, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(-0.00142020232, 0, 0, 0), Size = UDim2.new(0, 183, 0, 221), Image = "http://www.roblox.com/asset/?id=6758962034", ImageTransparency = 0.55})
local InfAmmo = create("ImageButton", {Name = "InfAmmo", Parent = Mods, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.660391748, 0, 0.16782707, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=17397360339"})
create("TextLabel", {Name = "AmmoText", Parent = Mods, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.100273088, 0, 0.152036086, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Đạn vô hạn", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local FFSpeed = create("ImageButton", {Name = "FFSpeed", Parent = Mods, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.660391748, 0, 0.317148328, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=17397360339"})
create("TextLabel", {Name = "FFSpeedText", Parent = Mods, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.100273088, 0, 0.301357359, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Tốc độ bắn", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local Recoil = create("ImageButton", {Name = "Recoil", Parent = Mods, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.660391748, 0, 0.467148328, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=17397360339"})
create("TextLabel", {Name = "RecoilText", Parent = Mods, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0.100273088, 0, 0.450357359, 0), Size = UDim2.new(0, 111, 0, 23), Font = Enum.Font.JosefinSans, Text = "Giảm giật", TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 10})
local Close_2 = create("ImageButton", {Name = "Close", Parent = Mods, BackgroundColor3 = Color3.fromRGB(22, 22, 22), BackgroundTransparency = 0.65, BorderSizePixel = 0, Position = UDim2.new(0.861785054, 0, 0.016266698, 0), Size = UDim2.new(0, 16, 0, 16), Image = "http://www.roblox.com/asset/?id=10002373478"})
create("UICorner", {Parent = Close_2, CornerRadius = UDim.new(0, 5)})

makeDraggable(Basic, Title)
makeDraggable(Mods, Title_2)

Basic.Visible = true
TweenService:Create(Basic, TweenInfo.new(1.5), {BackgroundTransparency = 0.2}):Play()

local menuOpen = true
local espEnabled = false
local aimEnabled = false
local drawFovEnabled = true
local teamCheckEnabled = false
local infiniteJumpEnabled = false
local speedHackEnabled = false
local recoilEnabled = false
local fireRateEnabled = false
local infAmmoEnabled = false
local silentAimEnabled = false
local activated = false

_G.sizeof = 55
_G.AimOn = false
_G.TeamCheckOn = true
_G.Aimpart = "Head"
_G.Sensitivity = 0.03
_G.CircleSides = 64
_G.CircleColor = Color3.fromRGB(255, 255, 255)
_G.CircleVisible = true
_G.fovTransparency = 0

local function bindCharacter(character)
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end

	humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
		if speedHackEnabled then
			humanoid.WalkSpeed = 100
		end
	end)

	if speedHackEnabled then
		humanoid.WalkSpeed = 100
	end
end

if LocalPlayer.Character then
	bindCharacter(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:Connect(bindCharacter)

local function applyWeaponMods()
	local weaponsFolder = ReplicatedStorage:FindFirstChild("Weapons")
	if not weaponsFolder then
		return
	end

	for _, object in ipairs(weaponsFolder:GetDescendants()) do
		if recoilEnabled and object.Name == "RecoilControl" and object:IsA("NumberValue") then
			object.Value = 0
		elseif recoilEnabled and object.Name == "MaxSpread" and object:IsA("NumberValue") then
			object.Value = 0
		elseif fireRateEnabled and object.Name == "Auto" and object:IsA("BoolValue") then
			object.Value = true
		elseif fireRateEnabled and object.Name == "FireRate" and object:IsA("NumberValue") then
			object.Value = 0.02
		end
	end
end

local weaponWatchBound = false
local function bindWeaponWatcherOnce()
	if weaponWatchBound then
		return
	end
	weaponWatchBound = true

	local function attach(folder)
		if not folder then
			return
		end
		folder.DescendantAdded:Connect(function()
			if recoilEnabled or fireRateEnabled then
				applyWeaponMods()
			end
		end)
	end

	attach(ReplicatedStorage:FindFirstChild("Weapons"))
	ReplicatedStorage.ChildAdded:Connect(function(child)
		if child.Name == "Weapons" then
			attach(child)
			task.defer(applyWeaponMods)
		end
	end)
end

local function applySilentAimCharacter(character)
	if not silentAimEnabled or not character then
		return
	end

	local rightUpperLeg = character:FindFirstChild("RightUpperLeg")
	local leftUpperLeg = character:FindFirstChild("LeftUpperLeg")
	local headHB = character:FindFirstChild("HeadHB")
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

	if rightUpperLeg then
		rightUpperLeg.CanCollide = false
		rightUpperLeg.Transparency = 10
		rightUpperLeg.Size = Vector3.new(13, 13, 13)
	end
	if leftUpperLeg then
		leftUpperLeg.CanCollide = false
		leftUpperLeg.Transparency = 10
		leftUpperLeg.Size = Vector3.new(13, 13, 13)
	end
	if headHB then
		headHB.CanCollide = false
		headHB.Transparency = 10
		headHB.Size = Vector3.new(13, 13, 13)
	end
	if humanoidRootPart then
		humanoidRootPart.CanCollide = false
		humanoidRootPart.Transparency = 10
		humanoidRootPart.Size = Vector3.new(13, 13, 13)
	end
end

local function bindSilentAimPlayer(player)
	if player == LocalPlayer then
		return
	end

	if player.Character then
		applySilentAimCharacter(player.Character)
	end

	player.CharacterAdded:Connect(function(character)
		applySilentAimCharacter(character)
	end)
end

for _, player in ipairs(Players:GetPlayers()) do
	bindSilentAimPlayer(player)
end
Players.PlayerAdded:Connect(bindSilentAimPlayer)

local espTemplate = create("BillboardGui", {
	Name = "esp",
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	Active = true,
	AlwaysOnTop = true,
	LightInfluence = 1,
	Size = UDim2.new(0, 300, 0, 30),
	StudsOffset = Vector3.new(0, 3, 0),
})
create("TextLabel", {Name = "name", Parent = espTemplate, BackgroundTransparency = 1, BorderSizePixel = 0, Size = UDim2.new(1, 0, 1, 0), Font = Enum.Font.Ubuntu, TextColor3 = Color3.fromRGB(255, 255, 255), TextSize = 9, TextStrokeTransparency = 0, TextWrapped = true, TextTransparency = 1})

local boxTemplate = create("BillboardGui", {
	Name = "mainesp",
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	Active = true,
	AlwaysOnTop = true,
	LightInfluence = 1,
	MaxDistance = 999999,
	Size = UDim2.new(4, 0, 6, 0),
})
create("ImageLabel", {Name = "box", Parent = boxTemplate, BackgroundTransparency = 1, BorderSizePixel = 0, Size = UDim2.new(1, 0, 1, 0), Image = "http://www.roblox.com/asset/?id=16946608585", ImageTransparency = 1})

local function updateESPForPlayer(player)
	if player == LocalPlayer then
		return
	end

	local character, head, humanoidRootPart = safeCharacterParts(player)
	if not character then
		return
	end

	if not head:FindFirstChild("esp") then
		local cloned = espTemplate:Clone()
		cloned.Parent = head
		local label = cloned:FindFirstChild("name")
		if label then
			label.Text = player.Name
		end
	end

	if not humanoidRootPart:FindFirstChild("mainesp") then
		boxTemplate:Clone().Parent = humanoidRootPart
	end
end

local function removeTeamESP(player)
	if not teamCheckEnabled or player == LocalPlayer then
		return
	end

	local character, head, humanoidRootPart = safeCharacterParts(player)
	if not character or player.Team ~= LocalPlayer.Team then
		return
	end

	local headGui = head:FindFirstChild("esp")
	if headGui then
		headGui:Destroy()
	end
	local rootGui = humanoidRootPart:FindFirstChild("mainesp")
	if rootGui then
		rootGui:Destroy()
	end
end

local function updateESPVisibility(player)
	local character, head, humanoidRootPart = safeCharacterParts(player)
	if not character then
		return
	end

	local headGui = head:FindFirstChild("esp")
	local rootGui = humanoidRootPart:FindFirstChild("mainesp")
	if not headGui or not rootGui then
		return
	end

	local label = headGui:FindFirstChild("name")
	local boxGui = rootGui:FindFirstChild("box")
	if not label or not boxGui then
		return
	end

	if espEnabled then
		label.TextTransparency = 0
		boxGui.ImageTransparency = 0.43
	else
		label.TextTransparency = 1
		boxGui.ImageTransparency = 1
	end
end

for _, player in ipairs(Players:GetPlayers()) do
	updateESPForPlayer(player)
end

Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function()
		task.defer(function()
			updateESPForPlayer(player)
			removeTeamESP(player)
			updateESPVisibility(player)
		end)
	end)
end)

RunService.RenderStepped:Connect(function()
	for _, player in ipairs(Players:GetPlayers()) do
		updateESPForPlayer(player)
		removeTeamESP(player)
		updateESPVisibility(player)
	end
end)

local Holding = false
local FovCircle = Drawing.new("Circle")
FovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FovCircle.Radius = _G.sizeof
FovCircle.Color = _G.CircleColor
FovCircle.Visible = _G.CircleVisible
FovCircle.NumSides = _G.CircleSides
FovCircle.Filled = false
FovCircle.Transparency = _G.fovTransparency
FovCircle.Thickness = 0

local function getClosestPlayer()
	local target = nil
	local maxDistance = _G.sizeof
	local mouseLocation = UserInputService:GetMouseLocation()

	for _, player in ipairs(Players:GetPlayers()) do
		if player == LocalPlayer then
			continue
		end

		if _G.TeamCheckOn and player.Team == LocalPlayer.Team then
			continue
		end

		local character = player.Character
		if not character then
			continue
		end

		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			continue
		end

		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid or humanoid.Health <= 0 then
			continue
		end

		local screenPoint, onScreen = Camera:WorldToScreenPoint(humanoidRootPart.Position)
		if not onScreen then
			continue
		end

		local vectorDistance = (Vector2.new(mouseLocation.X, mouseLocation.Y) - Vector2.new(screenPoint.X, screenPoint.Y)).Magnitude
		if vectorDistance >= maxDistance then
			continue
		end

		maxDistance = vectorDistance
		target = player
	end

	return target
end

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		Holding = true
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		Holding = false
	end
end)

local function getAimPart(character)
	return character and character:FindFirstChild(_G.Aimpart)
end

local uiVisible = true

RunService.RenderStepped:Connect(function()
	FovCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
	FovCircle.Radius = _G.sizeof
	FovCircle.Color = _G.CircleColor
	FovCircle.Visible = _G.CircleVisible
	FovCircle.NumSides = _G.CircleSides
	FovCircle.Filled = false
	FovCircle.Transparency = _G.fovTransparency
	FovCircle.Thickness = 0

	if infAmmoEnabled then
		local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		local gui = playerGui and playerGui:FindFirstChild("GUI")
		local client = gui and gui:FindFirstChild("Client")
		local variables = client and client:FindFirstChild("Variables")
		local ammoCount = variables and variables:FindFirstChild("ammocount")
		local ammoCount2 = variables and variables:FindFirstChild("ammocount2")
		if ammoCount then
			ammoCount.Value = 999
		end
		if ammoCount2 then
			ammoCount2.Value = 999
		end
	end

	if not Holding or not _G.AimOn then
		return
	end

	local target = getClosestPlayer()
	if not target then
		return
	end

	local character = target.Character
	if not character then
		return
	end

	local aimPart = getAimPart(character)
	if not aimPart then
		return
	end

	local desired = CFrame.new(Camera.CFrame.Position, aimPart.Position)
	local aimStrength = math.clamp((_G.Sensitivity * 4) + 0.1, 0, 1)
	Camera.CFrame = Camera.CFrame:Lerp(desired, aimStrength)
end)

local function updateWeaponMods()
	if not (recoilEnabled or fireRateEnabled) then
		return
	end
	applyWeaponMods()
end

function applyWeaponMods()
	local weaponsFolder = ReplicatedStorage:FindFirstChild("Weapons")
	if not weaponsFolder then
		return
	end

	for _, object in ipairs(weaponsFolder:GetDescendants()) do
		if recoilEnabled and object.Name == "RecoilControl" and object:IsA("NumberValue") then
			object.Value = 0
		elseif recoilEnabled and object.Name == "MaxSpread" and object:IsA("NumberValue") then
			object.Value = 0
		elseif fireRateEnabled and object.Name == "Auto" and object:IsA("BoolValue") then
			object.Value = true
		elseif fireRateEnabled and object.Name == "FireRate" and object:IsA("NumberValue") then
			object.Value = 0.02
		end
	end
end

local weaponWatcherBound = false
local function bindWeaponWatcherOnce()
	if weaponWatcherBound then
		return
	end
	weaponWatcherBound = true

	local weaponsFolder = ReplicatedStorage:FindFirstChild("Weapons")
	if weaponsFolder then
		weaponsFolder.DescendantAdded:Connect(function()
			updateWeaponMods()
		end)
	end

	ReplicatedStorage.ChildAdded:Connect(function(child)
		if child.Name == "Weapons" then
			child.DescendantAdded:Connect(function()
				updateWeaponMods()
			end)
			task.defer(updateWeaponMods)
		end
	end)
end

local function applySilentAimNow()
	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer and player.Character then
			applySilentAimCharacter(player.Character)
		end
	end
end

local function updateMenuButton(button, state)
	setToggleImage(button, state)
end

Close.MouseButton1Down:Connect(function()
	Main:Destroy()
end)

GunsM.MouseButton1Down:Connect(function()
	Mods.Visible = true
end)

Close_2.MouseButton1Down:Connect(function()
	Mods.Visible = false
end)

Mini.MouseButton1Down:Connect(function()
	uiVisible = false
	Basic.Visible = false
	Mods.Visible = false
	TweenService:Create(ping, TweenInfo.new(1), {TextTransparency = 0}):Play()
	task.wait(3)
	TweenService:Create(ping, TweenInfo.new(1), {TextTransparency = 1}):Play()
end)

UserInputService.InputBegan:Connect(function(input, processed)
	if processed then
		return
	end

	if input.KeyCode == Enum.KeyCode.RightShift then
		uiVisible = not uiVisible
		Basic.Visible = uiVisible
		Mods.Visible = false
		if uiVisible then
			TweenService:Create(Basic, TweenInfo.new(0.25), {BackgroundTransparency = 0.2}):Play()
		else
			TweenService:Create(ping, TweenInfo.new(1), {TextTransparency = 0}):Play()
			task.delay(2, function()
				TweenService:Create(ping, TweenInfo.new(1), {TextTransparency = 1}):Play()
			end)
		end
	end
end)

EspEnable.MouseButton1Down:Connect(function()
	espEnabled = not espEnabled
	updateMenuButton(EspEnable, espEnabled)
end)

AimEnable.MouseButton1Down:Connect(function()
	aimEnabled = not aimEnabled
	_G.AimOn = aimEnabled
	_G.fovTransparency = aimEnabled and 1 or 0
	updateMenuButton(AimEnable, aimEnabled)
end)

TeamCheck.MouseButton1Down:Connect(function()
	teamCheckEnabled = not teamCheckEnabled
	updateMenuButton(TeamCheck, teamCheckEnabled)
end)

TeamCheck2.MouseButton1Down:Connect(function()
	_G.TeamCheckOn = not _G.TeamCheckOn
	updateMenuButton(TeamCheck2, _G.TeamCheckOn)
end)

NameTogle.MouseButton1Down:Connect(function()
	drawFovEnabled = not drawFovEnabled
	_G.CircleVisible = drawFovEnabled
	updateMenuButton(NameTogle, drawFovEnabled)
end)

InfJump.MouseButton1Down:Connect(function()
	infiniteJumpEnabled = not infiniteJumpEnabled
	updateMenuButton(InfJump, infiniteJumpEnabled)
end)

UserInputService.JumpRequest:Connect(function()
	if not infiniteJumpEnabled then
		return
	end

	local character = LocalPlayer.Character
	if not character then
		return
	end

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)

SpeedHack.MouseButton1Down:Connect(function()
	speedHackEnabled = not speedHackEnabled
	updateMenuButton(SpeedHack, speedHackEnabled)
	local character = LocalPlayer.Character
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid.WalkSpeed = speedHackEnabled and 100 or 16
	end
end)

Recoil.MouseButton1Down:Connect(function()
	recoilEnabled = not recoilEnabled
	updateMenuButton(Recoil, recoilEnabled)
	bindWeaponWatcherOnce()
	applyWeaponMods()
end)

FFSpeed.MouseButton1Down:Connect(function()
	fireRateEnabled = not fireRateEnabled
	updateMenuButton(FFSpeed, fireRateEnabled)
	bindWeaponWatcherOnce()
	applyWeaponMods()
end)

InfAmmo.MouseButton1Down:Connect(function()
	infAmmoEnabled = not infAmmoEnabled
	updateMenuButton(InfAmmo, infAmmoEnabled)
end)

SilentAim.MouseButton1Down:Connect(function()
	silentAimEnabled = not silentAimEnabled
	updateMenuButton(SilentAim, silentAimEnabled)
	if silentAimEnabled then
		applySilentAimNow()
	end
end)

Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function()
		updateESPForPlayer(player)
		removeTeamESP(player)
		updateESPVisibility(player)
		if silentAimEnabled and player ~= LocalPlayer and player.Character then
			applySilentAimCharacter(player.Character)
		end
	end)
end)

bindWeaponWatcherOnce()

RunService.RenderStepped:Connect(function()
	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer then
			local character, head, humanoidRootPart = safeCharacterParts(player)
			if character and head and humanoidRootPart then
				updateESPForPlayer(player)
				removeTeamESP(player)
				updateESPVisibility(player)
			end
		end
	end

	if infAmmoEnabled then
		local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		local gui = playerGui and playerGui:FindFirstChild("GUI")
		local client = gui and gui:FindFirstChild("Client")
		local variables = client and client:FindFirstChild("Variables")
		local ammoCount = variables and variables:FindFirstChild("ammocount")
		local ammoCount2 = variables and variables:FindFirstChild("ammocount2")
		if ammoCount then
			ammoCount.Value = 999
		end
		if ammoCount2 then
			ammoCount2.Value = 999
		end
	end

	FovCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
	FovCircle.Radius = _G.sizeof
	FovCircle.Color = _G.CircleColor
	FovCircle.Visible = _G.CircleVisible
	FovCircle.NumSides = _G.CircleSides
	FovCircle.Filled = false
	FovCircle.Transparency = _G.fovTransparency
	FovCircle.Thickness = 0

	if not Holding or not _G.AimOn then
		return
	end

	local target = getClosestPlayer()
	if not target then
		return
	end

	local character = target.Character
	if not character then
		return
	end

	local aimPart = getAimPart(character)
	if not aimPart then
		return
	end

	local desired = CFrame.new(Camera.CFrame.Position, aimPart.Position)
	Camera.CFrame = Camera.CFrame:Lerp(desired, math.clamp(_G.Sensitivity, 0, 1))
end)

local function onCharacterRoot(player)
	if player ~= LocalPlayer and silentAimEnabled and player.Character then
		applySilentAimCharacter(player.Character)
	end
end

for _, player in ipairs(Players:GetPlayers()) do
	player.CharacterAdded:Connect(function(character)
		onCharacterRoot(player)
		if player ~= LocalPlayer and silentAimEnabled then
			applySilentAimCharacter(character)
		end
	end)
end
