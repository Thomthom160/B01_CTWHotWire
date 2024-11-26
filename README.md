# B01_CTWHotWire

A car screwdriver hot wire minigame inspired by the GTA Chinatown Wars minigame.
Fork using promise, making it a little big more modern

**Exports List:**
```lua
exports['B01_CTWHotWire']:startMinigame(duration)
exports['B01_CTWHotWire']:stopMinigame()
exports['B01_CTWHotWire']:isMinigameActive()
```

**Example:**
```lua
CreateThread(function()
	local example = exports['B01_CTWHotWire']:startMinigame(15000)
	print(example)
end)
```


```lua
if exports['B01_CTWHotWire']:startMinigame(15000) then
	--Do stuff
else
	--Dont do the stuff
end
```
Value returned is a boolean by the export is a boolean.

**Support Discord:** 
http://www.discord.binary01studios.xyz/
