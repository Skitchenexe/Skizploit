--[[
	== Grimoires ==
	Wind
	Earth
	Lightning
	Creation
	Darkness
	Water
	Fire
	Light
	Ice
]]

_G.Grimoire = "Darkness"

--ProtoSmasher Compatible
if PROTOSMASHER_LOADED then
    getgenv().getnamecallmethod = get_namecall_method
    getgenv().newcclosure = protect_function
end

--LOL!
local mt = getrawmetatable(game)
if PROTOSMASHER_LOADED then
    make_writeable(mt)
else
    setreadonly(mt, false)
end
local old = mt.__namecall
mt.__namecall = newcclosure(loadstring([[
    local old = ...
    return function(self, ...)
        local len = select("#", ...)
        local pack = {...}
        local args = {}
        for i=1,len do
            args[i] = pack[i]
        end
        if getnamecallmethod() == "FireServer" and tostring(self) == "KickRemote" then
            return
        end
        if getnamecallmethod() == "FireServer" and tostring(self) == "Core" and args[1] == "SetGrimoire" then
            warn("megumu")
			args[2] = _G.Grimoire
			return old(self, unpack(args))
		end
        return old(self, ...)
    end
]])(old))