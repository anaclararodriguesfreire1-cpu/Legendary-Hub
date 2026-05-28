-- ============ SISTEMA DE KEY ============
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

-- Configurações da Key
local Config = {
    KeyCorreta = "BM",
    TentativasMaximas = 3,
}

-- Criar a tela de fundo escura
local TelaFundo = Instance.new("Frame")
TelaFundo.Size = UDim2.new(1, 0, 1, 0)
TelaFundo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TelaFundo.BackgroundTransparency = 0.3
TelaFundo.Parent = game.CoreGui

-- Criar o frame principal da key
local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 400, 0, 250)
KeyFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
KeyFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
KeyFrame.BackgroundTransparency = 0
KeyFrame.BorderSizePixel = 0
KeyFrame.Parent = TelaFundo
Instance.new("UICorner", KeyFrame).CornerRadius = UDim.new(0, 12)

-- Sombra da janela
local Sombra = Instance.new("Frame")
Sombra.Size = UDim2.new(1, 10, 1, 10)
Sombra.Position = UDim2.new(0, -5, 0, -5)
Sombra.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Sombra.BackgroundTransparency = 0.8
Sombra.BorderSizePixel = 0
Sombra.Parent = KeyFrame
Instance.new("UICorner", Sombra).CornerRadius = UDim.new(0, 12)
Sombra.ZIndex = -1

-- Título
local Titulo = Instance.new("TextLabel")
Titulo.Size = UDim2.new(1, 0, 0, 50)
Titulo.Position = UDim2.new(0, 0, 0, 0)
Titulo.BackgroundColor3 = Color3.fromRGB(0, 188, 212)
Titulo.BackgroundTransparency = 0
Titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
Titulo.Font = Enum.Font.SourceSansBold
Titulo.TextSize = 22
Titulo.Text = "🔐 SISTEMA DE VERIFICAÇÃO"
Titulo.Parent = KeyFrame
Instance.new("UICorner", Titulo).CornerRadius = UDim.new(0, 12)

-- Mensagem de instrução
local Instrucao = Instance.new("TextLabel")
Instrucao.Size = UDim2.new(1, 0, 0, 30)
Instrucao.Position = UDim2.new(0, 0, 0, 60)
Instrucao.BackgroundTransparency = 1
Instrucao.TextColor3 = Color3.fromRGB(200, 200, 200)
Instrucao.Font = Enum.Font.SourceSans
Instrucao.TextSize = 14
Instrucao.Text = "Digite a KEY para acessar o Lendário Hub:"
Instrucao.Parent = KeyFrame

-- Caixa de texto para digitar a key
local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(0.8, 0, 0, 40)
KeyInput.Position = UDim2.new(0.1, 0, 0, 95)
KeyInput.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.Font = Enum.Font.SourceSans
KeyInput.TextSize = 16
KeyInput.PlaceholderText = "Digite a key aqui..."
KeyInput.Text = ""
KeyInput.Parent = KeyFrame
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 6)

-- Botão Verificar
local VerificarBtn = Instance.new("TextButton")
VerificarBtn.Size = UDim2.new(0.8, 0, 0, 40)
VerificarBtn.Position = UDim2.new(0.1, 0, 0, 145)
VerificarBtn.BackgroundColor3 = Color3.fromRGB(0, 188, 212)
VerificarBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
VerificarBtn.Font = Enum.Font.SourceSansBold
VerificarBtn.TextSize = 16
VerificarBtn.Text = "VERIFICAR ACESSO"
VerificarBtn.Parent = KeyFrame
Instance.new("UICorner", VerificarBtn).CornerRadius = UDim.new(0, 6)

-- Label de erro/mensagem
local MsgErro = Instance.new("TextLabel")
MsgErro.Size = UDim2.new(1, 0, 0, 25)
MsgErro.Position = UDim2.new(0, 0, 0, 195)
MsgErro.BackgroundTransparency = 1
MsgErro.TextColor3 = Color3.fromRGB(255, 100, 100)
MsgErro.Font = Enum.Font.SourceSans
MsgErro.TextSize = 12
MsgErro.Text = ""
MsgErro.Parent = KeyFrame

-- Contador de tentativas
local TentativasRestantes = Config.TentativasMaximas

-- Função para mostrar erro
local function MostrarErro(mensagem)
    MsgErro.Text = mensagem
    MsgErro.TextColor3 = Color3.fromRGB(255, 100, 100)
    
    -- Efeito de tremor na janela
    local posicaoOriginal = KeyFrame.Position
    for i = 1, 4 do
        KeyFrame.Position = UDim2.new(0.5, -200 + (i % 2 == 0 and -5 or 5), 0.5, -125)
        task.wait(0.02)
    end
    KeyFrame.Position = posicaoOriginal
end

-- Função para mostrar sucesso
local function MostrarSucesso(mensagem)
    MsgErro.Text = mensagem
    MsgErro.TextColor3 = Color3.fromRGB(100, 255, 100)
end

-- Função que executa o script principal do Lendário Hub
local function ExecutarScript()
    -- Limpar tela de key
    TelaFundo:Destroy()
    
    print("✅ Acesso concedido! Carregando Lendário Hub...")
    
    -- Carregar o WindUI
    local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
    
    -- Criar e aplicar tema Legendary
    WindUI:AddTheme({
        Name = "Legendary",
        Accent = Color3.fromRGB(0, 188, 212),
        Background = Color3.fromRGB(0, 0, 0),
        Outline = Color3.fromRGB(0, 188, 212),
        Text = Color3.fromRGB(255, 255, 255),
        Placeholder = Color3.fromRGB(0, 188, 212),
        Button = Color3.fromRGB(0, 188, 212),
        Icon = Color3.fromRGB(0, 188, 212),
    })
    
    local MainWindow = WindUI:CreateWindow({
        Title = "Lendário Hub",
        Icon = "biohazard",
        Author = "Por Math e Brito Totosos",
        Folder = "LH",
        Size = UDim2.fromOffset(580, 460),
        MinSize = Vector2.new(560, 350),
        MaxSize = Vector2.new(850, 560),
        Transparent = false,
        Theme = "Legendary",
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
    })
    
    MainWindow:Tag({
        Title = "V1",
        Icon = "",
        Color = Color3.fromRGB(0, 188, 212),
        Radius = 13,
    })
    
    MainWindow:EditOpenButton({
        Title = "Abrir Lendário Hub",
        Icon = "biohazard",
        CornerRadius = UDim.new(0,8),
        StrokeThickness = 3,
        Color = ColorSequence.new(
            Color3.fromRGB(0, 188, 212),
            Color3.fromRGB(0, 150, 170)
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
        Title = "Mega Otimização Brookhaven 🏠",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/GzrqQWkx"))();
        end
    })
    
    MainTab:Button({
        Title = "PJ Atravessa 🧧",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/CrhmqFtx/raw"))();
        end
    })
    
    MainTab:Button({
        Title = "Caga Na Roupa Hub 💩",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/eKFExNPG/raw"))();
        end
    })
    
    MainTab:Button({
        Title = "Brazilian Panel V2 🇧🇷",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/geau1Zy7"))();
        end
    })
    
    MainTab:Button({
        Title = "Anti Pulo Foldenxz 🚫",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/d2T3QxGt"))();
        end
    })
    
    MainTab:Button({
        Title = "Six Hub 6️⃣",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/MDhqkib4"))();
        end
    })
    
    MainTab:Button({
        Title = "Anti Pulo Elias 🚫",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/mgzrnsbr"))();
        end
    })
    
    MainTab:Button({
        Title = "Lukinhas Hub 💙",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/dhxQnF4b"))();
        end
    })
    
    MainTab:Button({
        Title = "Pirulito Hub 🍭",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/A0xCHTGM"))();
        end
    })
    
    MainTab:Button({
        Title = "Toni Kroos 🍀",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/bCL22UZw"))();
        end
    })
    
    MainTab:Button({
        Title = "X10 Premium Hub 💎",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/MW2Zyv6z"))();
        end
    })
    
    MainTab:Button({
        Title = "Atravessar V12🟣",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/GZn1L0PM"))();
        end
    })
    
    MainTab:Button({
        Title = "Lc Pjl Anti Pulo 🚫",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/MCTcaHZq"))();
        end
    })
    
    MainTab:Button({
        Title = "Theus Reach V2 🦿",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/pm4pyxm4"))();
        end
    })
    
    MainTab:Button({
        Title = "Zyck ☠️",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/WYeG9ypc"))();
        end
    })
    
    MainTab:Button({
        Title = "Abençoado 777 👼",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/admpietrovinicius-debug/Aben-oado-777/refs/heads/main/Aben%C3%A7oado777.lua"))();
        end
    })
    
    MainTab:Button({
        Title = "Hub Da Leandrinha⚽️ (? KKKKKKKK)",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/q5CxCNyi"))();
        end
    })
    
    MainTab:Button({
        Title = "Soccer Dribble Hub ⚡️",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/gwZKjbVM"))();
        end
    })
    
    MainTab:Button({
        Title = "Puyol V3 ⚡️",
        Locked = false,
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/bMLRRKwG"))();
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
            loadstring(game:HttpGet("https://pastefy.app/iQzbaBGE/raw"))()
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
            loadstring(game:HttpGet("https://pastefy.app/bib1MRS8/raw "))();
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
    
    print("✅ Lendário Hub carregado com sucesso!")
end

-- Função para verificar a key
local function VerificarKey()
    local keyDigitada = KeyInput.Text
    
    if keyDigitada == "" then
        MostrarErro("❌ Por favor, digite uma key!")
        return
    end
    
    if keyDigitada == Config.KeyCorreta then
        MostrarSucesso("✅ KEY CORRETA! Carregando hub...")
        
        task.wait(0.5)
        ExecutarScript()
    else
        TentativasRestantes = TentativasRestantes - 1
        
        if TentativasRestantes <= 0 then
            MostrarErro("❌ TENTATIVAS ESGOTADAS! O script será fechado.")
            VerificarBtn.Visible = false
            KeyInput.Visible = false
            
            task.wait(2)
            TelaFundo:Destroy()
        else
            MostrarErro("❌ KEY INCORRETA! Tentativas restantes: " .. TentativasRestantes)
            KeyInput.Text = ""
            KeyInput:CaptureFocus()
        end
    end
end

-- Conectar o botão
VerificarBtn.MouseButton1Click:Connect(VerificarKey)

-- Permitir apertar Enter para verificar
KeyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        VerificarKey()
    end
end)

-- Bloquear interação com o jogo enquanto a key não for digitada
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and TelaFundo and TelaFundo.Parent then
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local mousePos = UserInputService:GetMouseLocation()
            local frameAbsPos = KeyFrame.AbsolutePosition
            local frameSize = KeyFrame.AbsoluteSize
            
            if not (mousePos.X >= frameAbsPos.X and mousePos.X <= frameAbsPos.X + frameSize.X and
                   mousePos.Y >= frameAbsPos.Y and mousePos.Y <= frameAbsPos.Y + frameSize.Y) then
                MostrarErro("⚠️ Complete a verificação primeiro!")
            end
        end
    end
end)
