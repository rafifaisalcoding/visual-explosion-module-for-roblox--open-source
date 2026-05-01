local TweenService = game:GetService("TweenService")

local Explosion = {}

function Explosion.CreateExplosion(player, pos, color, size, time)
	local p = Instance.new("Part")
	p.Anchored = true
	p.CanCollide = false
	p.Shape = Enum.PartType.Ball
	p.Material = Enum.Material.Neon
	p.Color = color
	p.Size = Vector3.new(1, 1, 1)
	p.CFrame = CFrame.new(pos)
	p.Parent = workspace
	p.CastShadow = false

	local tween = TweenService:Create(p, TweenInfo.new(time, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = size, Transparency = 1})
	tween:Play()
	tween.Completed:Connect(function() p:Destroy() end)
end

return Explosion
