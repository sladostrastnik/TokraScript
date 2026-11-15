local Loadstring = loadstring or getgenv().loadstring or getfenv().loadstring
if not Loadstring then return end

local Repository = "https://raw.githubusercontent.com/sladostrastnik/TokraScript/refs/heads/main/Games/"
local PlaceId = tostring(game.PlaceId)
local Suffix = ".luau"

local success, GameScript = pcall(function()
    return game:HttpGet(Repository .. PlaceId .. Suffix)
end)

if success and GameScript then
    Loadstring(GameScript)()
else
    warn("[Tokra] No se pudo cargar el script para este PlaceId:", PlaceId)
end
