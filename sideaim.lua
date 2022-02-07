
    
     if game.PlaceId == 2788229376 then
    
    
        local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
    Lib.prompt('WELCOME', 'have fun in sideaim :)')
        
        local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
        
        local MainUI = UILibrary.Load("sideaim.cc")
        local FirstPage = MainUI.AddPage("Home")
        local SecondPage = MainUI.AddPage("Misc")
        local FirstButton = SecondPage.AddButton('Fly', function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/22kristina/swag/main/admin_fly'))()
            local SecondButton = SecondPage.AddButton('Autofarm', function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/rapnz/scripts/master/DaHoodFarm.lua"))()
            end)
        end)
            if game.PlaceId == 2788229376 then
        
        
                local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
            Lib.prompt('WELCOME', 'have fun in sideaim :)')
                
                local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
                
                local MainUI = UILibrary.Load("sideaim.cc")
                local FirstPage = MainUI.AddPage("Home")
                local SecondPage = MainUI.AddPage("Misc")
                local SecondButton = SecondPage.AddButton('Fly', function()
                    
                end)
                local FirstLabel = FirstPage.AddLabel("Section 1")
                local FirstButton = FirstPage.AddButton("Animation Changer", function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/zilla2123/animations/main/anim%20changer.lua'))()
                end)
                
                local SecondButton = FirstPage.AddButton("Silent Aimlock", function()
                    Lib.prompt('SILENT AIM', 'silent aim keybind is q yes')    
                    local CC = game:GetService'Workspace'.CurrentCamera
                    local Plr
                    local enabled = false
                    local accomidationfactor = 0.129145
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    local placemarker = Instance.new("Part", game.Workspace)
                    local guimain = Instance.new("Folder", game.CoreGui)
                
                    function makemarker(Parent, Adornee, Color, Size, Size2)
                        local e = Instance.new("BillboardGui", Parent)
                        e.Name = "PP"
                        e.Adornee = Adornee
                        e.Size = UDim2.new(Size, Size2, Size, Size2)
                        e.AlwaysOnTop = true
                        local a = Instance.new("Frame", e)
                        a.Size = UDim2.new(1, 0, 1, 0)
                        a.BackgroundTransparency = 0.4
                        a.BackgroundColor3 = Color
                        local g = Instance.new("UICorner", a)
                        g.CornerRadius = UDim.new(30, 30)
                        return(e)
                    end
                
                    local data = game.Players:GetPlayers()
                    function noob(player)
                        local character
                        repeat wait() until player.Character
                        local handler = makemarker(guimain, player.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0, 76, 153), 0.0, 0)
                        handler.Name = player.Name
                        player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("LowerTorso") end)
                        
                        local TextLabel = Instance.new("TextLabel", handler)
                        TextLabel.BackgroundTransparency = 1
                        TextLabel.Position = UDim2.new(0, 0, 0, -50)
                        TextLabel.Size = UDim2.new(0, 100, 0, 100)
                        TextLabel.Font = Enum.Font.SourceSansSemibold
                        TextLabel.TextSize = 14
                        TextLabel.TextColor3 = Color3.new(1, 1, 1)
                        TextLabel.TextStrokeTransparency = 0
                        TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
                        TextLabel.Text = 'Name: '..player.Name
                        TextLabel.ZIndex = 10
                        
                        spawn(function()
                            while wait() do
                                if player.Character then
                                    --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                                end
                            end
                        end)
                    end
                
                    for i = 1, #data do
                        if data[i] ~= game.Players.LocalPlayer then
                            noob(data[i])
                        end
                    end
                
                    game.Players.PlayerAdded:connect(function(Player)
                        noob(Player)
                    end)
                
                    game.Players.PlayerRemoving:Connect(function(player)
                        guimain[player.Name]:Destroy()
                    end)
                
                    spawn(function()
                        placemarker.Anchored = true
                        placemarker.CanCollide = false
                        placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
                        placemarker.Transparency = 10
                        makemarker(placemarker, placemarker, Color3.fromRGB(0, 0, 255), 0.55, 0)
                    end)    
                
                    mouse.KeyDown:Connect(function(k)
                        if k ~= "q" then return end
                        if enabled then
                            enabled = false
                        -- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            enabled = true 
                            Plr = getClosestPlayerToCursor()
                            --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                        end    
                    end)
                
                    function getClosestPlayerToCursor()
                        local closestPlayer
                        local shortestDistance = math.huge
                
                        for i, v in pairs(game.Players:GetPlayers()) do
                            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("Head") then
                                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                                if magnitude < shortestDistance then
                                    closestPlayer = v
                                    shortestDistance = magnitude
                                end
                            end
                        end
                    return closestPlayer
                    end
                
                        game:GetService"RunService".Stepped:connect(function()
                            if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
                                placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
                            else
                                placemarker.CFrame = CFrame.new(0, 9999, 0)
                            end
                        end)
                
                        local mt = getrawmetatable(game)
                        local old = mt.__namecall
                        setreadonly(mt, false)
                        mt.__namecall = newcclosure(function(...)
                            local args = {...}
                            if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
                                args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                                return old(unpack(args))
                            end
                            return old(...)
                        end)
                end)
                
                
                local ThirdButton = FirstPage.AddButton("Outfit Changer", function()
                    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\73\110\118\111\111\107\101\114\49\49\47\79\117\116\102\105\116\47\109\97\105\110\47\79\117\116\102\105\116\67\111\112\105\101\114\46\108\117\97\34\44\32\116\114\117\101\41\41\40\41\10")()
                end)
                
                local FourthButton = FirstPage.AddButton("Headless NON FE", function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Headless'))()
                end)
                
                local FifthButton = FirstPage.AddButton("Crash", function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/GS21Official/DH-TB-Crash/main/Swagmode%20crash%20modified%20(better%20FPS)%20crash'))()
                end)
                
                
                local SixthButton = FirstPage.AddButton("Cash Dropper", function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/el0001/DHMarket/main/cutescript'))()
                
            local SeventhButton = FirstPage.AddButton('Knife Reach', function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/zilla2123/animations/main/knife%20reach.lua'))()
                end)
            end)
            
            
            
            elseif game.PlaceId == 4913581664 then
            
                local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
            Lib.prompt('😳😳😳😳😳😳😳😳😳😳', 'have fun in sideaim.cc')
            
            local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
            
            local MainUI = UILibrary.Load("sideaim.cc")
            local FirstPage = MainUI.AddPage("Home")
            local FirstLabel = FirstPage.AddLabel("Section 1")
            local FirstButton = FirstPage.AddButton("Fuck all carts", function()
            loadstring(game:HttpGet(('https://gist.githubusercontent.com/8e1/6b1126c2aef36732046a16f139c75faf/raw/d1d6df3017104bc67bd3003fc69a2db99218d47c/fasfsafasf'),true))()
            end)
            
            local FirstButton = FirstPage.AddButton("Infinite Yield", function()
                loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
                end)
            
            
            
            
            
            elseif game.PlaceId == 621129760 then
            
                local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
                Lib.prompt('😳😳😳😳😳😳😳😳😳😳', 'Have fun in sideaim.cc')
                
                local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
                
                local MainUI = UILibrary.Load("sideaim.cc")
                local FirstPage = MainUI.AddPage("KAT")
                local FirstLabel = FirstPage.AddLabel("KAT")
                local FirstButton = FirstPage.AddButton("Silent Aim", function()
                loadstring(game:HttpGet(('https://gist.githubusercontent.com/8e1/270872c80d6950dbeac5a0fd07178140/raw/4a0ef49b9ae969f2ff52d58ec95d18cb27ec1979/SILENTAIMKAT'),true))()
                end)
                
                local FirstButton = FirstPage.AddButton("Admin - Inf Yield", function()
                    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
                    end)
            
                end
        end
        local FirstLabel = FirstPage.AddLabel("Section 1")
        local FirstButton = FirstPage.AddButton("Animation Changer", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/zilla2123/animations/main/anim%20changer.lua'))()
        end)
        
        local SecondButton = FirstPage.AddButton("Silent Aimlock", function()
            Lib.prompt('SILENT AIM', 'silent aim keybind is q yes')    
            local CC = game:GetService'Workspace'.CurrentCamera
            local Plr
            local enabled = false
            local accomidationfactor = 0.129145
            local mouse = game.Players.LocalPlayer:GetMouse()
            local placemarker = Instance.new("Part", game.Workspace)
            local guimain = Instance.new("Folder", game.CoreGui)
        
            function makemarker(Parent, Adornee, Color, Size, Size2)
                local e = Instance.new("BillboardGui", Parent)
                e.Name = "PP"
                e.Adornee = Adornee
                e.Size = UDim2.new(Size, Size2, Size, Size2)
                e.AlwaysOnTop = true
                local a = Instance.new("Frame", e)
                a.Size = UDim2.new(1, 0, 1, 0)
                a.BackgroundTransparency = 0.4
                a.BackgroundColor3 = Color
                local g = Instance.new("UICorner", a)
                g.CornerRadius = UDim.new(30, 30)
                return(e)
            end
        
            local data = game.Players:GetPlayers()
            function noob(player)
                local character
                repeat wait() until player.Character
                local handler = makemarker(guimain, player.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0, 76, 153), 0.0, 0)
                handler.Name = player.Name
                player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("LowerTorso") end)
                
                local TextLabel = Instance.new("TextLabel", handler)
                TextLabel.BackgroundTransparency = 1
                TextLabel.Position = UDim2.new(0, 0, 0, -50)
                TextLabel.Size = UDim2.new(0, 100, 0, 100)
                TextLabel.Font = Enum.Font.SourceSansSemibold
                TextLabel.TextSize = 14
                TextLabel.TextColor3 = Color3.new(1, 1, 1)
                TextLabel.TextStrokeTransparency = 0
                TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
                TextLabel.Text = 'Name: '..player.Name
                TextLabel.ZIndex = 10
                
                spawn(function()
                    while wait() do
                        if player.Character then
                            --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                        end
                    end
                end)
            end
        
            for i = 1, #data do
                if data[i] ~= game.Players.LocalPlayer then
                    noob(data[i])
                end
            end
        
            game.Players.PlayerAdded:connect(function(Player)
                noob(Player)
            end)
        
            game.Players.PlayerRemoving:Connect(function(player)
                guimain[player.Name]:Destroy()
            end)
        
            spawn(function()
                placemarker.Anchored = true
                placemarker.CanCollide = false
                placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
                placemarker.Transparency = 10
                makemarker(placemarker, placemarker, Color3.fromRGB(0, 0, 255), 0.55, 0)
            end)    
        
            mouse.KeyDown:Connect(function(k)
                if k ~= "q" then return end
                if enabled then
                    enabled = false
                -- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                else
                    enabled = true 
                    Plr = getClosestPlayerToCursor()
                    --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                end    
            end)
        
            function getClosestPlayerToCursor()
                local closestPlayer
                local shortestDistance = math.huge
        
                for i, v in pairs(game.Players:GetPlayers()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("Head") then
                        local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                        local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                        if magnitude < shortestDistance then
                            closestPlayer = v
                            shortestDistance = magnitude
                        end
                    end
                end
            return closestPlayer
            end
        
                game:GetService"RunService".Stepped:connect(function()
                    if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
                        placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
                    else
                        placemarker.CFrame = CFrame.new(0, 9999, 0)
                    end
                end)
        
                local mt = getrawmetatable(game)
                local old = mt.__namecall
                setreadonly(mt, false)
                mt.__namecall = newcclosure(function(...)
                    local args = {...}
                    if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                        return old(unpack(args))
                    end
                    return old(...)
                end)
        end)
        
        
        local ThirdButton = FirstPage.AddButton("Outfit Changer", function()
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\73\110\118\111\111\107\101\114\49\49\47\79\117\116\102\105\116\47\109\97\105\110\47\79\117\116\102\105\116\67\111\112\105\101\114\46\108\117\97\34\44\32\116\114\117\101\41\41\40\41\10")()
        end)
        
        local FourthButton = FirstPage.AddButton("Headless NON FE", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Headless'))()
        end)
        
        local FifthButton = FirstPage.AddButton("Crash", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/GS21Official/DH-TB-Crash/main/Swagmode%20crash%20modified%20(better%20FPS)%20crash'))()
        end)
        
        
        local SixthButton = FirstPage.AddButton("Cash Dropper", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/el0001/DHMarket/main/cutescript'))()
        
    
    
        end)
    
    
    
    
    if game.PlaceId == 4913581664 then
    
        local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
    Lib.prompt('😳😳😳😳😳😳😳😳😳😳', 'have fun in sideaim.cc')
    
    local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
    
    local MainUI = UILibrary.Load("sideaim.cc")
    local FirstPage = MainUI.AddPage("Home")
    local FirstLabel = FirstPage.AddLabel("Section 1")
    local FirstButton = FirstPage.AddButton("Fuck all carts", function()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/8e1/6b1126c2aef36732046a16f139c75faf/raw/d1d6df3017104bc67bd3003fc69a2db99218d47c/fasfsafasf'),true))()
    end)
    
    local FirstButton = FirstPage.AddButton("Infinite Yield", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end)
    
    
    
    
    
    elseif game.PlaceId == 621129760 then
    
        local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
        Lib.prompt('😳😳😳😳😳😳😳😳😳😳', 'Have fun in sideaim.cc')
        
        local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
        
        local MainUI = UILibrary.Load("sideaim.cc")
        local FirstPage = MainUI.AddPage("KAT")
        local FirstLabel = FirstPage.AddLabel("KAT")
        local FirstButton = FirstPage.AddButton("Silent Aim", function()
        loadstring(game:HttpGet(('https://gist.githubusercontent.com/8e1/270872c80d6950dbeac5a0fd07178140/raw/4a0ef49b9ae969f2ff52d58ec95d18cb27ec1979/SILENTAIMKAT'),true))()
        end)
        
        local FirstButton = FirstPage.AddButton("Admin - Inf Yield", function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
            end)
    
        end
    local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
Lib.prompt('WELCOME', 'have fun in sideaim :)')
    
    local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
    
    local MainUI = UILibrary.Load("sideaim.cc")
    local FirstPage = MainUI.AddPage("Home")
    local SecondPage = MainUI.AddPage("Misc")
    local FirstButton = SecondPage.AddButton('Fly', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/22kristina/swag/main/admin_fly'))()
        local SecondButton = SecondPage.AddButton('ESP')
    end)
        if game.PlaceId == 2788229376 then
    
    
            local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
        Lib.prompt('WELCOME', 'have fun in sideaim :)')
            
            local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
            
            local MainUI = UILibrary.Load("sideaim.cc")
            local FirstPage = MainUI.AddPage("Home")
            local SecondPage = MainUI.AddPage("Misc")
            local SecondButton = SecondPage.AddButton('Fly', function()
                
            end)
            local FirstLabel = FirstPage.AddLabel("Section 1")
            local FirstButton = FirstPage.AddButton("Animation Changer", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/zilla2123/animations/main/anim%20changer.lua'))()
            end)
            
            local SecondButton = FirstPage.AddButton("Silent Aimlock", function()
                Lib.prompt('SILENT AIM', 'silent aim keybind is q yes')    
                local CC = game:GetService'Workspace'.CurrentCamera
                local Plr
                local enabled = false
                local accomidationfactor = 0.129145
                local mouse = game.Players.LocalPlayer:GetMouse()
                local placemarker = Instance.new("Part", game.Workspace)
                local guimain = Instance.new("Folder", game.CoreGui)
            
                function makemarker(Parent, Adornee, Color, Size, Size2)
                    local e = Instance.new("BillboardGui", Parent)
                    e.Name = "PP"
                    e.Adornee = Adornee
                    e.Size = UDim2.new(Size, Size2, Size, Size2)
                    e.AlwaysOnTop = true
                    local a = Instance.new("Frame", e)
                    a.Size = UDim2.new(1, 0, 1, 0)
                    a.BackgroundTransparency = 0.4
                    a.BackgroundColor3 = Color
                    local g = Instance.new("UICorner", a)
                    g.CornerRadius = UDim.new(30, 30)
                    return(e)
                end
            
                local data = game.Players:GetPlayers()
                function noob(player)
                    local character
                    repeat wait() until player.Character
                    local handler = makemarker(guimain, player.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0, 76, 153), 0.0, 0)
                    handler.Name = player.Name
                    player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("LowerTorso") end)
                    
                    local TextLabel = Instance.new("TextLabel", handler)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Position = UDim2.new(0, 0, 0, -50)
                    TextLabel.Size = UDim2.new(0, 100, 0, 100)
                    TextLabel.Font = Enum.Font.SourceSansSemibold
                    TextLabel.TextSize = 14
                    TextLabel.TextColor3 = Color3.new(1, 1, 1)
                    TextLabel.TextStrokeTransparency = 0
                    TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
                    TextLabel.Text = 'Name: '..player.Name
                    TextLabel.ZIndex = 10
                    
                    spawn(function()
                        while wait() do
                            if player.Character then
                                --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                            end
                        end
                    end)
                end
            
                for i = 1, #data do
                    if data[i] ~= game.Players.LocalPlayer then
                        noob(data[i])
                    end
                end
            
                game.Players.PlayerAdded:connect(function(Player)
                    noob(Player)
                end)
            
                game.Players.PlayerRemoving:Connect(function(player)
                    guimain[player.Name]:Destroy()
                end)
            
                spawn(function()
                    placemarker.Anchored = true
                    placemarker.CanCollide = false
                    placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
                    placemarker.Transparency = 10
                    makemarker(placemarker, placemarker, Color3.fromRGB(0, 0, 255), 0.55, 0)
                end)    
            
                mouse.KeyDown:Connect(function(k)
                    if k ~= "q" then return end
                    if enabled then
                        enabled = false
                    -- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        enabled = true 
                        Plr = getClosestPlayerToCursor()
                        --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                    end    
                end)
            
                function getClosestPlayerToCursor()
                    local closestPlayer
                    local shortestDistance = math.huge
            
                    for i, v in pairs(game.Players:GetPlayers()) do
                        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("Head") then
                            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                            if magnitude < shortestDistance then
                                closestPlayer = v
                                shortestDistance = magnitude
                            end
                        end
                    end
                return closestPlayer
                end
            
                    game:GetService"RunService".Stepped:connect(function()
                        if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
                            placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
                        else
                            placemarker.CFrame = CFrame.new(0, 9999, 0)
                        end
                    end)
            
                    local mt = getrawmetatable(game)
                    local old = mt.__namecall
                    setreadonly(mt, false)
                    mt.__namecall = newcclosure(function(...)
                        local args = {...}
                        if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
                            args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                            return old(unpack(args))
                        end
                        return old(...)
                    end)
            end)
            
            
            local ThirdButton = FirstPage.AddButton("Outfit Changer", function()
                loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\73\110\118\111\111\107\101\114\49\49\47\79\117\116\102\105\116\47\109\97\105\110\47\79\117\116\102\105\116\67\111\112\105\101\114\46\108\117\97\34\44\32\116\114\117\101\41\41\40\41\10")()
            end)
            
            local FourthButton = FirstPage.AddButton("Headless NON FE", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Headless'))()
            end)
            
            local FifthButton = FirstPage.AddButton("Crash", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/GS21Official/DH-TB-Crash/main/Swagmode%20crash%20modified%20(better%20FPS)%20crash'))()
            end)
            
            
            local SixthButton = FirstPage.AddButton("Cash Dropper", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/el0001/DHMarket/main/cutescript'))()
            
        local SeventhButton = FirstPage.AddButton('Knife Reach', function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/zilla2123/animations/main/knife%20reach.lua'))()
            end)
        end)
        
        
        
        
elseif game.PlaceId == 4913581664 then

    local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
Lib.prompt('😳😳😳😳😳😳😳😳😳😳', 'have fun in sideaim.cc')

local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()

local MainUI = UILibrary.Load("sideaim.cc")
local FirstPage = MainUI.AddPage("Home")
local FirstLabel = FirstPage.AddLabel("Section 1")
local FirstButton = FirstPage.AddButton("Fuck all carts", function()
loadstring(game:HttpGet(('https://gist.githubusercontent.com/8e1/6b1126c2aef36732046a16f139c75faf/raw/d1d6df3017104bc67bd3003fc69a2db99218d47c/fasfsafasf'),true))()
end)

local FirstButton = FirstPage.AddButton("Infinite Yield", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)





elseif game.PlaceId == 621129760 then

    local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
    Lib.prompt('😳😳😳😳😳😳😳😳😳😳', 'Have fun in sideaim.cc')
    
    local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
    
    local MainUI = UILibrary.Load("sideaim.cc")
    local FirstPage = MainUI.AddPage("KAT")
    local FirstLabel = FirstPage.AddLabel("KAT")
    local FirstButton = FirstPage.AddButton("Silent Aim", function()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/8e1/270872c80d6950dbeac5a0fd07178140/raw/4a0ef49b9ae969f2ff52d58ec95d18cb27ec1979/SILENTAIMKAT'),true))()
    end)
    
    local FirstButton = FirstPage.AddButton("Admin - Inf Yield", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end)
    end
