while true do

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local SpawnRemote = workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("vehicle_spawn")
local StopRemote = workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("vehicle_stop")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

SpawnRemote:InvokeServer()

task.wait(0.2)

character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(9000000000e9, 90000000000e9, 9000000000e9)

task.wait(0.2)

StopRemote:InvokeServer()
wait(0.5)
end
