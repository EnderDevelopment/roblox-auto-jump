-- Auto Jump Script for Roblox

local Players = game:GetService("Players")

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    
    local function onJumpRequest()
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
    
    humanoid.Jumping:Connect(onJumpRequest)
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(onCharacterAdded)
end)