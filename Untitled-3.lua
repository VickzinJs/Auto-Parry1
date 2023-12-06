--Aqui estará a nossa UI.

local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7yhx/kwargs_Ui_Library/main/source.lua"))()

local UI = Lib:Create{
    Theme = "Dark", -- or any other theme
    Size = UDim2.new(0, 555, 0, 400) -- default
 }
 
 local Main = UI:Tab{
    Name = "Main"
 }
 
 local Divider = Main:Divider{
    Name = "Main shit"
 }
 
 local QuitDivider = Main:Divider{
    Name = "Quit"
 }
 
 -- All functions have the Name, Description and Callback arguments so you can use them whenever ig yeah
 local KillAll = Divider:Button{
    Name = "Kill all",
    Description = "Kills all the players in the game!",
    Callback = function()
        print("All players killed.")
    end
 }

 local LoopKillAll = Divider:Toggle{
    Name = "Loop kill all",
    Description = "Loop kills everyone in the game.",
    Callback = function(State)
        print("Kill state: ", State)
    end
 }
 
 local OtherToggleStyle = Divider:Toggle{
    Name = "2nd style of toggle",
    Style = 2
 }
 
 local Players = Divider:Dropdown{
    Name = "Player list",
    Options = {"Player1", "Player2", "Player3", "Player4", "Player5"},
    Callback = function(Value)
        print(Value)
    end
 }
 
 Divider:ColorPicker{
    Name = "ESP color",
    Default = Color3.fromRGB(0, 255, 255), -- default,
    Callback = function(Value)
        print(Value)
    end
 }

 Divider:Box{
    Name = "Car name",
    ClearText = true, -- whether the textbox clears on focus or not
    Callback = function(Value)
        print(Value)
    end
 }
 
 Divider:SearchDropdown{
    Name = "Teleports",
    Options = {"Pleasant Park", "Loot Lake", "Tomato Town", "Wailing Woods", "Anarchy Acres", "Retail Row"},
    ClearText = false, -- default
    Callback = function(Value)
        print(Value)
    end
 }

 local Quit = QuitDivider:Button{
    Name = "Closes the ui library.",
    Callback = function()
        UI:Quit{
            Message = "Fuck off...", -- closing message
            Length = 1 -- seconds the closing message shows for
        }
    end
 }

 local autoParryEnabled = true -- Set to false to disable Auto Parry

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.P then
        autoParryEnabled = not autoParryEnabled
        print("Auto Parry " .. (autoParryEnabled and "enabled" or "disabled"))
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)

while true do
    if autoParryEnabled then
        -- Your Auto Parry logic here
        -- Replace this with your actual Auto Parry code
        print("Auto Parry ativado")
    end
    wait(1) -- Adjust the delay as needed
end