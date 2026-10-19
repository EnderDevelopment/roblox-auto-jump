-- BombaRecolorable.server.lua

local Bomba = script.Parent
local Button = Bomba:WaitForChild("Button")
local OriginalColor = Bomba.Color

local function applyImpulse(hit)
    local humanoid = hit.Parent:FindFirstChild("Humanoid")
    if humanoid then
        humanoid:ApplyImpulse(Vector3.new(0, 500, 0))
    end
end

local function restoreColor()
    Bomba.Color = OriginalColor
end

Button.Click:Connect(restoreColor)
Bomba.Touched:Connect(applyImpulse)

-- Cambiar el color de la bomba
Bomba.Color = Color3.new(1, 0, 0) -- Rojo como ejemplo