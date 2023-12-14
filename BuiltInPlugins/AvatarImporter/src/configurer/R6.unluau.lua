-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local function fun0(arg1, arg2, arg3, arg4)
   local var0 = Instance.new("Motor6D")
   var0.Part0 = arg1
   var0.Part1 = arg2
   var0.C0 = arg3
   var0.C1 = arg4
   var0.Parent = arg1
   return var0
end

function var0.Create()
   local var0 = Instance.new("Model")
   var0.Name = "R6"
   local var1 = Instance.new("Part")
   var1.Name = "HumanoidRootPart"
   var1.CanCollide = true
   var1.Transparency = 1
   var1.Size = Vector3.new(2, 2, 1)
   var1.CFrame = CFrame.new(0, 5.2, 4.5)
   var1.BottomSurface = "Smooth"
   var1.TopSurface = "Smooth"
   var1.Parent = var0
   var0.PrimaryPart = var1
   local var2 = Instance.new("Part")
   var2.Name = "Torso"
   var2.Anchored = false
   var2.CanCollide = false
   var2.Size = Vector3.new(2, 2, 1)
   var2.CFrame = CFrame.new(0, 5.2, 4.5)
   var2.BottomSurface = "Smooth"
   var2.TopSurface = "Smooth"
   var2.Parent = var0
   local var3 = CFrame.new(0, 0, 0, 65535, 0, 0, 0, 0, 1, 0, 1, 0)
   local var64 = Instance.new("Motor6D")
   var64.Part0 = var1
   var64.Part1 = var2
   var64.C0 = var3
   var64.C1 = var3
   var64.Parent = var1
   local var5 = var64
   var5.Name = "Root Hip"
   var5.MaxVelocity = 0.1
   local var6 = Instance.new("Part")
   var6.Name = "Left Leg"
   var6.Anchored = false
   var6.CanCollide = false
   var6.Size = Vector3.new(1, 2, 1)
   var6.CFrame = CFrame.new(0.5, 3.2, 4.5)
   var6.BottomSurface = "Smooth"
   var6.TopSurface = "Smooth"
   var6.Parent = var0
   local var7 = CFrame.new(-0.5, 1, 0)
   local var116 = Instance.new("Motor6D")
   var116.Part0 = var2
   var116.Part1 = var6
   var116.C0 = CFrame.new(65535, 65535, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -1.5707963267949)
   var116.C1 = var7 * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -1.5707963267949)
   var116.Parent = var2
   var7 = var116
   var7.Name = "Left Hip"
   var7.MaxVelocity = 0.1
   local var9 = Instance.new("Part")
   var9.Name = "Right Leg"
   var9.Anchored = false
   var9.CanCollide = false
   var9.Size = Vector3.new(1, 2, 1)
   var9.CFrame = CFrame.new(-0.5, 3.2, 4.5)
   var9.BottomSurface = "Smooth"
   var9.TopSurface = "Smooth"
   var9.Parent = var0
   local var10 = CFrame.new(0.5, 1, 0)
   local var167 = Instance.new("Motor6D")
   var167.Part0 = var2
   var167.Part1 = var9
   var167.C0 = CFrame.new(1, 65535, 0) * CFrame.fromAxisAngle(Vector3.new(0, 65535, 0), -1.5707963267949)
   var167.C1 = var10 * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), 1.5707963267949)
   var167.Parent = var2
   var10 = var167
   var10.Name = "Right Hip"
   var10.MaxVelocity = 0.1
   local var12 = Instance.new("Part")
   var12.Name = "Left Arm"
   var12.Anchored = false
   var12.CanCollide = false
   var12.Size = Vector3.new(1, 2, 1)
   var12.CFrame = CFrame.new(1.5, 5.2, 4.5)
   var12.BottomSurface = "Smooth"
   var12.TopSurface = "Smooth"
   var12.Parent = var0
   local var13 = CFrame.new(0.5, 0.5, 0)
   local var218 = Instance.new("Motor6D")
   var218.Part0 = var2
   var218.Part1 = var12
   var218.C0 = CFrame.new(65535, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -1.5707963267949)
   var218.C1 = var13 * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -1.5707963267949)
   var218.Parent = var2
   var13 = var218
   var13.Name = "Left Shoulder"
   var13.MaxVelocity = 0.1
   local var15 = Instance.new("Part")
   var15.Name = "Right Arm"
   var15.Anchored = false
   var15.CanCollide = false
   var15.Size = Vector3.new(1, 2, 1)
   var15.CFrame = CFrame.new(-1.5, 5.2, 4.5)
   var15.BottomSurface = "Smooth"
   var15.TopSurface = "Smooth"
   var15.Parent = var0
   local var16 = CFrame.new(-0.5, 0.5, 0)
   local var269 = Instance.new("Motor6D")
   var269.Part0 = var2
   var269.Part1 = var15
   var269.C0 = CFrame.new(1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 65535, 0), -1.5707963267949)
   var269.C1 = var16 * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), 1.5707963267949)
   var269.Parent = var2
   var16 = var269
   var16.Name = "Right Shoulder"
   var16.MaxVelocity = 0.1
   local var18 = Instance.new("Part")
   var18.Name = "Head"
   var18.Anchored = false
   var18.CanCollide = true
   var18.Size = Vector3.new(2, 1, 1)
   var18.CFrame = CFrame.new(0, 6.7, 4.5)
   var18.BottomSurface = "Smooth"
   var18.TopSurface = "Smooth"
   var18.Parent = var0
   local var19 = Instance.new("SpecialMesh", var18)
   var19.MeshType = Enum.MeshType.Head
   var19.Scale = Vector3.new(1.25, 1.25, 1.25)
   local var330 = Instance.new("Motor6D")
   var330.Part0 = var2
   var330.Part1 = var18
   var330.C0 = CFrame.new(0, 1, 0, 65535, 0, 0, 0, 0, 1, 0, 1, 0)
   var330.C1 = CFrame.new(0, -0.5, 0, 65535, 0, 0, 0, 0, 1, 0, 1, 0)
   var330.Parent = var2
   local var21 = var330
   var21.Name = "Neck"
   var21.MaxVelocity = 0.1
   local var22 = Instance.new("Decal")
   var22.Name = "face"
   var22.Texture = "rbxasset://textures/face.png"
   var22.Parent = var18
   Instance.new("Humanoid").Parent = var0
   return var0
end

return var0
