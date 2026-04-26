local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local MainWindow = WindUI:CreateWindow({
    Title = "Legendary Hub",
    Icon = "biohazard",
    Author = "Por Math",
    Folder = "LH",
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = false,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            print("clicado")
        end,
    },
    KeySystem = { 
        Enabled = true,
        Key = { "LEG" },
        Note = "Compre a key no nosso server do discord!",
        Thumbnail = {
            Image = "rbxassetid://88082041597741",
            Title = "Legendary Hub",
        },
        URL = "https://discord.gg/WUBZn2EPCK",
        SaveKey = false,
    }
})

MainWindow:Tag({
    Title = "V1",
    Icon = "",
    Color = Color3.fromHex("#FFFF00"),
    Radius = 13,
})

MainWindow:EditOpenButton({
    Title = "Legendary Hub",
    Icon = "biohazard",
    CornerRadius = UDim.new(0,8),
    StrokeThickness = 3,
    Color = ColorSequence.new(
        Color3.fromHex("#03ffea"), 
        Color3.fromHex("#009c8f")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

-- ================= TAB PRINCIPAL =================
local MainTab = MainWindow:Tab({
    Title = "Principal",
    Icon = "house",
    Locked = false,
})

-- ================= BOTÕES PRINCIPAIS =================

MainTab:Button({
    Title = "Atravessar V12🟣",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/GZn1L0PM"))();
    end
})

MainTab:Button({
    Title = "Otimização Linha Transparente 🔗",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/RbC506TY"))();
    end
})

MainTab:Button({
    Title = "Fire Hub🔥",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/iVp2tnCR"))();
    end
})

MainTab:Button({
    Title = "Oliver Atravessador 🗡",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Script-de-atravessar-56285"))()
    end
})

MainTab:Button({
    Title = "Atravessar 👻",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/f6qejm5p/raw"))()
    end
})

MainTab:Button({
    Title = "Esticar Tela 🖥",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/4Sa0uIve/raw"))();
    end
})

MainTab:Button({
    Title = "Sforza Hub🔧",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/pdyfSjzK"))();
    end
})
  
MainTab:Button({
    Title = "Nova Era Hub💎",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/zrszTIQx/raw"))();
    end
})  

MainTab:Button({
    Title = "Zyck 4.5 🇺🇸",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/P2eNOBe2/raw"))();
    end
})
    
MainTab:Button({
    Title = "Slow Otimizer 💍",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/tSoOifGr/raw"))();
    end
})    
  
MainTab:Button({
    Title = "Script Da Debinha🥀",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/9k4tL5Q7/raw"))();
    end
})  

MainTab:Button({
    Title = "Hotdog V4 🌭",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/GzxmSIIn/raw"))();
    end
})

MainTab:Button({
    Title = "Tira Analógico 🕹",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/AJhzcN5G/raw"))();
    end
})

MainTab:Button({
    Title = "Tubaina Hub 🥶",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/xLM92mP5/raw"))();
    end
})

MainTab:Button({
    Title = "Gui Prime Pro⚽️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/xgkQc7Q9"))();
    end
})

MainTab:Button({
    Title = "Atravessar Simples🔥",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/D15v30nW"))();
    end
})

MainTab:Button({
    Title = "Noclip Injusto + reach bola 900 studs🔥",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/hfrDcUm8"))();
    end
})

MainTab:Button({
    Title = "Reach The Void🌑",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/HyAUVhnP"))();
    end
})

MainTab:Button({
    Title = "Passe Forte🦵",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/2Yw8Bv85"))();
    end
})

MainTab:Button({
    Title = "Brookhaven Ultimate🏡",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Ul55j8hu/raw"))();
    end
})

MainTab:Button({
    Title = "K4y The Promission☠️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Of3pO501/raw"))();
    end
})

MainTab:Button({
    Title = "LP Scripts✔️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/yesn20456-crypto/af368f3184c1d34a8f4a9e33d4325d0d/raw/60e8309b99f9e002a55005b2d7905a82b90b70f1/gistfile1.txt"))();
    end
})

MainTab:Button({
    Title = "Atravessar Zyck + Bola Branca🔮",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/UyL8ic0V/raw"))();
    end
})

MainTab:Button({
    Title = "Brazilian Panel🇧🇷",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/x5XX9kiK"))();
    end
})

MainTab:Button({
    Title = "Armando Jr Hub🔥",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/carlosedut11/ArmadinhoJrPorCantonaJr/refs/heads/main/ArmadinhoJrPorCantonaJr.lua"))();
    end
})

MainTab:Button({
    Title = "Water Hub🌊",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Cn805svp"))();
    end
})

MainTab:Button({
    Title = "Otimização🚀",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Davzxxfixroblox/DavzxHubFixLag/refs/heads/main/FixLagHub"))();
    end
})

MainTab:Button({
    Title = "Bola Chiclete⚽️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/ZMHWh8kW/raw"))();
    end
})

MainTab:Button({
    Title = "Lag Switch👣",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/zZo7yoUB/raw"))();
    end
})

MainTab:Button({
    Title = "Bug Do reidorm👑",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/qtsDZHGu"))();
    end
})

MainTab:Button({
    Title = "Pedrizz Bug⚡️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/28LDYic2"))();
    end
})

MainTab:Button({
    Title = "Anti Atravessar Soccer Tool⚽",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/LYWJ6sfF"))();
    end
})

MainTab:Button({
    Title = "Ping Optimizer🧟‍♂️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/kbHL8MZ5"))();
    end
})

MainTab:Button({
    Title = "Brookhaven Optimization🧩",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/5DK3dz5Y"))();
    end
})

MainTab:Button({
    Title = "Glitch Infinity♾️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FpPh3UhN"))();
    end
})

MainTab:Button({
    Title = "Ghost + Reach👻",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/1if0pn7x"))();
    end
})

MainTab:Button({
    Title = "Henrique Drible⚡",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/wJKBdV8A"))();
    end
})

MainTab:Button({
    Title = "Atravessar Tudo👻",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uZ6bvTtF"))();
    end
})

MainTab:Button({
    Title = "Script do Kay V2🔥",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/eXGuwWWE"))();
    end
})

MainTab:Button({
    Title = "Mtzin Pro Max⚡",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/kCKEhh99"))();
    end
})

MainTab:Button({
    Title = "Painel do Kayne🔥",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Frxjj6my"))();
    end
})

MainTab:Button({
    Title = "Kayne Supremo🔥",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/xyS7KQdY"))();
    end
})

MainTab:Button({
    Title = "Anti Ball Pedra + Atravessar⚽",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Z7eZDEj8"))();
    end
})

MainTab:Button({
    Title = "Lucas Hub😈",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/xmbL5T3i"))();
    end
})

MainTab:Button({
    Title = "Brookhaven Painel V2🏠",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/m70Y67h9"))();
    end
})

MainTab:Button({
    Title = "GK Hub (Goleiro Deitado)🧤",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FaBkfBHr"))();
    end
})

MainTab:Button({
    Title = "Muralha Hub🧱",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/UxtmMHm1"))();
    end
})

MainTab:Button({
    Title = "Yashin Ultra🧤",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KmNHLYsb"))();
    end
})

MainTab:Button({
    Title = "Jvz Bug🥷",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/hYyBJna9/raw"))();
    end
})

MainTab:Button({
    Title = "Condução Theus⚽",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/7FAwfRUX/raw"))();
    end
})

MainTab:Button({
    Title = "Reach Do Theus🦿",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/tSYVNcwc/raw"))();
    end
})

MainTab:Button({
    Title = "Anti Ball Pedra⚽",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/59dDHHfr/raw"))();
    end
})

MainTab:Button({
    Title = "Football Master V7⚽",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/I9nocuO2/raw"))();
    end
})

MainTab:Button({
    Title = "Goleiro Hub (Rayfield)🧤",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/cogJvYif/raw"))();
    end
})

MainTab:Button({
    Title = "Football Master V5 Pro⚽",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/77ScQkbz/raw"))();
    end
})

MainTab:Button({
    Title = "Theus Hub🍎",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/bib1MRS8/raw"))();
    end
})

MainTab:Button({
    Title = "Matteo Hub ❄️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Pvf3lqmJ/raw"))();
    end
})

MainTab:Button({
    Title = "Gotto Hub⚽",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/EOizRmIz/raw"))();
    end
})

MainTab:Button({
    Title = "Loved Hub🍷",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/AccDN8CV/raw"))();
    end
})

MainTab:Button({
    Title = "Chute Bomba💣",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/HeRcZpTg/raw"))();
    end
})

MainTab:Button({
    Title = "Painel Spider V2🕷",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/LvYw31OO/raw"))();
    end
})

MainTab:Button({
    Title = "Angel Hub😇",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/679CyrEi/raw"))();
    end
})

MainTab:Button({
    Title = "Samuzx Hub🥶",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/yOVyrBNy/raw"))();
    end
})

MainTab:Button({
    Title = "Brookhaven Panel🏠",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/RGPRtmRg/raw"))();
    end
})

MainTab:Button({
    Title = "Script do Spider V1🕷",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/hutJntDN/raw"))();
    end
})

MainTab:Button({
    Title = "Script do Freezer🧊",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/bWS31I8q/raw"))();
    end
})

MainTab:Button({
    Title = "Papai Cris Menu❤️",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/jI58Il0a/raw"))();
    end
})

MainTab:Button({
    Title = "Hunk Hub🫂",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/ZGDUJNWr/raw"))();
    end
})

-- ================= TAB SCRIPTS ALTERNATIVOS =================
local SATab = MainWindow:Tab({
    Title = "Scripts Alternativos",
    Icon = "shield",
    Locked = false,
})

SATab:Button({
    Title = "Fly🍃",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/IHIgGN9b/raw"))();
    end
})

SATab:Button({
    Title = "Coquette Hub🎀",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Coquette-Hub-41921"))();
    end
})

SATab:Button({
    Title = "Hexagon Client🔘",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nxvap/hexagon/refs/heads/main/brookhaven"))();
    end
})

SATab:Button({
    Title = "Script De Emotes🕺",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/lAdApmz4/raw"))();
    end
})

-- ================= TAB CONFIGURAÇÕES =================
local ConfigTab = MainWindow:Tab({
    Title = "Configurações",
    Icon = "cog",
    Locked = false,
})

local Camera = workspace.CurrentCamera

ConfigTab:Slider({
    Title = "FOV",
    Step = 1,
    Value = {
        Min = 20,
        Max = 120,
        Default = 70,
    },
    Callback = function(value)
        if Camera then
            Camera.FieldOfView = value
        end
    end
})

ConfigTab:Slider({
    Title = "Velocidade (Speed)",
    Step = 1,
    Value = {
        Min = 16,
        Max = 200,
        Default = 16,
    },
    Callback = function(value)
        local char = game.Players.LocalPlayer.Character
        local hum = char and char:FindFirstChild("Humanoid")
        if hum then 
            hum.WalkSpeed = value 
        end
    end
})

ConfigTab:Slider({
    Title = "Força de Pulo (Jump)",
    Step = 1,
    Value = {
        Min = 50,
        Max = 300,
        Default = 50,
    },
    Callback = function(value)
        local char = game.Players.LocalPlayer.Character
        local hum = char and char:FindFirstChild("Humanoid")
        if hum then 
            hum.JumpPower = value 
        end
    end
})

ConfigTab:Button({
    Title = "Destruir Interface🔨",
    Locked = false,
    Callback = function()
        MainWindow:Destroy()
    end
})

print("✅ Legendary Hub (Versão Completa) carregado!")
