# Golden Bomb Script

This script applies a small upward impulse to a character when they touch the bomb part.

## Installation
1. Create a new script in the ServerScriptService.
2. Name the script `GoldenBombScript`.
3. Copy and paste the following code into the script:

```lua
local function onTouched(part)     local character = part.Parent     local humanoid = character:FindFirstChildOfClass("Humanoid")     if humanoid then         humanoid:ChangeState(Enum.HumanoidStateType.Jumping)         humanoid:ApplyImpulse(Vector3.new(0, 1000, 0))     end end local bomb = script.Parent local bombPart = bomb:FindFirstChild("Part") if bombPart then     bombPart.Touched:Connect(onTouched) end
```

## Usage
1. Place the script inside the bomb model.
2. Ensure the bomb part has the name "Part".
3. Play the game and touch the bomb part to see the impulse effect.