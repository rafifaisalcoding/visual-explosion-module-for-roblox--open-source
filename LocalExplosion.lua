local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ExplosionRemote = ReplicatedStorage.RemoteEvents:WaitForChild("Explosion") -- make sure to reference the path of the remote event (e.g mine is in a folder)
local TweenService = game:GetService("TweenService")

ExplosionRemote.OnClientEvent:Connect(function(pos, color, size, time)
	local p = Instance.new("Part")
	p.Anchored = true
	p.CanCollide = false
	p.Shape = Enum.PartType.Ball
	p.Material = Enum.Material.Neon
	p.Color = color
	p.Size = Vector3.new(1, 1, 1)
	p.CFrame = CFrame.new(pos)
	p.Parent = workspace

	local tween = TweenService:Create(p, TweenInfo.new(time, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = size, Transparency = 1})
	tween:Play()
	tween.Completed:Connect(function() p:Destroy() end)
end)
