-- AutoJumpScript.server.lua

local Players = game:GetService("Players")

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    
    local function onJumpRequest()
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
    
    humanoid.Jumping:Connect(onJumpRequest)
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(onCharacterAdded)
end

Players.PlayerAdded:Connect(onPlayerAdded)

-- Connect to existing players
for _, player in ipairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end