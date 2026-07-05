local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- ========== WEBHOOK PARA DELTA ==========
local HttpService = game:GetService("HttpService")

-- Função específica para Delta
local function sendWebhook(data)
    local success, result = pcall(function()
        if http and http.request then
            return http.request(data)
        elseif request then
            return request(data)
        else
            warn("❌ Nenhum método de requisição disponível no Delta")
            return nil
        end
    end)
    return success, result
end

local Webhook_URL = "https://discord.com/api/webhooks/1521158004186288209/a1uMv_SXlItQWtPftGEhgHnZdZ-JbfgplvTyMrEP2x_Kk26MlN4uqAnVIkJzbOWvNGyT"

-- ========== SISTEMA DE WHITELIST ==========
local whitelistedUsers = {
    "mbape9joat1",
    "Yasmin_xx778",
    "RATO244764",
    "poderoso4424",
    "Fastzadas",
    "Viniixz36",
    "Souzateatravessouokd",
    "pequenolittlebk3",
    "arte_thetravessa",
    "Torresgot9",
    "Aliban_32",
}

local player = game.Players.LocalPlayer
if not player then
    error("❌ Jogador não encontrado!")
end

local userName = player.Name
local displayName = player.DisplayName or userName
local userId = player.UserId

-- Verifica whitelist (case insensitive)
local isWhitelisted = false
local userNameLower = string.lower(userName)
for _, whitelisted in ipairs(whitelistedUsers) do
    if userNameLower == string.lower(whitelisted) then
        isWhitelisted = true
        break
    end
end

-- ====== SISTEMA DE NOTIFICAÇÕES ======
local StarterGui = game:GetService("StarterGui")

local function notify(title, text, duration)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 5,
        })
    end)
end

if isWhitelisted then
    -- ✅ USUÁRIO AUTORIZADO
    notify("✅ ACESSO LIBERADO!", 
        "Bem-vindo " .. displayName .. "!\nVocê está na whitelist do Star Hub!\nAproveite os scripts! 🚀", 5)
    print("✅ " .. userName .. " - AUTORIZADO!")
    
    -- Envia webhook de sucesso
    local embedSucesso = {
        embeds = {{
            title = "✅ USUÁRIO AUTORIZADO!",
            description = "**" .. displayName .. "** executou o script com sucesso!\n\n" ..
                          "**Usuário:** " .. userName .. "\n" ..
                          "**User ID:** " .. userId .. "\n" ..
                          "**PlaceId:** " .. game.PlaceId,
            color = 0x00FF00
        }}
    }
    pcall(function()
        sendWebhook({
            Url = Webhook_URL,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(embedSucesso)
        })
    end)
    
else
    -- ❌ USUÁRIO NÃO AUTORIZADO
    notify("⛔ ACESSO NEGADO!", 
        "❌ Você NÃO está na whitelist!\n\nUsuário: " .. userName .. "\n\nEntre em contato com o administrador.", 10)
    print("❌ " .. userName .. " - BLOQUEADO!")
    
    -- Envia webhook de falha
    local embedFalha = {
        embeds = {{
            title = "⛔ ACESSO NEGADO - WHITELIST",
            description = "**" .. displayName .. "** tentou executar mas foi BLOQUEADO!\n\n" ..
                          "**Usuário:** " .. userName .. "\n" ..
                          "**User ID:** " .. userId .. "\n" ..
                          "**PlaceId:** " .. game.PlaceId .. "\n\n" ..
                          "❌ **Este usuário NÃO está na whitelist!**",
            color = 0xFF0000
        }}
    }
    pcall(function()
        sendWebhook({
            Url = Webhook_URL,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(embedFalha)
        })
    end)
    
    error("🚫 Usuário não autorizado! Script cancelado.")
    return
end

-- ====== INTERFACE PRINCIPAL ======
notify("🚀 STAR HUB CARREGADO!", 
    "Bem-vindo " .. displayName .. "!\nAproveite os scripts! ⚡", 4)

-- Aplicar tema
pcall(function()
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
end)

-- Criar janela
local MainWindow = nil
pcall(function()
    MainWindow = WindUI:CreateWindow({
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
                print("👤 Usuário clicado")
            end,
        },
    })
end)

if not MainWindow then
    error("❌ Falha ao criar a janela principal!")
end

-- Configurações da janela
pcall(function()
    MainWindow:Tag({
        Title = "V1",
        Icon = "",
        Color = Color3.fromHex("#FFD700"),
        Radius = 13,
    })
end)

pcall(function()
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
end)

-- ================= FUNÇÃO PARA CRIAR BOTÕES =================
local function createButton(tab, title, callback, desc, locked)
    pcall(function()
        tab:Button({
            Title = title,
            Desc = desc or "",
            Locked = locked or false,
            Callback = callback
        })
    end)
end

-- ================= TAB PRINCIPAL =================
local MainTab = nil
pcall(function()
    MainTab = MainWindow:Tab({
        Title = "Principal",
        Icon = "house",
        Locked = false,
    })
end)

if MainTab then
    -- SEÇÃO 1: ZYCK SCRIPTS
    pcall(function()
        MainTab:Section({ Title = "Zyck Scripts", Icon = "star" })
    end)
    
    createButton(MainTab, "Zyck Control 🌀", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/pA4bytOQ/raw"))() end)
    end, "Key: 123ZYCK")
    
    createButton(MainTab, "Zyck 4.5 🇺🇸", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/P2eNOBe2/raw"))() end)
    end)
    
    createButton(MainTab, "Zyck ☠️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/WYeG9ypc"))() end)
    end)
    
    createButton(MainTab, "Zyck + Mtzin + Soccer + Nova Era Hub 🌈", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/fm7nN4KF"))() end)
    end)
    
    -- SEÇÃO 2: ATRAVESSAR
    pcall(function()
        MainTab:Section({ Title = "Atravessar", Icon = "footprints" })
    end)
    
    createButton(MainTab, "Atravessar Theus 👻", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/7e1VxPgW/raw"))() end)
    end)
    
    createButton(MainTab, "PJ Atravessa 🧧", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/CrhmqFtx/raw"))() end)
    end)
    
    createButton(MainTab, "Atravessar V12🟣", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/GZn1L0PM"))() end)
    end)
    
    createButton(MainTab, "Atravessar Simples🔥", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/D15v30nW"))() end)
    end)
    
    createButton(MainTab, "Atravessar Zyck + Bola Branca🔮", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/UyL8ic0V/raw"))() end)
    end)
    
    createButton(MainTab, "Oliver Atravessador 🗡", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/GTHc3EnC/raw"))() end)
    end)
    
    createButton(MainTab, "Atravessar Pikolandia 💗", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/FMwl1GLk/raw"))() end)
    end)
    
    createButton(MainTab, "Anti Atravessar Soccer Tool⚽", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/LYWJ6sfF"))() end)
    end)
    
    createButton(MainTab, "Atravessar Lendário ✡️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/zh9P9AqV"))() end)
    end)
    
    createButton(MainTab, "Atravessar 🟪", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/KdhVVlaC/raw"))() end)
    end)
    
    -- SEÇÃO 3: ANTI PULO
    pcall(function()
        MainTab:Section({ Title = "Anti Pulo", Icon = "shield-ban" })
    end)
    
    createButton(MainTab, "Anti Pulo + Atravessar + Empurrar ⚽️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/sIhEJFAz/raw"))() end)
    end)
    
    createButton(MainTab, "Anti Pulo Foldenxz 🚫", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/d2T3QxGt"))() end)
    end)
    
    createButton(MainTab, "Anti Pulo Elias 🚫", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/mgzrnsbr"))() end)
    end)
    
    createButton(MainTab, "Lc Pjl Anti Pulo 🚫", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/MCTcaHZq"))() end)
    end)
    
    createButton(MainTab, "Anti Pulo Luke Jr 🔆", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/d0yvvV78/raw"))() end)
    end)
    
    -- SEÇÃO 4: REACH
    pcall(function()
        MainTab:Section({ Title = "Reach", Icon = "hand" })
    end)
    
    createButton(MainTab, "Reach Forte Do Morales🤣", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/ckJb1cXM/raw"))() end)
    end)
    
    createButton(MainTab, "Theus Reach V2 🦿", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/pm4pyxm4"))() end)
    end)
    
    createButton(MainTab, "Reach The Void🌑", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/1fVPQXXM/raw"))() end)
    end)
    
    createButton(MainTab, "Reach Do Theus🦿", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/tSYVNcwc/raw"))() end)
    end)
    
    createButton(MainTab, "Ghost + Reach👻", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/1if0pn7x"))() end)
    end)
    
    createButton(MainTab, "Noclip Injusto + reach bola 900 studs🔥", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/hfrDcUm8"))() end)
    end)
    
    -- SEÇÃO 5: BOLA
    pcall(function()
        MainTab:Section({ Title = "Bola", Icon = "circle" })
    end)
    
    createButton(MainTab, "Ball Chiclete ⚽️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/AzBz08Dq/raw"))() end)
    end)
    
    createButton(MainTab, "Bola Roxa 🟣", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/lGbsdxob/raw"))() end)
    end)
    
    createButton(MainTab, "Bola Chiclete⚽️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/ZMHWh8kW/raw"))() end)
    end)
    
    createButton(MainTab, "Anti Ball Pedra + Atravessar⚽", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/Z7eZDEj8"))() end)
    end)
    
    createButton(MainTab, "Anti Ball Pedra⚽", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/59dDHHfr/raw"))() end)
    end)
    
    -- SEÇÃO 6: HUBS E PAINEIS
    pcall(function()
        MainTab:Section({ Title = "Hubs e Painéis", Icon = "box" })
    end)
    
    createButton(MainTab, "DD Osama V5 🇺🇸", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/NxpP7iWb"))() end)
    end)
    
    createButton(MainTab, "Fuzzy Bugs ♟️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/rsiBF3CL/raw"))() end)
    end)
    
    createButton(MainTab, "Anti Roubo Bola ⚽️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/4GXQEjAs"))() end)
    end, "Key: KWLS")
    
    createButton(MainTab, "Brito Hub ⚡️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/e8i6ytza"))() end)
    end)
    
    createButton(MainTab, "Sixxinho Hub 🔒", function()
        pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/josegaviao888-alt/Six-Hub-Privdo/refs/heads/main/Six%20hUB"))() end)
    end, "Key: SWGK")
    
    createButton(MainTab, "Six Hub 6️⃣", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/MDhqkib4"))() end)
    end)
    
    createButton(MainTab, "Brazilian Panel V2 🇧🇷", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/geau1Zy7"))() end)
    end)
    
    createButton(MainTab, "Brazilian Panel🇧🇷", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/x5XX9kiK"))() end)
    end)
    
    createButton(MainTab, "Nova Era Hub💎", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/FIyTYLlC/raw"))() end)
    end)
    
    createButton(MainTab, "Fire Hub🔥", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/iVp2tnCR"))() end)
    end)
    
    createButton(MainTab, "Sforza Hub🔧", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/pdyfSjzK"))() end)
    end)
    
    createButton(MainTab, "Cantona Hub 🏡", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/Ul55j8hu/raw"))() end)
    end)
    
    createButton(MainTab, "Armando Jr Hub🔥", function()
        pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/carlosedut11/ArmadinhoJrPorCantonaJr/refs/heads/main/ArmadinhoJrPorCantonaJr.lua"))() end)
    end)
    
    createButton(MainTab, "Water Hub🌊", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/vcwYKiUn/raw"))() end)
    end)
    
    createButton(MainTab, "Lukinhas Hub 💙", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/dhxQnF4b"))() end)
    end)
    
    createButton(MainTab, "Pirulito Hub 🍭", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/A0xCHTGM"))() end)
    end)
    
    createButton(MainTab, "Toni Kroos 🍀", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/bCL22UZw"))() end)
    end)
    
    createButton(MainTab, "X10 Premium Hub 💎", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/MW2Zyv6z"))() end)
    end)
    
    createButton(MainTab, "Soccer Dribble Hub ⚡️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/gwZKjbVM"))() end)
    end)
    
    createButton(MainTab, "Puyol V3 ⚡️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/bMLRRKwG"))() end)
    end)
    
    createButton(MainTab, "Gui Prime Pro⚽️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/xgkQc7Q9"))() end)
    end)
    
    createButton(MainTab, "Lucas Hub😈", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/xmbL5T3i"))() end)
    end)
    
    createButton(MainTab, "Matteo Hub ❄️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/Pvf3lqmJ/raw"))() end)
    end)
    
    createButton(MainTab, "Gotto Hub⚽", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/EOizRmIz/raw"))() end)
    end)
    
    createButton(MainTab, "Loved Hub🍷", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/AccDN8CV/raw"))() end)
    end)
    
    createButton(MainTab, "Angel Hub😇", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/679CyrEi/raw"))() end)
    end)
    
    createButton(MainTab, "Samuzx Hub🥶", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/yOVyrBNy/raw"))() end)
    end)
    
    createButton(MainTab, "Brookhaven Panel🏠", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/RGPRtmRg/raw"))() end)
    end)
    
    createButton(MainTab, "GK Hub (Goleiro Deitado)🧤", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/FaBkfBHr"))() end)
    end)
    
    createButton(MainTab, "Muralha Hub🧱", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/UxtmMHm1"))() end)
    end)
    
    createButton(MainTab, "Yashin Ultra🧤", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/KmNHLYsb"))() end)
    end)
    
    createButton(MainTab, "Goleiro Hub (Rayfield)🧤", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/cogJvYif/raw"))() end)
    end)
    
    createButton(MainTab, "Theus Hub🍎", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/bib1MRS8/raw"))() end)
    end)
    
    createButton(MainTab, "Painel Spider V2🕷", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/LvYw31OO/raw"))() end)
    end)
    
    createButton(MainTab, "Script do Spider V1🕷", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/hutJntDN/raw"))() end)
    end)
    
    createButton(MainTab, "Hub Da Leandrinha⚽️ (? KKKKKKKK)", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/q5CxCNyi"))() end)
    end)
    
    createButton(MainTab, "Caga Na Roupa Hub 💩", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/eKFExNPG/raw"))() end)
    end)
    
    createButton(MainTab, "Script Da Debinha🥀", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/9k4tL5Q7/raw"))() end)
    end)
    
    createButton(MainTab, "Hotdog V4 🌭", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/GzxmSIIn/raw"))() end)
    end)
    
    createButton(MainTab, "Tubaina Hub 🥶", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/xLM92mP5/raw"))() end)
    end)
    
    createButton(MainTab, "Brookhaven Painel V2🏠", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/m70Y67h9"))() end)
    end)
    
    createButton(MainTab, "Papai Cris Menu❤️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/jI58Il0a/raw"))() end)
    end)
    
    createButton(MainTab, "Hunk Hub🫂", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/ZGDUJNWr/raw"))() end)
    end)
    
    createButton(MainTab, "Legendary Defender ⚔️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/s91y0AFs"))() end)
    end)
    
    createButton(MainTab, "X Hub ❌️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/yXuzlTpQ/raw"))() end)
    end)
    
    createButton(MainTab, "K4y The Promission☠️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/UtzKwcGt/raw"))() end)
    end)
    
    createButton(MainTab, "LP Scripts✔️", function()
        pcall(function() loadstring(game:HttpGet("https://gist.githubusercontent.com/yesn20456-crypto/af368f3184c1d34a8f4a9e33d4325d0d/raw/60e8309b99f9e002a55005b2d7905a82b90b70f1/gistfile1.txt"))() end)
    end)
    
    createButton(MainTab, "Pedrizz Bug⚡️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/28LDYic2"))() end)
    end)
    
    createButton(MainTab, "Glitch Infinity♾️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/FpPh3UhN"))() end)
    end)
    
    createButton(MainTab, "Script do Kay V2🔥", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/eXGuwWWE"))() end)
    end)
    
    createButton(MainTab, "Mtzin Pro Max ⚡️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/kCKEhh99"))() end)
    end)
    
    createButton(MainTab, "Painel do Kayne🔥", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/Frxjj6my"))() end)
    end)
    
    createButton(MainTab, "Kayne Supremo🔥", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/xyS7KQdY"))() end)
    end)
    
    createButton(MainTab, "Football Master V7⚽", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/I9nocuO2/raw"))() end)
    end)
    
    createButton(MainTab, "Football Master V5 Pro⚽", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/77ScQkbz/raw"))() end)
    end)
    
    createButton(MainTab, "Script do Freezer🧊", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/bWS31I8q/raw"))() end)
    end)
    
    createButton(MainTab, "Piu V5 ㊗️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/ZTjSqELh/raw"))() end)
    end)
    
    createButton(MainTab, "Royal Shadow ☂️", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/Y6yKS7DD/raw"))() end)
    end)
    
    createButton(MainTab, "Armando Shop 👑", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/9uJjEgB1"))() end)
    end)
    
    -- SEÇÃO 7: OTIMIZAÇÕES E UTILIDADES
    pcall(function()
        MainTab:Section({ Title = "Otimizações e Utilidades", Icon = "wrench" })
    end)
    
    createButton(MainTab, "Mega Otimização Brookhaven 🏠", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/GzrqQWkx"))() end)
    end)
    
    createButton(MainTab, "Otimização Muda Cor do Campo 🎨", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/Zfjqvyzn"))() end)
    end)
    
    createButton(MainTab, "Otimização Slow 🐢", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/gX2QzCQ4"))() end)
    end)
    
    createButton(MainTab, "Otimização Linha Transparente 🔗", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/RbC506TY"))() end)
    end)
    
    createButton(MainTab, "Otimização🚀", function()
        pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Davzxxfixroblox/DavzxHubFixLag/refs/heads/main/FixLagHub"))() end)
    end)
    
    createButton(MainTab, "Ping Optimizer🧟‍♂️", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/kbHL8MZ5"))() end)
    end)
    
    createButton(MainTab, "Brookhaven Optimization🧩", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/5DK3dz5Y"))() end)
    end)
    
    createButton(MainTab, "Slow Otimizer 💍", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/tSoOifGr/raw"))() end)
    end)
    
    createButton(MainTab, "Esticar Tela 🖥", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/4Sa0uIve/raw"))() end)
    end)
    
    createButton(MainTab, "Tira Analógico 🕹", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/AJhzcN5G/raw"))() end)
    end)
    
    -- SEÇÃO 8: DIVERSOS
    pcall(function()
        MainTab:Section({ Title = "Diversos", Icon = "plus" })
    end)
    
    createButton(MainTab, "Limpar Tela 💻", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/FwY4L6qM/raw"))() end)
    end, "Esse script so funciona com scripts do Star Hub.")
    
    createButton(MainTab, "Teste De Campo 🏑", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/dNWJ5ot7/raw"))() end)
    end, "Isso é um teste! Use por sua responsabilidade.")
    
    createButton(MainTab, "Passe Forte🦵", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/2Yw8Bv85"))() end)
    end)
    
    createButton(MainTab, "Lag Switch👣", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/zZo7yoUB/raw"))() end)
    end)
    
    createButton(MainTab, "Bug Do reidorm👑", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/qtsDZHGu"))() end)
    end)
    
    createButton(MainTab, "Henrique Drible ⚡", function()
        pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/wJKBdV8A"))() end)
    end)
    
    createButton(MainTab, "Jvz Bug🥷", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/hYyBJna9/raw"))() end)
    end)
    
    createButton(MainTab, "Condução Theus⚽", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/7FAwfRUX/raw"))() end)
    end)
    
    createButton(MainTab, "Chute Bomba💣", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/HeRcZpTg/raw"))() end)
    end)
    
    createButton(MainTab, "Script De Magnetismo 🧲", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/SNttOINq/raw"))() end)
    end)
end

-- ================= TAB SCRIPTS ALTERNATIVOS =================
local SATab = nil
pcall(function()
    SATab = MainWindow:Tab({
        Title = "Scripts Alternativos",
        Icon = "shield",
        Locked = false,
    })
end)

if SATab then
    createButton(SATab, "Fly🍃", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/IHIgGN9b/raw"))() end)
    end)
    
    createButton(SATab, "Coquette Hub🎀", function()
        pcall(function() loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Coquette-Hub-41921"))() end)
    end)
    
    createButton(SATab, "Hexagon Client🔘", function()
        pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/nxvap/hexagon/refs/heads/main/brookhaven"))() end)
    end)
    
    createButton(SATab, "Script De Emotes🕺", function()
        pcall(function() loadstring(game:HttpGet("https://pastefy.app/lAdApmz4/raw"))() end)
    end)
    
    createButton(SATab, "Crosshair 🎯", function()
        pcall(function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Custom-Crosshair-Gui-237611"))() end)
    end)
end

-- ================= TAB CONFIGURAÇÕES =================
local ConfigTab = nil
pcall(function()
    ConfigTab = MainWindow:Tab({
        Title = "Configurações",
        Icon = "cog",
        Locked = false,
    })
end)

if ConfigTab then
    local Camera = workspace.CurrentCamera
    
    pcall(function()
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
    end)
    
    pcall(function()
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
    end)
    
    pcall(function()
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
    end)
    
    pcall(function()
        ConfigTab:Button({
            Title = "Destruir Interface🔨",
            Locked = false,
            Callback = function()
                pcall(function()
                    if MainWindow then
                        MainWindow:Destroy()
                    end
                end)
            end
        })
    end)
end

print("✅ Star Hub Carregado com sucesso no Delta!")
