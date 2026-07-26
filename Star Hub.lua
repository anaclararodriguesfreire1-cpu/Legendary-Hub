-- ============================================
-- 🚀 ECLIPSE HUB - VERSÃO OTIMIZADA
-- ============================================

-- ========== BIBLIOTECAS E SERVIÇOS ==========
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local Camera = workspace.CurrentCamera

local player = Players.LocalPlayer
local userName = player.Name
local displayName = player.DisplayName
local userId = player.UserId

local request_func = http_request or request

-- ========== WEBHOOK ==========
local WEBHOOK_URL = "https://discord.com/api/webhooks/1521158004186288209/a1uMv_SXlItQWtPftGEhgHnZdZ-JbfgplvTyMrEP2x_Kk26MlN4uqAnVIkJzbOWvNGyT"

-- ========== WHITELIST ==========
local WHITELIST = {
    "mbape9joat1", "Yasmin_xx778", "RATO244764", "poderoso4424",
    "Fastzadas", "Viniixz36", "Souzateatravessouokd", "pequenolittlebk3",
    "arte_thetravessa", "Torresgot9", "Tobias_12376", "Aliban_32",
    "RD585585", "Miguel_Jr927", "Storksa_777", "Pedro_Davix7", "matheosmk",
}

local SECRET_USERS = { "Matheosmk", "mbape9joat1" }

-- ========== FUNÇÕES AUXILIARES ==========
local function isInList(list, name)
    for _, item in ipairs(list) do
        if string.lower(name) == string.lower(item) then
            return true
        end
    end
    return false
end

local function sendNotification(title, text, duration)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 5,
        })
    end)
end

local function loadScript(url)
    pcall(function()
        loadstring(game:HttpGet(url))()
    end)
end

local function sendWebhook(embed)
    pcall(function()
        request_func({
            Url = WEBHOOK_URL,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = HttpService:JSONEncode(embed)
        })
    end)
end

-- ========== VERIFICAÇÕES ==========
local isWhitelisted = isInList(WHITELIST, userName)
local hasSecretAccess = isInList(SECRET_USERS, userName)

if not isWhitelisted then
    sendNotification("⛔ ACESSO NEGADO!", "❌ Você NÃO está na whitelist!\nUsuário: " .. userName, 10)
    
    sendWebhook({
        embeds = {{
            title = "⛔ ACESSO NEGADO - WHITELIST",
            description = string.format("**%s** tentou executar mas foi BLOQUEADO!\n\n**Usuário:** %s\n**User ID:** %s\n**PlaceId:** %s",
                displayName, userName, userId, game.PlaceId),
            color = 0xFF0000
        }}
    })
    
    error("🚫 Usuário não autorizado!")
    return
end

-- ========== NOTIFICAÇÕES INICIAIS ==========
sendNotification("✅ ACESSO LIBERADO!", "Bem-vindo " .. displayName .. "!\nAproveite os scripts! 🚀")

sendWebhook({
    embeds = {{
        title = "✅ USUÁRIO AUTORIZADO!",
        description = string.format("**%s** executou o script!\n\n**Usuário:** %s\n**User ID:** %s\n**PlaceId:** %s",
            displayName, userName, userId, game.PlaceId),
        color = 0x00FF00
    }}
})

-- ========== CARREGAR WINDUI ==========
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

if not WindUI then
    sendNotification("❌ ERRO", "Falha ao carregar WindUI!")
    return
end

-- ========== CONFIGURAR TEMA ==========
WindUI:AddTheme({
    Name = "Eclipse",
    Accent = Color3.fromHex("#9B59B6"),
    Background = Color3.fromHex("#1A0A2E"),
    Outline = Color3.fromHex("#F1C40F"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#F1C40F"),
    Button = Color3.fromHex("#8E44AD"),
    Icon = Color3.fromHex("#F1C40F"),
})

-- ========== CRIAR JANELA PRINCIPAL ==========
local MainWindow = WindUI:CreateWindow({
    Title = "Eclipse Hub",
    Icon = "eclipse",
    Author = "Por Math & RDX",
    Folder = "Anti Pulo",
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = false,
    Theme = "Eclipse",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
})

if not MainWindow then
    sendNotification("❌ ERRO", "Falha ao criar a interface!")
    return
end

-- ========== CONFIGURAÇÕES DA JANELA ==========
pcall(function()
    MainWindow:Tag({ Title = "V1", Color = Color3.fromHex("#F1C40F"), Radius = 13 })
    MainWindow:EditOpenButton({
        Title = "Anti Pulo",
        Icon = "shield-ban",
        CornerRadius = UDim.new(0, 8),
        StrokeThickness = 3,
        Color = ColorSequence.new(Color3.fromHex("#9B59B6"), Color3.fromHex("#F1C40F")),
        OnlyMobile = true,
        Enabled = true,
        Draggable = true,
    })
end)

-- ========== CRIAÇÃO DE SEÇÕES ==========
local function createSection(tab, title, icon)
    return tab:Section({ Title = title, Icon = icon or "circle" })
end

local function createButton(tab, title, url)
    tab:Button({
        Title = title,
        Locked = false,
        Callback = function() loadScript(url) end
    })
end

local function createButtonList(tab, scripts)
    for _, script in ipairs(scripts) do
        createButton(tab, script[1], script[2])
    end
end

-- ========== TAB PRINCIPAL ==========
local MainTab = MainWindow:Tab({
    Title = "Principal",
    Icon = "house",
    Locked = false,
})

-- Seção 1: Zyck Scripts
createSection(MainTab, "Zyck Scripts", "star")
local zyckScripts = {
    {"Zyck Control 🌀", "https://pastefy.app/pA4bytOQ/raw"},
    {"Zyck 4.5 🇺🇸", "https://pastefy.app/P2eNOBe2/raw"},
    {"Zyck ☠️", "https://pastebin.com/raw/WYeG9ypc"},
    {"Zyck + Mtzin + Soccer + Nova Era Hub 🌈", "https://pastebin.com/fm7nN4KF"},
}
createButtonList(MainTab, zyckScripts)

-- Seção 2: Atravessar
createSection(MainTab, "Atravessar", "footprints")
local atravessarScripts = {
    {"Atravessar Theus 👻", "https://pastefy.app/7e1VxPgW/raw"},
    {"PJ Atravessa 🧧", "https://pastefy.app/CrhmqFtx/raw"},
    {"Atravessar V12🟣", "https://pastebin.com/raw/GZn1L0PM"},
    {"Atravessar Simples🔥", "https://pastebin.com/raw/D15v30nW"},
    {"Atravessar Zyck + Bola Branca🔮", "https://pastefy.app/UyL8ic0V/raw"},
    {"Oliver Atravessador 🗡", "https://pastefy.app/GTHc3EnC/raw"},
    {"Atravessar Pikolandia 💗", "https://pastefy.app/FMwl1GLk/raw"},
    {"Anti Atravessar Soccer Tool⚽", "https://pastebin.com/raw/LYWJ6sfF"},
    {"Atravessar Lendário ✡️", "https://pastebin.com/raw/zh9P9AqV"},
    {"Atravessar 🟪", "https://pastefy.app/KdhVVlaC/raw"},
    {"Atravessar Seletivo (Mobile) ☁️", "https://pastefy.app/z7GBu0u9/raw"},
    {"Atravessar Seletivo (PC) ☁️", "https://pastefy.app/z7GBu0u9/raw"},
}
createButtonList(MainTab, atravessarScripts)

-- Seção 3: Anti Pulo
createSection(MainTab, "Anti Pulo", "shield-ban")
local antiPuloScripts = {
    {"Anti Pulo + Atravessar + Empurrar ⚽️", "https://pastefy.app/sIhEJFAz/raw"},
    {"Anti Pulo Foldenxz 🚫", "https://pastebin.com/raw/d2T3QxGt"},
    {"Anti Pulo Elias 🚫", "https://pastebin.com/raw/mgzrnsbr"},
    {"Lc Pjl Anti Pulo 🚫", "https://pastebin.com/raw/MCTcaHZq"},
    {"Anti Pulo Luke Jr 🔆", "https://pastefy.app/d0yvvV78/raw"},
    {"Anti Pulo D Deus 👑", "https://pastefy.app/YwPd6C6B/raw"},
}
createButtonList(MainTab, antiPuloScripts)

-- Seção 4: Reach
createSection(MainTab, "Reach", "hand")
local reachScripts = {
    {"Reach Forte Do Morales🤣", "https://pastefy.app/ckJb1cXM/raw"},
    {"Theus Reach V2 🦿", "https://pastebin.com/raw/pm4pyxm4"},
    {"Reach The Void🌑", "https://pastefy.app/1fVPQXXM/raw"},
    {"Reach Do Theus🦿", "https://pastefy.app/tSYVNcwc/raw"},
    {"Ghost + Reach👻", "https://pastebin.com/raw/1if0pn7x"},
    {"Noclip Injusto + reach bola 900 studs🔥", "https://pastebin.com/raw/hfrDcUm8"},
}
createButtonList(MainTab, reachScripts)

-- Seção 5: Bola
createSection(MainTab, "Bola", "circle")
local bolaScripts = {
    {"Ball Chiclete ⚽️", "https://pastefy.app/AzBz08Dq/raw"},
    {"Bola Roxa 🟣", "https://pastefy.app/lGbsdxob/raw"},
    {"Bola Chiclete⚽️", "https://pastefy.app/ZMHWh8kW/raw"},
    {"Anti Ball Pedra + Atravessar⚽", "https://pastebin.com/raw/Z7eZDEj8"},
    {"Anti Ball Pedra⚽", "https://pastefy.app/59dDHHfr/raw"},
}
createButtonList(MainTab, bolaScripts)

-- Seção 6: Hubs e Painéis
createSection(MainTab, "Hubs e Painéis", "box")
local hubs = {
    {"DD Osama V5 🇺🇸", "https://pastebin.com/raw/NxpP7iWb"},
    {"Fuzzy Bugs ♟️", "https://pastefy.app/rsiBF3CL/raw"},
    {"Anti Roubo Bola ⚽️", "https://pastebin.com/raw/4GXQEjAs"},
    {"Brito Hub ⚡️", "https://pastebin.com/raw/e8i6ytza"},
    {"Sixxinho Hub 🔒", "https://raw.githubusercontent.com/josegaviao888-alt/Six-Hub-Privdo/refs/heads/main/Six%20hUB"},
    {"Six Hub 6️⃣", "https://pastebin.com/raw/MDhqkib4"},
    {"Brazilian Panel V2 🇧🇷", "https://pastebin.com/raw/geau1Zy7"},
    {"Brazilian Panel🇧🇷", "https://pastebin.com/raw/x5XX9kiK"},
    {"Nova Era Hub💎", "https://pastefy.app/FIyTYLlC/raw"},
    {"Fire Hub🔥", "https://pastebin.com/raw/iVp2tnCR"},
    {"Sforza Hub🔧", "https://pastebin.com/raw/pdyfSjzK"},
    {"Cantona Hub 🏡", "https://pastefy.app/Ul55j8hu/raw"},
    {"Armando Jr Hub🔥", "https://raw.githubusercontent.com/carlosedut11/ArmadinhoJrPorCantonaJr/refs/heads/main/ArmadinhoJrPorCantonaJr.lua"},
    {"Water Hub🌊", "https://pastefy.app/vcwYKiUn/raw"},
    {"Lukinhas Hub 💙", "https://pastebin.com/raw/dhxQnF4b"},
    {"Pirulito Hub 🍭", "https://pastebin.com/raw/A0xCHTGM"},
    {"Toni Kroos 🍀", "https://pastebin.com/raw/bCL22UZw"},
    {"X10 Premium Hub 💎", "https://pastebin.com/raw/MW2Zyv6z"},
    {"Soccer Dribble Hub ⚡️", "https://pastebin.com/raw/gwZKjbVM"},
    {"Puyol V3 ⚡️", "https://pastebin.com/raw/bMLRRKwG"},
    {"Gui Prime Pro⚽️", "https://pastebin.com/raw/xgkQc7Q9"},
    {"Lucas Hub😈", "https://pastebin.com/raw/xmbL5T3i"},
    {"Matteo Hub ❄️", "https://pastefy.app/Pvf3lqmJ/raw"},
    {"Gotto Hub⚽", "https://pastefy.app/EOizRmIz/raw"},
    {"Loved Hub🍷", "https://pastefy.app/AccDN8CV/raw"},
    {"Angel Hub😇", "https://pastefy.app/679CyrEi/raw"},
    {"Samuzx Hub🥶", "https://pastefy.app/yOVyrBNy/raw"},
    {"Brookhaven Panel🏠", "https://pastefy.app/RGPRtmRg/raw"},
    {"GK Hub (Goleiro Deitado)🧤", "https://pastebin.com/raw/FaBkfBHr"},
    {"Muralha Hub🧱", "https://pastebin.com/raw/UxtmMHm1"},
    {"Yashin Ultra🧤", "https://pastebin.com/raw/KmNHLYsb"},
    {"Goleiro Hub (Rayfield)🧤", "https://pastefy.app/cogJvYif/raw"},
    {"Theus Hub🍎", "https://pastefy.app/bib1MRS8/raw"},
    {"Painel Spider V2🕷", "https://pastefy.app/LvYw31OO/raw"},
    {"Script do Spider V1🕷", "https://pastefy.app/hutJntDN/raw"},
    {"Hub Da Leandrinha⚽️", "https://pastebin.com/raw/q5CxCNyi"},
    {"Caga Na Roupa Hub 💩", "https://pastefy.app/eKFExNPG/raw"},
    {"Script Da Debinha🥀", "https://pastefy.app/9k4tL5Q7/raw"},
    {"Hotdog V4 🌭", "https://pastefy.app/GzxmSIIn/raw"},
    {"Tubaina Hub 🥶", "https://pastefy.app/xLM92mP5/raw"},
    {"Brookhaven Painel V2🏠", "https://pastebin.com/raw/m70Y67h9"},
    {"Papai Cris Menu❤️", "https://pastefy.app/jI58Il0a/raw"},
    {"Hunk Hub🫂", "https://pastefy.app/ZGDUJNWr/raw"},
    {"Legendary Defender ⚔️", "https://pastebin.com/raw/s91y0AFs"},
    {"X Hub ❌️", "https://pastefy.app/yXuzlTpQ/raw"},
    {"K4y The Promission☠️", "https://pastefy.app/UtzKwcGt/raw"},
    {"LP Scripts✔️", "https://gist.githubusercontent.com/yesn20456-crypto/af368f3184c1d34a8f4a9e33d4325d0d/raw/60e8309b99f9e002a55005b2d7905a82b90b70f1/gistfile1.txt"},
    {"Pedrizz Bug⚡️", "https://pastebin.com/raw/28LDYic2"},
    {"Glitch Infinity♾️", "https://pastebin.com/raw/FpPh3UhN"},
    {"Script do Kay V2🔥", "https://pastebin.com/raw/eXGuwWWE"},
    {"Mtzin Pro Max ⚡️", "https://pastebin.com/raw/kCKEhh99"},
    {"Painel do Kayne🔥", "https://pastebin.com/raw/Frxjj6my"},
    {"Kayne Supremo🔥", "https://pastebin.com/raw/xyS7KQdY"},
    {"Football Master V7⚽", "https://pastefy.app/I9nocuO2/raw"},
    {"Football Master V5 Pro⚽", "https://pastefy.app/77ScQkbz/raw"},
    {"Script do Freezer🧊", "https://pastefy.app/bWS31I8q/raw"},
    {"Piu V5 ㊗️", "https://pastefy.app/ZTjSqELh/raw"},
    {"Royal Shadow ☂️", "https://pastefy.app/Y6yKS7DD/raw"},
    {"Armando Shop 👑", "https://pastebin.com/raw/9uJjEgB1"},
    {"Mega Tardelli 🌩", "https://pastefy.app/9K9ornyQ/raw"},
    {"Bugador Otimizado 🔥", "https://pastebin.com/raw/rUqNTHNa"},
    {"Painel Angolano 🇦🇴", "https://pastefy.app/pXmmHUly/raw"},
    {"Kay The Promission 2.0 2️⃣", "https://pastebin.com/raw/a1E9UYMp"},
    {"Bug do reidorm👑", "https://pastebin.com/raw/qtsDZHGu"},
    {"Jvz Bug🥷", "https://pastefy.app/hYyBJna9/raw"},
    {"Script Diaz ⚖️", "https://pastefy.app/KvAq9KB1/raw"},
}
createButtonList(MainTab, hubs)

-- Seção 7: Otimizações
createSection(MainTab, "Otimizações e Utilidades", "wrench")
local otimizacoes = {
    {"Mega Otimização Brookhaven 🏠", "https://pastebin.com/raw/GzrqQWkx"},
    {"Otimização Muda Cor do Campo 🎨", "https://pastebin.com/raw/Zfjqvyzn"},
    {"Otimização Slow 🐢", "https://pastebin.com/raw/gX2QzCQ4"},
    {"Otimização Linha Transparente 🔗", "https://pastebin.com/raw/RbC506TY"},
    {"Otimização🚀", "https://raw.githubusercontent.com/Davzxxfixroblox/DavzxHubFixLag/refs/heads/main/FixLagHub"},
    {"Ping Optimizer🧟‍♂️", "https://pastebin.com/raw/kbHL8MZ5"},
    {"Brookhaven Optimization🧩", "https://pastebin.com/raw/5DK3dz5Y"},
    {"Slow Otimizer 💍", "https://pastefy.app/tSoOifGr/raw"},
    {"Esticar Tela 🖥", "https://pastefy.app/4Sa0uIve/raw"},
    {"Tira Analógico 🕹", "https://pastefy.app/AJhzcN5G/raw"},
    {"Exit Lag Mobile ⛔️", "https://pastefy.app/KEfkfhsr/raw"},
}
createButtonList(MainTab, otimizacoes)

-- Seção 8: Diversos
createSection(MainTab, "Diversos", "plus")
local diversos = {
    {"Limpar Tela 💻", "https://pastefy.app/FwY4L6qM/raw"},
    {"Teste De Campo 🏑", "https://pastefy.app/dNWJ5ot7/raw"},
    {"Passe Forte🦵", "https://pastebin.com/raw/2Yw8Bv85"},
    {"Lag Switch👣", "https://pastefy.app/zZo7yoUB/raw"},
    {"Henrique Drible ⚡", "https://pastebin.com/raw/wJKBdV8A"},
    {"Condução Theus⚽", "https://pastefy.app/7FAwfRUX/raw"},
    {"Chute Bomba💣", "https://pastefy.app/HeRcZpTg/raw"},
    {"Script De Magnetismo 🧲", "https://pastefy.app/SNttOINq/raw"},
}
createButtonList(MainTab, diversos)

-- ========== SEÇÃO ESCONDIDA ==========
if hasSecretAccess then
    local SecretTab = MainWindow:Tab({
        Title = "🔒 Secreto",
        Icon = "lock",
        Locked = false,
    })
    
    createSection(SecretTab, "Scripts Exclusivos", "key")
    createButton(SecretTab, "Condução ⚽️", "https://pastefy.app/IITKp7Yc/raw")
    
    sendNotification("🔓 ACESSO SECRETO!", "Você tem acesso à seção secreta! 🤫", 5)
end

-- ========== TAB SCRIPTS ALTERNATIVOS ==========
local SATab = MainWindow:Tab({
    Title = "Scripts Alternativos",
    Icon = "shield",
    Locked = false,
})

local alternativos = {
    {"Fly🍃", "https://pastefy.app/IHIgGN9b/raw"},
    {"Coquette Hub🎀", "https://rawscripts.net/raw/Brookhaven-RP-Coquette-Hub-41921"},
    {"Hexagon Client🔘", "https://raw.githubusercontent.com/nxvap/hexagon/refs/heads/main/brookhaven"},
    {"Script De Emotes🕺", "https://pastefy.app/lAdApmz4/raw"},
    {"Crosshair 🎯", "https://rawscripts.net/raw/Universal-Script-Custom-Crosshair-Gui-237611"},
}
createButtonList(SATab, alternativos)

-- ========== TAB CONFIGURAÇÕES ==========
local ConfigTab = MainWindow:Tab({
    Title = "Configurações",
    Icon = "cog",
    Locked = false,
})

-- Sliders
ConfigTab:Slider({
    Title = "FOV",
    Step = 1,
    Value = { Min = 20, Max = 120, Default = 70 },
    Callback = function(value)
        pcall(function() Camera.FieldOfView = value end)
    end
})

ConfigTab:Slider({
    Title = "Velocidade (Speed)",
    Step = 1,
    Value = { Min = 16, Max = 200, Default = 16 },
    Callback = function(value)
        pcall(function()
            local hum = player.Character and player.Character:FindFirstChild("Humanoid")
            if hum then hum.WalkSpeed = value end
        end)
    end
})

ConfigTab:Slider({
    Title = "Força de Pulo (Jump)",
    Step = 1,
    Value = { Min = 50, Max = 300, Default = 50 },
    Callback = function(value)
        pcall(function()
            local hum = player.Character and player.Character:FindFirstChild("Humanoid")
            if hum then hum.JumpPower = value end
        end)
    end
})

-- Botão Destruir
ConfigTab:Button({
    Title = "Destruir Interface 🔨",
    Locked = false,
    Callback = function()
        pcall(function()
            if MainWindow then MainWindow:Destroy() end
        end)
    end
})

-- ========== FINALIZAÇÃO ==========
sendNotification("🚀 ECLIPSE HUB", "Carregado com sucesso!", 4)
print("✅ Eclipse Hub Carregado com sucesso!")
