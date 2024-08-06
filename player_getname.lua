local ENTITY = FindMetaTable("Entity")
local PLAYER = FindMetaTable("Player")

local IsValid = ENTITY.IsValid

PLAYER.GetRealName = PLAYER.Name
PLAYER.GetRealDisplayName = PLAYER.GetName
PLAYER.GetRealNick = PLAYER.Nick

function PLAYER:Name()
	if not IsValid(self) then
		return error("Tried to use a NULL entity!")
	end

	return self:GetNW2String("FakeName", self:GetRealName())
end

function PLAYER:GetName()
	if not IsValid(self) then
		return error("Tried to use a NULL entity!")
	end

	return self:GetNW2String("FakeName", self:GetRealDisplayName())
end

function PLAYER:Nick()
	if not IsValid(self) then
		return error("Tried to use a NULL entity!")
	end

	return self:GetNW2String("FakeName", self:GetRealNick())
end
