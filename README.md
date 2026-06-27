local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- Criar e aplicar tema Star
WindUI:AddTheme({
    Name = "Star",
    Accent = Color3.fromHex("#FFD700"),
    Background = Color3.fromHex("#000000"),
    Outline = Color3.fromHex("#FFD700"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#FFD700"),
    Button = Color3.fromHex("#FFD700"),
    Icon = Color3.fromHex("#FFD700"),
})

local MainWindow = WindUI:CreateWindow({
    Title = "Star Hub",
    Icon = "star",
    Author = "Por Math & Brito",
    Folder = "SH",
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = false,
    Theme = "Star",
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
        Key = { "29082014" },
        Note = "Compre a key no nosso server do discord!",
        Thumbnail = {
            Image = "rbxassetid://88082041597741",
            Title = "Star Hub",
        },
        URL = "https://discord.gg/WUBZn2EPCK",
        SaveKey = false,
    }
})

MainWindow:Tag({
    Title = "V1",
    Icon = "",
    Color = Color3.fromHex("#FFD700"),
    Radius = 13,
})

MainWindow:EditOpenButton({
    Title = "Anti Pulo",
    Icon = "shield-ban",
    CornerRadius = UDim.new(0,8),
    StrokeThickness = 3,
    Color = ColorSequence.new(
        Color3.fromHex("#FFD700"),
        Color3.fromHex("#DAA520")
    ),
    OnlyMobile = true,
    Enabled = true,
    Draggable = true,
})

-- ================= TAB PRINCIPAL =================
local MainTab = MainWindow:Tab({
    Title = "Principal",
    Icon = "house",
    Locked = false,
})

-- =====================================================
-- SEÇÃO 1: ZYCK SCRIPTS
-- =====================================================
MainTab:Section({
    Title = "Zyck Scripts",
    Icon = "star",
})

MainTab:Button({
    Title = "Zyck Control 🌀",
    Desc = "Key: 123ZYCK",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/pA4bytOQ/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Zyck 4.5 🇺🇸",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/P2eNOBe2/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Zyck ☠️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/WYeG9ypc"))()
        end)
    end
})

MainTab:Button({
    Title = "Zyck + Mtzin + Soccer + Nova Era Hub 🌈",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/fm7nN4KF"))()
        end)
    end
})

-- =====================================================
-- SEÇÃO 2: ATRAVESSAR (ÍCONE CORRIGIDO)
-- =====================================================
MainTab:Section({
    Title = "Atravessar",
    IcoStar"footprints",
})

MainTab:Button({
    Title = "Atravessar Theus 👻",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/7e1VxPgW/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "PJ Atravessa 🧧",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/CrhmqFtx/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Atravessar V12🟣",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/GZn1L0PM"))()
        end)
    end
})

MainTab:Button({
    Title = "Atravessar Simples🔥",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/D15v30nW"))()
        end)
    end
})

MainTab:Button({
    Title = "Atravessar Zyck + Bola Branca🔮",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/UyL8ic0V/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Oliver Atravessador 🗡",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/GTHc3EnC/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Atravessar Pikolandia 💗",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/FMwl1GLk/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Anti Atravessar Soccer Tool⚽",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/LYWJ6sfF"))()
        end)
    end
})

-- =====================================================
-- SEÇÃO 3: ANTI PULO
-- =====================================================
MainTab:Section({
    Title = "Anti Pulo",
    Icon = "shield-ban",
})

MainTab:Button({
    Title = "Anti Pulo + Atravessar + Empurrar ⚽️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/sIhEJFAz/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Anti Pulo Foldenxz 🚫",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/d2T3QxGt"))()
        end)
    end
})

MainTab:Button({
    Title = "Anti Pulo Elias 🚫",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/mgzrnsbr"))()
        end)
    end
})

MainTab:Button({
    Title = "Lc Pjl Anti Pulo 🚫",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/MCTcaHZq"))()
        end)
    end
})

MainTab:Button({
    Title = "Anti Pulo Luke Jr 🔆",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/d0yvvV78/raw"))()
        end)
    end
})

-- =====================================================
-- SEÇÃO 4: REACH
-- =====================================================
MainTab:Section({
    Title = "Reach",
    Icon = "hand",
})

MainTab:Button({
    Title = "Reach Forte Do Morales🤣",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/ckJb1cXM/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Theus Reach V2 🦿",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/pm4pyxm4"))()
        end)
    end
})

MainTab:Button({
    Title = "Reach The Void🌑",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/1fVPQXXM/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Reach Do Theus🦿",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/tSYVNcwc/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Ghost + Reach👻",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/1if0pn7x"))()
        end)
    end
})

MainTab:Button({
    Title = "Noclip Injusto + reach bola 900 studs🔥",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/hfrDcUm8"))()
        end)
    end
})

-- =====================================================
-- SEÇÃO 5: BOLA
-- =====================================================
MainTab:Section({
    Title = "Bola",
    Icon = "circle",
})

MainTab:Button({
    Title = "Ball Chiclete ⚽️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/AzBz08Dq/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Bola Roxa 🟣",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/lGbsdxob/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Bola Chiclete⚽️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/ZMHWh8kW/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Anti Ball Pedra + Atravessar⚽",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/Z7eZDEj8"))()
        end)
    end
})

MainTab:Button({
    Title = "Anti Ball Pedra⚽",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/59dDHHfr/raw"))()
        end)
    end
})

-- =====================================================
-- SEÇÃO 6: HUBS E PAINEIS
-- =====================================================
MainTab:Section({
    Title = "Hubs e Painéis",
    Icon = "box",
})

MainTab:Button({
    Title = "DD Osama V5 🇺🇸",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/NxpP7iWb"))()
        end)
    end
})

MainTab:Button({
    Title = "Fuzzy Bugs ♟️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/rsiBF3CL/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Anti Roubo Bola ⚽️",
    Locked = false,
    Desc = "Key: KWLS",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/4GXQEjAs"))()
        end)
    end
})

MainTab:Button({
    Title = "Brito Hub ⚡️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/e8i6ytza"))()
        end)
    end
})

MainTab:Button({
    Title = "Sixxinho Hub 🔒",
    Locked = false,
    Desc = "Key: SWGK",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/josegaviao888-alt/Six-Hub-Privdo/refs/heads/main/Six%20hUB"))()
        end)
    end
})

MainTab:Button({
    Title = "Six Hub 6️⃣",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/MDhqkib4"))()
        end)
    end
})

MainTab:Button({
    Title = "Brazilian Panel V2 🇧🇷",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/geau1Zy7"))()
        end)
    end
})

MainTab:Button({
    Title = "Brazilian Panel🇧🇷",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/x5XX9kiK"))()
        end)
    end
})

MainTab:Button({
    Title = "Nova Era Hub💎",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/FIyTYLlC/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Fire Hub🔥",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/iVp2tnCR"))()
        end)
    end
})

MainTab:Button({
    Title = "Sforza Hub🔧",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/pdyfSjzK"))()
        end)
    end
})

MainTab:Button({
    Title = "Cantona Hub 🏡",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/Ul55j8hu/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Armando Jr Hub🔥",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/carlosedut11/ArmadinhoJrPorCantonaJr/refs/heads/main/ArmadinhoJrPorCantonaJr.lua"))()
        end)
    end
})

MainTab:Button({
    Title = "Water Hub🌊",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/vcwYKiUn/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Lukinhas Hub 💙",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/dhxQnF4b"))()
        end)
    end
})

MainTab:Button({
    Title = "Pirulito Hub 🍭",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/A0xCHTGM"))()
        end)
    end
})

MainTab:Button({
    Title = "Toni Kroos 🍀",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/bCL22UZw"))()
        end)
    end
})

MainTab:Button({
    Title = "X10 Premium Hub 💎",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/MW2Zyv6z"))()
        end)
    end
})

MainTab:Button({
    Title = "Soccer Dribble Hub ⚡️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/gwZKjbVM"))()
        end)
    end
})

MainTab:Button({
    Title = "Puyol V3 ⚡️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/bMLRRKwG"))()
        end)
    end
})

MainTab:Button({
    Title = "Gui Prime Pro⚽️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/xgkQc7Q9"))()
        end)
    end
})

MainTab:Button({
    Title = "Lucas Hub😈",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/xmbL5T3i"))()
        end)
    end
})

MainTab:Button({
    Title = "Matteo Hub ❄️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/Pvf3lqmJ/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Gotto Hub⚽",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/EOizRmIz/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Loved Hub🍷",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/AccDN8CV/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Angel Hub😇",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/679CyrEi/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Samuzx Hub🥶",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/yOVyrBNy/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Brookhaven Panel🏠",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/RGPRtmRg/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "GK Hub (Goleiro Deitado)🧤",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/FaBkfBHr"))()
        end)
    end
})

MainTab:Button({
    Title = "Muralha Hub🧱",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/UxtmMHm1"))()
        end)
    end
})

MainTab:Button({
    Title = "Yashin Ultra🧤",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/KmNHLYsb"))()
        end)
    end
})

MainTab:Button({
    Title = "Goleiro Hub (Rayfield)🧤",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/cogJvYif/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Theus Hub🍎",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/bib1MRS8/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Painel Spider V2🕷",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/LvYw31OO/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Script do Spider V1🕷",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/hutJntDN/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Hub Da Leandrinha⚽️ (? KKKKKKKK)",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/q5CxCNyi"))()
        end)
    end
})

MainTab:Button({
    Title = "Caga Na Roupa Hub 💩",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/eKFExNPG/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Script Da Debinha🥀",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/9k4tL5Q7/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Hotdog V4 🌭",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/GzxmSIIn/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Tubaina Hub 🥶",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/xLM92mP5/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Brookhaven Painel V2🏠",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/m70Y67h9"))()
        end)
    end
})

MainTab:Button({
    Title = "Papai Cris Menu❤️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/jI58Il0a/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Hunk Hub🫂",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/ZGDUJNWr/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Legendary Defender ⚔️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/s91y0AFs"))()
        end)
    end
})

MainTab:Button({
    Title = "X Hub ❌️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/yXuzlTpQ/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "K4y The Promission☠️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/UtzKwcGt/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "LP Scripts✔️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://gist.githubusercontent.com/yesn20456-crypto/af368f3184c1d34a8f4a9e33d4325d0d/raw/60e8309b99f9e002a55005b2d7905a82b90b70f1/gistfile1.txt"))()
        end)
    end
})

MainTab:Button({
    Title = "Pedrizz Bug⚡️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/28LDYic2"))()
        end)
    end
})

MainTab:Button({
    Title = "Glitch Infinity♾️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/FpPh3UhN"))()
        end)
    end
})

MainTab:Button({
    Title = "Script do Kay V2🔥",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/eXGuwWWE"))()
        end)
    end
})

MainTab:Button({
    Title = "Mtzin Pro Max ⚡️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/kCKEhh99"))()
        end)
    end
})

MainTab:Button({
    Title = "Painel do Kayne🔥",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/Frxjj6my"))()
        end)
    end
})

MainTab:Button({
    Title = "Kayne Supremo🔥",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/xyS7KQdY"))()
        end)
    end
})

MainTab:Button({
    Title = "Football Master V7⚽",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/I9nocuO2/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Football Master V5 Pro⚽",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/77ScQkbz/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Script do Freezer🧊",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/bWS31I8q/raw"))()
        end)
    end
})

-- =====================================================
-- SEÇÃO 7: OTIMIZAÇÕES E UTILIDADES (ÍCONE CORRIGIDO)
-- =====================================================
MainTab:Section({
    Title = "Otimizações e Utilidades",
    Icon = "wrench",
})

MainTab:Button({
    Title = "Mega Otimização Brookhaven 🏠",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/GzrqQWkx"))()
        end)
    end
})

MainTab:Button({
    Title = "Otimização Linha Transparente 🔗",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/RbC506TY"))()
        end)
    end
})

MainTab:Button({
    Title = "Otimização🚀",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Davzxxfixroblox/DavzxHubFixLag/refs/heads/main/FixLagHub"))()
        end)
    end
})

MainTab:Button({
    Title = "Ping Optimizer🧟‍♂️",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/kbHL8MZ5"))()
        end)
    end
})

MainTab:Button({
    Title = "Brookhaven Optimization🧩",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/5DK3dz5Y"))()
        end)
    end
})

MainTab:Button({
    Title = "Slow Otimizer 💍",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/tSoOifGr/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Esticar Tela 🖥",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/4Sa0uIve/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Tira Analógico 🕹",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/AJhzcN5G/raw"))()
        end)
    end
})

-- =====================================================
-- SEÇÃO 8: DIVERSOS
-- =====================================================
MainTab:Section({
    Title = "Diversos",
    Icon = "plus",
})

MainTab:Button({
    Title = "Limpar Tela 💻",
    Desc = "Esse script so funciona com scripts do Star Hub.",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/FwY4L6qM/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Teste De Campo 🏑",
    Locked = false,
    Desc = "Isso é um teste! Use por sua responsabilidade.",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/dNWJ5ot7/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Passe Forte🦵",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/2Yw8Bv85"))()
        end)
    end
})

MainTab:Button({
    Title = "Lag Switch👣",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/zZo7yoUB/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Bug Do reidorm👑",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/qtsDZHGu"))()
        end)
    end
})

MainTab:Button({
    Title = "Henrique Drible ⚡",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/wJKBdV8A"))()
        end)
    end
})

MainTab:Button({
    Title = "Jvz Bug🥷",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/hYyBJna9/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Condução Theus⚽",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/7FAwfRUX/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Chute Bomba💣",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/HeRcZpTg/raw"))()
        end)
    end
})

MainTab:Button({
    Title = "Script De Magnetismo 🧲",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/SNttOINq/raw"))()
        end)
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
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/IHIgGN9b/raw"))()
        end)
    end
})

SATab:Button({
    Title = "Coquette Hub🎀",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Coquette-Hub-41921"))()
        end)
    end
})

SATab:Button({
    Title = "Hexagon Client🔘",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/nxvap/hexagon/refs/heads/main/brookhaven"))()
        end)
    end
})

SATab:Button({
    Title = "Script De Emotes🕺",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastefy.app/lAdApmz4/raw"))()
        end)
    end
})

SATab:Button({
    Title = "Crosshair 🎯",
    Locked = false,
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Custom-Crosshair-Gui-237611"))()
        end)
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
        pcall(function()
            if Camera then
                Camera.FieldOfView = value
            end
        end)
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
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            local hum = char and char:FindFirstChild("Humanoid")
            if hum then 
                hum.WalkSpeed = value 
            end
        end)
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
        pcall(function()
            local char = game.Players.LocalPlayer.Character
            local hum = char and char:FindFirstChild("Humanoid")
            if hum then 
                hum.JumpPower = value 
            end
        end)
    end
})

ConfigTab:Button({
    Title = "Destruir Interface🔨",
    Locked = false,
    Callback = function()
        MainWindow:Destroy()
    end
})

print("✅ Star Hub Carregado!")
