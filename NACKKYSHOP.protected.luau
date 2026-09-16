-- NACKKYSHOP | NK-bac1831145ce | static-obfuscated client
local _n529a44f539a = game:GetService("\080\108\097\121\101\114\115")
local _n74f430a5b2d = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101")
local _nc6f50dcd544 = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101")
local _nba8b43745e7 = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101")
local _nf671e725ac1 = game:GetService("\076\105\103\104\116\105\110\103")
local _n73fd9822adb = _n529a44f539a.LocalPlayer
assert(_n73fd9822adb, "\067\108\105\101\110\116\032\099\111\110\116\101\120\116\032\114\101\113\117\105\114\101\100")
local _n112046b4611 = _n73fd9822adb:WaitForChild("\080\108\097\121\101\114\071\117\105", 10)
assert(_n112046b4611, "\080\108\097\121\101\114\071\117\105\032\110\111\116\032\097\118\097\105\108\097\098\108\101")
for _neb76e8d77b5, _nb9358488c2d in ipairs({"\069\103\103\070\097\114\109\067\108\105\101\110\116\085\073", "\069\103\103\065\116\101\108\105\101\114\085\073", "\078\065\067\075\075\089\083\072\079\080\085\073"}) do
local _ne4b9f747271 = _n112046b4611:FindFirstChild(_nb9358488c2d)
if _ne4b9f747271 then _ne4b9f747271:Destroy() end
end
local _n2064b8b218d = {
alive = true, ready = false, generation = 0, busy = false,
mode = "\083\116\111\112\112\101\100", phase = "\083\084\065\082\084\085\080", status = "\076\111\097\100\105\110\103\032\103\097\109\101\032\109\111\100\117\108\101\115\046\046\046",
rewards = 0, failures = 0, started = os.clock(), progress = 0,
target = nil, carry = nil, connections = {}, blocked = {}, rows = {},
owned = {}, pets = {}, log = {}, metadata = {}, dirty = true, refreshAt = 0,
query = "", filter = "\065\108\108", sort = "\078\101\097\114\101\115\116", selection = "\078\101\097\114\101\115\116",
tab = "\070\097\114\109", rareOnly = false, minWeight = 0, minValue = 0,
heavyAlert = 100, valueAlert = 10000, alerts = true, seen = {},
motion = true, blurEnabled = false, hidden = false, minimized = false,
carryingUid = nil, targetOverride = nil, ui = {},
speedEnabled = false, speedValue = 50, speedMinimum = 1, speedMaximum = 300,
speedHumanoid = nil, speedBaseline = nil, speedConnection = nil, writingSpeed = false,
flightEnabled = true, flightHeight = 30, flightSpeed = 120, quickPickup = true, flight = nil,
antiAfk = false, antiAfkStatus = "\079\070\070", lastIdlePulse = -math.huge,
presenceEnabled = false, presenceRemote = nil, presenceUsers = {}, presenceTags = {},
presenceStatus = "\083\101\114\118\101\114\032\099\111\109\112\097\110\105\111\110\032\110\111\116\032\105\110\115\116\097\108\108\101\100", presenceDirty = true,
}
local _nc64c6043109 = {
bg = Color3.fromRGB(17, 22, 29), panel = Color3.fromRGB(27, 35, 44),
edge = Color3.fromRGB(64, 82, 91), ink = Color3.fromRGB(236, 243, 239),
muted = Color3.fromRGB(146, 166, 168), mint = Color3.fromRGB(166, 238, 195),
gold = Color3.fromRGB(246, 202, 123), red = Color3.fromRGB(241, 133, 145),
}
function _n2064b8b218d.connect(_n672fa517710, _na90d69a1875)
local _nf475818f37a = _n672fa517710:Connect(_na90d69a1875)
table.insert(_n2064b8b218d.connections, _nf475818f37a)
return _nf475818f37a
end
function _n2064b8b218d.safe(_n8c08a608647, ...)
if type(_n8c08a608647) ~= "\102\117\110\099\116\105\111\110" then return nil end
local _n58440db621b, _nf058f70f8de = pcall(_n8c08a608647, ...)
if _n58440db621b then return _nf058f70f8de end
return nil
end
function _n2064b8b218d.number(_n1c3037ecee0, _nc76fb2e1c85)
if type(_n1c3037ecee0) ~= "\110\117\109\098\101\114" or _n1c3037ecee0 ~= _n1c3037ecee0 or math.abs(_n1c3037ecee0) == math.huge then return "\045\045" end
local _nc9e21c465eb, _n9dc87ff657d = "", 1
if math.abs(_n1c3037ecee0) >= 1e9 then _nc9e21c465eb, _n9dc87ff657d = "\066", 1e9
elseif math.abs(_n1c3037ecee0) >= 1e6 then _nc9e21c465eb, _n9dc87ff657d = "\077", 1e6
elseif math.abs(_n1c3037ecee0) >= 1e3 then _nc9e21c465eb, _n9dc87ff657d = "\075", 1e3 end
return string.format("\037\046" .. tostring(_nc76fb2e1c85 or 1) .. "\102\037\115", _n1c3037ecee0 / _n9dc87ff657d, _nc9e21c465eb)
end
function _n2064b8b218d.notify(_nf3bbc495366, _n524d07b917d)
table.insert(_n2064b8b218d.log, 1, {text = tostring(_nf3bbc495366), kind = _n524d07b917d or "\105\110\102\111", at = os.date("\037\072\058\037\077\058\037\083")})
if #_n2064b8b218d.log > 60 then table.remove(_n2064b8b218d.log) end
_n2064b8b218d.logDirty = true
if _n2064b8b218d.alerts and _n2064b8b218d.ui.toast then
_n2064b8b218d.ui.toast.Text = tostring(_nf3bbc495366)
_n2064b8b218d.ui.toast.Visible = true
_n2064b8b218d.toastUntil = os.clock() + 5
end
end
function _n2064b8b218d.character()
local _n257e7d63316 = _n73fd9822adb.Character
local _n4610857ea4a = _n257e7d63316 and _n257e7d63316:FindFirstChildOfClass("\072\117\109\097\110\111\105\100")
local _n7351417c0cf = _n257e7d63316 and _n257e7d63316:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116")
if _n4610857ea4a and _n7351417c0cf and _n4610857ea4a.Health > 0 then return _n4610857ea4a, _n7351417c0cf end
end
function _n2064b8b218d.releaseSpeed()
if _n2064b8b218d.speedConnection then _n2064b8b218d.speedConnection:Disconnect(); _n2064b8b218d.speedConnection = nil end
local _n757bf2d7c27, _n221fba90c06 = _n2064b8b218d.speedHumanoid, _n2064b8b218d.speedBaseline
_n2064b8b218d.speedHumanoid, _n2064b8b218d.speedBaseline = nil, nil
if _n757bf2d7c27 and type(_n221fba90c06) == "\110\117\109\098\101\114" then
pcall(function() _n757bf2d7c27.WalkSpeed = _n221fba90c06 end)
end
end
function _n2064b8b218d.applySpeed()
if not _n2064b8b218d.speedEnabled or not _n2064b8b218d.alive then return end
local _n060df00d167 = _n2064b8b218d.character()
if _n060df00d167 ~= _n2064b8b218d.speedHumanoid then
_n2064b8b218d.releaseSpeed()
if not _n060df00d167 then return end
_n2064b8b218d.speedHumanoid, _n2064b8b218d.speedBaseline = _n060df00d167, _n060df00d167.WalkSpeed
_n2064b8b218d.speedConnection = _n060df00d167:GetPropertyChangedSignal("\087\097\108\107\083\112\101\101\100"):Connect(function()
if not _n2064b8b218d.writingSpeed and _n060df00d167 == _n2064b8b218d.speedHumanoid then
_n2064b8b218d.speedBaseline = _n060df00d167.WalkSpeed
end
end)
end
if _n060df00d167 and _n060df00d167.WalkSpeed ~= _n2064b8b218d.speedValue then
_n2064b8b218d.writingSpeed = true
local _n7b74a71cb65, _n299971ae5fd = pcall(function() _n060df00d167.WalkSpeed = _n2064b8b218d.speedValue end)
_n2064b8b218d.writingSpeed = false
if not _n7b74a71cb65 then
_n2064b8b218d.speedEnabled = false; _n2064b8b218d.releaseSpeed()
_n2064b8b218d.notify("\067\117\115\116\111\109\032\083\112\101\101\100\032\102\097\105\108\101\100\058\032" .. tostring(_n299971ae5fd), "\101\114\114\111\114")
end
end
end
function _n2064b8b218d.setSpeedEnabled(_n0d8d12ce01c)
_n2064b8b218d.speedEnabled = _n0d8d12ce01c == true
if _n2064b8b218d.speedEnabled then _n2064b8b218d.applySpeed() else _n2064b8b218d.releaseSpeed() end
end
function _n2064b8b218d.setSpeed(_nabc26ec3874)
local _nd73f52d61cd = tonumber(_nabc26ec3874)
if not _nd73f52d61cd or _nd73f52d61cd ~= _nd73f52d61cd or math.abs(_nd73f52d61cd) == math.huge then return false end
_n2064b8b218d.speedValue = math.clamp(math.floor(_nd73f52d61cd + 0.5), _n2064b8b218d.speedMinimum, _n2064b8b218d.speedMaximum)
_n2064b8b218d.applySpeed()
return true
end
function _n2064b8b218d.releaseFlight()
local _n9fc7c717219 = _n2064b8b218d.flight
_n2064b8b218d.flight = nil
if not _n9fc7c717219 then return end
if _n9fc7c717219.velocity then _n9fc7c717219.velocity:Destroy() end
if _n9fc7c717219.attachment then _n9fc7c717219.attachment:Destroy() end
pcall(function()
_n9fc7c717219.humanoid.PlatformStand = _n9fc7c717219.platformStand
_n9fc7c717219.humanoid.AutoRotate = _n9fc7c717219.autoRotate
_n9fc7c717219.root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
end)
end
function _n2064b8b218d.ensureFlight()
local _ne08d74db4b2, _nddc152c6e6e = _n2064b8b218d.character()
if not _ne08d74db4b2 then return nil end
if _n2064b8b218d.flight and _n2064b8b218d.flight.root == _nddc152c6e6e then return _n2064b8b218d.flight end
_n2064b8b218d.releaseFlight()
local _n051873983dc = {humanoid = _ne08d74db4b2, root = _nddc152c6e6e, platformStand = _ne08d74db4b2.PlatformStand, autoRotate = _ne08d74db4b2.AutoRotate}
_n2064b8b218d.flight = _n051873983dc
local _n0e3ceb519a6 = Instance.new("\065\116\116\097\099\104\109\101\110\116")
_n051873983dc.attachment = _n0e3ceb519a6
_n0e3ceb519a6.Name, _n0e3ceb519a6.Parent = "\078\065\067\075\075\089\083\072\079\080\070\108\105\103\104\116\065\116\116\097\099\104\109\101\110\116", _nddc152c6e6e
local _n88effb844c6 = Instance.new("\076\105\110\101\097\114\086\101\108\111\099\105\116\121")
_n051873983dc.velocity = _n88effb844c6
_n88effb844c6.Name = "\078\065\067\075\075\089\083\072\079\080\070\108\105\103\104\116\086\101\108\111\099\105\116\121"
_n88effb844c6.Attachment0 = _n0e3ceb519a6
_n88effb844c6.RelativeTo = Enum.ActuatorRelativeTo.World
_n88effb844c6.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
_n88effb844c6.MaxForce = 1000000
_n88effb844c6.VectorVelocity = Vector3.new(0, 0, 0)
_n88effb844c6.Parent = _nddc152c6e6e
_ne08d74db4b2.PlatformStand, _ne08d74db4b2.AutoRotate = true, false
return _n051873983dc
end
function _n2064b8b218d.flyTo(_n5ebd6e996bf, _n90bf2d3f32b, _n8a707b59980)
if not _n2064b8b218d.active(_n90bf2d3f32b) then return false, "\083\116\111\112\112\101\100" end
local _nb832e4616c9 = _n2064b8b218d.ensureFlight()
if not _nb832e4616c9 then return false, "\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101" end
local _n176d209064f = _nb832e4616c9.root
local _nf0b91134e07 = math.max(_n176d209064f.Position.Y, _n5ebd6e996bf.Y + math.clamp(_n2064b8b218d.flightHeight, 8, 100))
local _n6ccfa5f9a46 = {Vector3.new(_n176d209064f.Position.X, _nf0b91134e07, _n176d209064f.Position.Z),
Vector3.new(_n5ebd6e996bf.X, _nf0b91134e07, _n5ebd6e996bf.Z), _n5ebd6e996bf + Vector3.new(0, 3, 0)}
for _n87cc6f72a73, _n7476e4d65a1 in ipairs(_n6ccfa5f9a46) do
local _na5740587735, _n2be98912f55, _ne5c630f8925 = os.clock(), os.clock(), _n176d209064f.Position
while _n2064b8b218d.active(_n90bf2d3f32b) do
local _ne4788a812b8, _n9f40e79d41a = _n2064b8b218d.character()
if not _ne4788a812b8 or _n9f40e79d41a ~= _n176d209064f or not _n2064b8b218d.flightEnabled then
_n2064b8b218d.releaseFlight(); return false, "\070\108\105\103\104\116\032\116\097\114\103\101\116\044\032\099\104\097\114\097\099\116\101\114\032\111\114\032\101\118\101\110\116\032\099\104\097\110\103\101\100"
end
if _n8a707b59980 and not _n8a707b59980() then
_nb832e4616c9.velocity.VectorVelocity = Vector3.new(0, 0, 0)
return false, "\084\097\114\103\101\116\032\111\114\032\101\118\101\110\116\032\099\104\097\110\103\101\100\059\032\114\101\116\114\101\097\116\105\110\103"
end
local _nfc3ae1c0e6b = _n7476e4d65a1 - _n176d209064f.Position
if _nfc3ae1c0e6b.Magnitude <= 2.2 then break end
if (_n176d209064f.Position - _ne5c630f8925).Magnitude > 0.6 then _n2be98912f55, _ne5c630f8925 = os.clock(), _n176d209064f.Position end
if os.clock() - _n2be98912f55 > 4 or os.clock() - _na5740587735 > 35 then
_nb832e4616c9.velocity.VectorVelocity = Vector3.new(0, 0, 0)
return false, "\070\108\105\103\104\116\032\098\108\111\099\107\101\100\032\111\114\032\099\111\114\114\101\099\116\101\100\032\098\121\032\115\101\114\118\101\114"
end
local _ncd1afea74b2 = math.clamp(_n2064b8b218d.flightSpeed, 20, 300)
_nb832e4616c9.velocity.VectorVelocity = _nfc3ae1c0e6b.Unit * math.min(_ncd1afea74b2, _nfc3ae1c0e6b.Magnitude * 5)
task.wait(0.05)
end
if not _n2064b8b218d.active(_n90bf2d3f32b) then return false, "\083\116\111\112\112\101\100" end
end
_nb832e4616c9.velocity.VectorVelocity = Vector3.new(0, 0, 0)
return true
end
function _n2064b8b218d.onIdle()
if not _n2064b8b218d.alive or not _n2064b8b218d.antiAfk or os.clock() - _n2064b8b218d.lastIdlePulse < 60 then return end
_n2064b8b218d.lastIdlePulse = os.clock()
local _n30d5d7a77c5, _n0c14650548e = pcall(function()
local _n168532869f6 = game:GetService("\086\105\114\116\117\097\108\085\115\101\114")
_n168532869f6:CaptureController()
_n168532869f6:ClickButton2(Vector2.new(0, 0))
end)
if _n30d5d7a77c5 then _n2064b8b218d.antiAfkStatus = "\076\097\115\116\032\105\100\108\101\032\105\110\112\117\116\032\115\101\110\116"
else
_n2064b8b218d.antiAfk, _n2064b8b218d.antiAfkStatus = false, "\085\110\115\117\112\112\111\114\116\101\100\032\105\110\032\116\104\105\115\032\099\108\105\101\110\116"
_n2064b8b218d.notify("\065\110\116\105\045\065\070\075\032\117\110\097\118\097\105\108\097\098\108\101\058\032" .. tostring(_n0c14650548e), "\101\114\114\111\114")
end
end
function _n2064b8b218d.clearPresenceTags()
for _nd811a7cb48c, _ncabf650629c in pairs(_n2064b8b218d.presenceTags) do _ncabf650629c:Destroy() end
_n2064b8b218d.presenceTags = {}
end
function _n2064b8b218d.setPresence(_nd0c27618884)
if not _n2064b8b218d.presenceRemote then
_n2064b8b218d.presenceStatus = "\073\110\115\116\097\108\108\032\078\065\067\075\075\089\083\072\079\080\080\114\101\115\101\110\099\101\046\115\101\114\118\101\114\046\108\117\097\117\032\105\110\032\116\104\101\032\103\097\109\101\032\115\101\114\118\101\114\032\102\105\114\115\116"
_n2064b8b218d.notify(_n2064b8b218d.presenceStatus, "\101\114\114\111\114"); return
end
_n2064b8b218d.presenceEnabled = _nd0c27618884 == true
_n2064b8b218d.nextPresenceBeat = os.clock() + 30
local _n172e246a448, _nb81c9e08f39 = pcall(function() _n2064b8b218d.presenceRemote:FireServer(_n2064b8b218d.presenceEnabled) end)
if not _n172e246a448 then _n2064b8b218d.presenceEnabled = false; _n2064b8b218d.presenceStatus = tostring(_nb81c9e08f39) end
if not _n2064b8b218d.presenceEnabled then _n2064b8b218d.presenceUsers = {}; _n2064b8b218d.clearPresenceTags() end
_n2064b8b218d.presenceDirty = true
end
function _n2064b8b218d.connectPresence()
local _n4749a24ab3b = _n74f430a5b2d:FindFirstChild("\078\065\067\075\075\089\083\072\079\080\080\114\101\115\101\110\099\101\086\049")
if not _n4749a24ab3b or not _n4749a24ab3b:IsA("\082\101\109\111\116\101\069\118\101\110\116") then return end
_n2064b8b218d.presenceRemote = _n4749a24ab3b
_n2064b8b218d.presenceStatus = "\065\118\097\105\108\097\098\108\101\046\032\069\110\097\098\108\101\032\083\104\097\114\101\032\116\111\032\115\104\111\119\032\121\111\117\114\032\110\097\109\101\032\116\111\032\111\116\104\101\114\032\117\115\101\114\115\046"
_n2064b8b218d.connect(_n4749a24ab3b.OnClientEvent, function(_n97c54ff0c57)
if not _n2064b8b218d.presenceEnabled or type(_n97c54ff0c57) ~= "\116\097\098\108\101" then return end
local _n849e889b4d7 = {}
for _nec384632d8e, _n831b16bb9e0 in ipairs(_n97c54ff0c57) do
if type(_n831b16bb9e0) == "\116\097\098\108\101" and type(_n831b16bb9e0.UserId) == "\110\117\109\098\101\114" and type(_n831b16bb9e0.Name) == "\115\116\114\105\110\103" and type(_n831b16bb9e0.DisplayName) == "\115\116\114\105\110\103" then
table.insert(_n849e889b4d7, {UserId = _n831b16bb9e0.UserId, Name = _n831b16bb9e0.Name, DisplayName = _n831b16bb9e0.DisplayName})
if #_n849e889b4d7 >= 200 then break end
end
end
_n2064b8b218d.presenceUsers, _n2064b8b218d.presenceDirty = _n849e889b4d7, true
_n2064b8b218d.presenceStatus = tostring(#_n849e889b4d7) .. "\032\114\101\103\105\115\116\101\114\101\100\032\117\115\101\114\115\032\105\110\032\116\104\105\115\032\115\101\114\118\101\114"
end)
end
function _n2064b8b218d.active(_na4ad0d88e45)
return _n2064b8b218d.alive and _n2064b8b218d.generation == _na4ad0d88e45
end
function _n2064b8b218d.stop(_n2a1bc955a40)
_n2064b8b218d.releaseFlight()
_n2064b8b218d.generation += 1
_n2064b8b218d.mode, _n2064b8b218d.phase, _n2064b8b218d.progress = "\083\116\111\112\112\101\100", "\073\068\076\069", 0
if _n2a1bc955a40 then _n2064b8b218d.status = _n2a1bc955a40 end
local _n3c8ef2807bc, _n77a03a97f78 = _n2064b8b218d.character()
if _n3c8ef2807bc then _n3c8ef2807bc:MoveTo(_n77a03a97f78.Position) end
end
function _n2064b8b218d.eventActive()
return workspace:GetAttribute("\069\118\101\110\116\095\067\097\112\116\117\114\101\084\104\101\069\103\103\071\097\109\101\112\108\097\121") == true
end
function _n2064b8b218d.valid(_nd24df7627f8, _n4f6b3b8dac4)
return type(_nd24df7627f8) == "\116\097\098\108\101" and type(_nd24df7627f8.Uid) == "\115\116\114\105\110\103"
and typeof(_nd24df7627f8.BottomCFrame) == "\067\070\114\097\109\101"
and (_nd24df7627f8.State == _n2064b8b218d.Types.States.Slot or _nd24df7627f8.State == _n2064b8b218d.Types.States.Dropped)
and (not _n4f6b3b8dac4 or (_n2064b8b218d.eventActive()
and _nd24df7627f8.Uid == workspace:GetAttribute("\069\118\101\110\116\095\067\097\112\116\117\114\101\084\104\101\069\103\103\085\105\100")))
end
function _n2064b8b218d.describe(_n6212fd40eb5, _ne56142e8c7b, _nf704d579d6f)
local _n79ad12a1f1d = _n2064b8b218d.Assets and _n2064b8b218d.Assets.Directory[_n6212fd40eb5.AssetCategory]
local _n0a92ca416e4 = _n79ad12a1f1d and _n79ad12a1f1d.Rarity
local _nbf16022fa9a = _n2064b8b218d.safe(_n2064b8b218d.Records.DisplayName, _n6212fd40eb5)
or (_n79ad12a1f1d and _n79ad12a1f1d.Egg and _n79ad12a1f1d.Egg.DisplayName) or _n6212fd40eb5.AssetCategory or "\069\103\103"
local _n63afefe946f = _n2064b8b218d.safe(_n2064b8b218d.Records.WeightKgForScale, _n6212fd40eb5.AssetCategory, _n6212fd40eb5.AssetScale)
local _ncad2d6f273b = _n2064b8b218d.safe(_n2064b8b218d.Records.SellPrice, _n6212fd40eb5)
local _n6c7647196da = _n2064b8b218d.safe(_n2064b8b218d.Records.EggIcon, _n6212fd40eb5)
if type(_n6c7647196da) == "\110\117\109\098\101\114" then _n6c7647196da = "\114\098\120\097\115\115\101\116\105\100\058\047\047" .. tostring(_n6c7647196da) end
local _n1a2bf8a4b61 = {}
if type(_n6212fd40eb5.BaseMutation) == "\115\116\114\105\110\103" and _n6212fd40eb5.BaseMutation ~= "\078\111\110\101" then
table.insert(_n1a2bf8a4b61, _n6212fd40eb5.BaseMutation)
end
for _nc91afd590df, _n01edebc9d3d in ipairs(_n6212fd40eb5.Mutations or {}) do
if _n01edebc9d3d ~= "\078\111\110\101" and not table.find(_n1a2bf8a4b61, _n01edebc9d3d) then table.insert(_n1a2bf8a4b61, _n01edebc9d3d) end
end
local _n19030c65512 = _n0a92ca416e4 and tostring(_n0a92ca416e4._id) or "\085\110\107\110\111\119\110"
local _nebdf46aa2e7 = _n0a92ca416e4 and typeof(_n0a92ca416e4.Color) == "\067\111\108\111\114\051" and _n0a92ca416e4.Color or _nc64c6043109.mint
return {uid = tostring(_ne56142e8c7b), record = _n6212fd40eb5, name = _nbf16022fa9a, weight = _n63afefe946f, value = _ncad2d6f273b,
rarity = _n19030c65512, color = _nebdf46aa2e7, icon = type(_n6c7647196da) == "\115\116\114\105\110\103" and _n6c7647196da or "",
scale = _n6212fd40eb5.AssetScale, mutations = table.concat(_n1a2bf8a4b61, "\044\032"), owned = _nf704d579d6f,
rare = _n19030c65512 ~= "\067\111\109\109\111\110" and _n19030c65512 ~= "\085\110\099\111\109\109\111\110" and _n19030c65512 ~= "\085\110\107\110\111\119\110"}
end
function _n2064b8b218d.metadataFor(_nfd62a5e4d13, _n0d785441a37, _nd69f429b85c)
local _n618d3545a3c = (_nd69f429b85c and "\079\058" or "\070\058") .. tostring(_n0d785441a37)
local _n6e24a76ee29 = _n2064b8b218d.metadata[_n618d3545a3c]
local _n996ec787481 = tostring(_nfd62a5e4d13.AssetCategory) .. "\058" .. tostring(_nfd62a5e4d13.AssetScale)
.. "\058" .. tostring(_nfd62a5e4d13.BaseMutation) .. "\058" .. table.concat(_nfd62a5e4d13.Mutations or {}, "\044")
.. "\058" .. tostring(_nfd62a5e4d13.EggSkin)
if not _n6e24a76ee29 or _n6e24a76ee29.signature ~= _n996ec787481 then
_n6e24a76ee29 = _n2064b8b218d.describe(_nfd62a5e4d13, _n0d785441a37, _nd69f429b85c)
_n6e24a76ee29.signature = _n996ec787481
_n2064b8b218d.metadata[_n618d3545a3c] = _n6e24a76ee29
end
_n6e24a76ee29.record = _nfd62a5e4d13
return _n6e24a76ee29
end
function _n2064b8b218d.refreshData()
if not _n2064b8b218d.ready then return end
_n2064b8b218d.rows, _n2064b8b218d.owned = {}, {}
local _n27725f32540 = {}
for _nf8b6022d5df, _ne5d678c54f1 in ipairs(_n2064b8b218d.EggState.ReadFieldEggs().Records) do
if type(_ne5d678c54f1.Uid) == "\115\116\114\105\110\103" then
_n27725f32540["\070\058" .. _ne5d678c54f1.Uid] = true
table.insert(_n2064b8b218d.rows, _n2064b8b218d.metadataFor(_ne5d678c54f1, _ne5d678c54f1.Uid, false))
end
end
for _nda7adab6c31, _n06f4356ee99 in pairs(_n2064b8b218d.EggState.ReadOwnerEggs(_n73fd9822adb.UserId)) do
_n27725f32540["\079\058" .. tostring(_nda7adab6c31)] = true
table.insert(_n2064b8b218d.owned, _n2064b8b218d.metadataFor(_n06f4356ee99, _nda7adab6c31, true))
end
local _nc0fae172408, _n683c3f3a651 = {}, 0
for _n8ec0c49a811, _nd7274ca59ef in ipairs(_n2064b8b218d.owned) do _nc0fae172408[_nd7274ca59ef.uid] = true end
for _nbfeb7475e78 in pairs(_n2064b8b218d.ownedBaseline or {}) do if not _nc0fae172408[_nbfeb7475e78] then _n683c3f3a651 += 1 end end
if _n683c3f3a651 > 0 then _n2064b8b218d.notify("\073\110\118\101\110\116\111\114\121\032\099\104\097\110\103\101\100\058\032" .. _n683c3f3a651 .. "\032\101\103\103\040\115\041\032\114\101\109\111\118\101\100") end
_n2064b8b218d.ownedBaseline = _nc0fae172408
_n2064b8b218d.pets = {}
local _nba5fac4c791 = _n2064b8b218d.Save and _n2064b8b218d.safe(_n2064b8b218d.Save.Get)
if _nba5fac4c791 and _n2064b8b218d.AssetItems then
for _n679a2db9259, _n2256be2880b in pairs(_nba5fac4c791.Inventory or {}) do
local _n6d1c18edaef = _n2064b8b218d.Assets.Directory[_n2256be2880b.Category]
if _n6d1c18edaef then
local _n89da4da02b7 = table.clone(_n2256be2880b.Mutations or {})
if _n2256be2880b.BaseMutation and not table.find(_n89da4da02b7, _n2256be2880b.BaseMutation) then table.insert(_n89da4da02b7, _n2256be2880b.BaseMutation) end
local _n22b7167a67a = _n6d1c18edaef.Rarity and tostring(_n6d1c18edaef.Rarity._id) or "\085\110\107\110\111\119\110"
table.insert(_n2064b8b218d.pets, {uid = tostring(_n679a2db9259), record = _n2256be2880b, name = _n6d1c18edaef.DisplayName or _n2256be2880b.Category,
weight = _n2064b8b218d.safe(_n2064b8b218d.AssetItems.WeightKg, _n2256be2880b), value = _n2064b8b218d.safe(_n2064b8b218d.AssetItems.SalePrice, _n2256be2880b),
icon = type(_n6d1c18edaef.Icon) == "\115\116\114\105\110\103" and _n6d1c18edaef.Icon or "", scale = _n2256be2880b.Scale,
rarity = _n22b7167a67a, color = _nc64c6043109.mint, rare = _n22b7167a67a ~= "\067\111\109\109\111\110" and _n22b7167a67a ~= "\085\110\099\111\109\109\111\110" and _n22b7167a67a ~= "\085\110\107\110\111\119\110",
mutations = table.concat(_n89da4da02b7, "\044\032"), owned = true, pet = true})
end
end
end
for _n24878c60476 in pairs(_n2064b8b218d.metadata) do if not _n27725f32540[_n24878c60476] then _n2064b8b218d.metadata[_n24878c60476] = nil end end
local _n97f6380451d = not _n2064b8b218d.alertBaseline
local _nff429d74564 = {}
for _ne108fe6c37f, _nc22e94a4d2e in ipairs(_n2064b8b218d.rows) do
_nff429d74564[_nc22e94a4d2e.uid] = true
if not _n97f6380451d and not _n2064b8b218d.seen[_nc22e94a4d2e.uid] and _n2064b8b218d.valid(_nc22e94a4d2e.record, false) then
if _nc22e94a4d2e.weight and _nc22e94a4d2e.weight >= _n2064b8b218d.heavyAlert then
_n2064b8b218d.notify("\072\101\097\118\121\032\101\103\103\058\032" .. _nc22e94a4d2e.name .. "\032\047\032" .. _n2064b8b218d.number(_nc22e94a4d2e.weight) .. "\032\107\103", "\103\111\108\100")
elseif _nc22e94a4d2e.value and _nc22e94a4d2e.value >= _n2064b8b218d.valueAlert then
_n2064b8b218d.notify("\072\105\103\104\032\118\097\108\117\101\058\032" .. _nc22e94a4d2e.name .. "\032\047\032" .. _n2064b8b218d.number(_nc22e94a4d2e.value), "\103\111\108\100")
end
end
end
_n2064b8b218d.seen, _n2064b8b218d.alertBaseline = _nff429d74564, true
_n2064b8b218d.dirty, _n2064b8b218d.refreshAt = true, os.clock()
end
function _n2064b8b218d.matches(_n5fb98ee9707)
if _n2064b8b218d.rareOnly and not _n5fb98ee9707.rare then return false end
if _n2064b8b218d.minWeight > 0 and (not _n5fb98ee9707.weight or _n5fb98ee9707.weight < _n2064b8b218d.minWeight) then return false end
if _n2064b8b218d.minValue > 0 and (not _n5fb98ee9707.value or _n5fb98ee9707.value < _n2064b8b218d.minValue) then return false end
return true
end
function _n2064b8b218d.choose(_n61f7ad2a76b)
local _na19b33a4bbc, _na192072a533 = _n2064b8b218d.character()
if not _na192072a533 then return nil end
local _nfa85f5faf46, _n4ee7380bb26 = nil, -math.huge
for _n1cf530e0fef, _n494340d2d33 in pairs(_n2064b8b218d.blocked) do if _n494340d2d33 <= os.clock() then _n2064b8b218d.blocked[_n1cf530e0fef] = nil end end
for _nfae71b294c3, _n39c7163eca2 in ipairs(_n2064b8b218d.rows) do
local _n2395e1c100b = _n2064b8b218d.EggState.ReadFieldEgg(_n39c7163eca2.uid)
if _n2064b8b218d.valid(_n2395e1c100b, _n61f7ad2a76b) and _n2064b8b218d.matches(_n39c7163eca2) and not _n2064b8b218d.blocked[_n39c7163eca2.uid]
and (not _n2064b8b218d.targetOverride or _n2064b8b218d.targetOverride == _n39c7163eca2.uid) then
local _n744ca000084 = (_n2395e1c100b.BottomCFrame.Position - _na192072a533.Position).Magnitude
local _n98c5671d353 = -_n744ca000084
if _n2064b8b218d.selection == "\072\101\097\118\105\101\115\116" then _n98c5671d353 = _n39c7163eca2.weight or -math.huge
elseif _n2064b8b218d.selection == "\072\105\103\104\101\115\116\032\118\097\108\117\101" then _n98c5671d353 = _n39c7163eca2.value or -math.huge end
if _n98c5671d353 > _n4ee7380bb26 or (_n98c5671d353 == _n4ee7380bb26 and _nfa85f5faf46 and _n39c7163eca2.uid < _nfa85f5faf46.uid) then
_n39c7163eca2.record, _nfa85f5faf46, _n4ee7380bb26 = _n2395e1c100b, _n39c7163eca2, _n98c5671d353
end
end
end
return _nfa85f5faf46
end
function _n2064b8b218d.rpc(_n99fabb84299, _n7a10da99b3a)
if _n2064b8b218d.busy then return false, "\080\114\101\118\105\111\117\115\032\114\101\113\117\101\115\116\032\112\101\110\100\105\110\103" end
_n2064b8b218d.busy = true
local _n18e4a809c18
task.spawn(function() _n18e4a809c18 = table.pack(pcall(_n99fabb84299)); _n2064b8b218d.busy = false end)
local _ne6bbff48c80 = os.clock() + 10
repeat task.wait(0.05) until _n18e4a809c18 or not _n2064b8b218d.alive or (_n7a10da99b3a ~= nil and not _n2064b8b218d.active(_n7a10da99b3a)) or os.clock() > _ne6bbff48c80
if not _n18e4a809c18 then return false, "\082\101\113\117\101\115\116\032\115\116\105\108\108\032\112\101\110\100\105\110\103\059\032\115\116\111\112\112\101\100\032\116\111\032\097\118\111\105\100\032\100\117\112\108\105\099\097\116\101\115" end
if not _n18e4a809c18[1] then return false, tostring(_n18e4a809c18[2]) end
return true, table.unpack(_n18e4a809c18, 2, _n18e4a809c18.n)
end
function _n2064b8b218d.moveTo(_n6e2cf053149, _nf93868b5328, _nb70394ebd0b)
if _n2064b8b218d.flightEnabled then return _n2064b8b218d.flyTo(_n6e2cf053149, _nf93868b5328, _nb70394ebd0b) end
local _n67574d5356b, _n42486fb5985, _nf8a966b4653 = os.clock(), os.clock(), nil
while _n2064b8b218d.active(_nf93868b5328) and os.clock() - _n67574d5356b < 40 do
local _nb74e86feebb, _n2198a6c4a4e = _n2064b8b218d.character()
if not _nb74e86feebb then return false, "\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101" end
if _nb70394ebd0b and not _nb70394ebd0b() then _nb74e86feebb:MoveTo(_n2198a6c4a4e.Position); return false, "\084\097\114\103\101\116\032\111\114\032\101\118\101\110\116\032\099\104\097\110\103\101\100" end
local _na647f43e7cf = _n6e2cf053149 - _n2198a6c4a4e.Position
if Vector3.new(_na647f43e7cf.X, 0, _na647f43e7cf.Z).Magnitude < 3.5 and math.abs(_na647f43e7cf.Y) < 8 then
_nb74e86feebb:MoveTo(_n2198a6c4a4e.Position); return true
end
if not _nf8a966b4653 or (_n2198a6c4a4e.Position - _nf8a966b4653).Magnitude > 1 then
_n42486fb5985, _nf8a966b4653 = os.clock(), _n2198a6c4a4e.Position
elseif os.clock() - _n42486fb5985 > 4 then
_nb74e86feebb:MoveTo(_n2198a6c4a4e.Position); return false, "\080\097\116\104\032\098\108\111\099\107\101\100\059\032\116\097\114\103\101\116\032\115\107\105\112\112\101\100"
end
_nb74e86feebb:MoveTo(_n6e2cf053149)
task.wait(0.12)
end
local _ne503b798bdd, _n37641252c39 = _n2064b8b218d.character()
if _ne503b798bdd and _n2064b8b218d.active(_nf93868b5328) then _ne503b798bdd:MoveTo(_n37641252c39.Position) end
return false, "\077\111\118\101\109\101\110\116\032\116\105\109\101\111\117\116\032\111\114\032\115\116\111\112\112\101\100"
end
function _n2064b8b218d.returnHome(_n504785649c0)
local _n8978f85c13c = workspace:FindFirstChild("\095\095\079\066\074\069\067\084\083")
local _n2e51e5b40c9 = _n8978f85c13c and _n8978f85c13c:FindFirstChild("\065\114\101\097\115")
local _ne9d4c0ca6e6 = _n2e51e5b40c9 and _n2e51e5b40c9:FindFirstChild("\083\101\112\097\114\097\116\105\111\110\076\105\110\101")
local _n6febca7d270, _n96834df9e1b = _n2064b8b218d.character()
if not _ne9d4c0ca6e6 or not _ne9d4c0ca6e6:IsA("\066\097\115\101\080\097\114\116") or not _n96834df9e1b then return false, "\071\097\109\101\112\108\097\121\032\101\120\105\116\032\117\110\097\118\097\105\108\097\098\108\101" end
local _n38fb0f21450 = _ne9d4c0ca6e6.Position + Vector3.new(0, 3, 0) - _ne9d4c0ca6e6.CFrame.LookVector.Unit * 6
_n2064b8b218d.phase = "\082\069\084\085\082\078"
local _ne3c67750b15, _nc0bc933ffcd = _n2064b8b218d.moveTo(Vector3.new(_n38fb0f21450.X, _n38fb0f21450.Y, _n96834df9e1b.Position.Z), _n504785649c0)
if _n2064b8b218d.active(_n504785649c0) then _n2064b8b218d.releaseFlight() end
return _ne3c67750b15, _nc0bc933ffcd
end
function _n2064b8b218d.retreat(_n4f6b3d241d9)
if not _n2064b8b218d.active(_n4f6b3d241d9) or not _n2064b8b218d.flight then return end
_n2064b8b218d.status = "\076\101\097\118\105\110\103\032\116\104\101\032\112\105\099\107\117\112\032\097\114\101\097"
local _n7813812c462, _na67376b9e36 = _n2064b8b218d.returnHome(_n4f6b3d241d9)
if _n2064b8b218d.active(_n4f6b3d241d9) and not _n7813812c462 then
_n2064b8b218d.releaseFlight()
_n2064b8b218d.notify("\082\101\116\114\101\097\116\032\102\097\105\108\101\100\058\032" .. tostring(_na67376b9e36), "\101\114\114\111\114")
end
end
function _n2064b8b218d.run(_n2f6bcfa6071, _ndf0d998771d)
while _n2064b8b218d.active(_ndf0d998771d) do
if _n2064b8b218d.busy then _n2064b8b218d.status = "\087\097\105\116\105\110\103\032\102\111\114\032\112\114\101\118\105\111\117\115\032\114\101\113\117\101\115\116"; task.wait(0.3); continue end
if not _n2064b8b218d.character() then _n2064b8b218d.phase = "\082\069\083\080\065\087\078"; _n2064b8b218d.status = "\087\097\105\116\105\110\103\032\102\111\114\032\099\104\097\114\097\099\116\101\114"; task.wait(0.4); continue end
local _n6f40fe9ed4a = _n2f6bcfa6071 == "\065\117\116\111\032\069\118\101\110\116"
if _n6f40fe9ed4a and not _n2064b8b218d.eventActive() then
_n2064b8b218d.phase, _n2064b8b218d.status = "\087\065\073\084\032\069\086\069\078\084", "\087\097\105\116\105\110\103\032\102\111\114\032\067\097\112\116\117\114\101\084\104\101\069\103\103"
task.wait(0.5); continue
end
if _n2064b8b218d.carry and _n2064b8b218d.carry.IsCarrying then
local _na11e7f4b1ef, _n2fa86db8412 = _n2064b8b218d.returnHome(_ndf0d998771d)
if not _n2064b8b218d.active(_ndf0d998771d) then return end
if not _na11e7f4b1ef then _n2064b8b218d.status = _n2fa86db8412; return end
local _nce22ac63ab3 = os.clock() + 8
repeat task.wait(0.1) until not _n2064b8b218d.active(_ndf0d998771d) or not _n2064b8b218d.carry.IsCarrying or os.clock() > _nce22ac63ab3
if not _n2064b8b218d.active(_ndf0d998771d) then return end
if _n2064b8b218d.carry.IsCarrying then _n2064b8b218d.status = "\083\116\105\108\108\032\099\097\114\114\121\105\110\103\059\032\112\108\101\097\115\101\032\114\101\116\117\114\110\032\109\097\110\117\097\108\108\121"; return end
end
_n2064b8b218d.phase = "\083\067\065\078"
_n2064b8b218d.refreshData()
local _n32435186674 = _n2064b8b218d.choose(_n6f40fe9ed4a)
if not _n32435186674 then
_n2064b8b218d.status = _n2064b8b218d.targetOverride and "\083\101\108\101\099\116\101\100\032\101\103\103\032\117\110\097\118\097\105\108\097\098\108\101\059\032\099\108\101\097\114\032\080\105\110\032\105\110\032\083\101\116\116\105\110\103\115" or "\087\097\105\116\105\110\103\032\102\111\114\032\101\103\103\115\032\109\097\116\099\104\105\110\103\032\121\111\117\114\032\102\105\108\116\101\114\115"
task.wait(0.8); continue
end
_n2064b8b218d.target, _n2064b8b218d.blocked[_n32435186674.uid] = _n32435186674, os.clock() + 20
local function _n2835e89f7d0() return _n2064b8b218d.valid(_n2064b8b218d.EggState.ReadFieldEgg(_n32435186674.uid), _n6f40fe9ed4a) end
if _n2f6bcfa6071 ~= "\073\110\115\116\097\110\116\032\083\116\101\097\108" or _n2064b8b218d.flightEnabled then
_n2064b8b218d.phase, _n2064b8b218d.status = "\077\079\086\069", "\065\112\112\114\111\097\099\104\105\110\103\032" .. _n32435186674.name
local _n0dff72a46a3, _n890ed2c3840 = _n2064b8b218d.moveTo(_n32435186674.record.BottomCFrame.Position, _ndf0d998771d, _n2835e89f7d0)
if not _n2064b8b218d.active(_ndf0d998771d) then return end
if not _n0dff72a46a3 then
_n2064b8b218d.failures += 1; _n2064b8b218d.notify(_n890ed2c3840, "\101\114\114\111\114")
_n2064b8b218d.retreat(_ndf0d998771d)
if not _n2064b8b218d.active(_ndf0d998771d) then return end
_n2064b8b218d.status = _n890ed2c3840; task.wait(0.4); continue
end
_n2064b8b218d.phase = "\080\073\067\075\085\080"
local _n6a97742f6d3 = _n2064b8b218d.quickPickup and 0 or (workspace:GetAttribute("\070\097\115\116\069\103\103\080\105\099\107\117\112\084\105\109\101") and 0.25 or 1.2)
local _n697f3a0aaa1 = os.clock()
while _n2064b8b218d.active(_ndf0d998771d) and _n2835e89f7d0() and os.clock() - _n697f3a0aaa1 < _n6a97742f6d3 do
_n2064b8b218d.progress = math.clamp((os.clock() - _n697f3a0aaa1) / _n6a97742f6d3, 0, 1)
task.wait(0.03)
end
end
if not _n2064b8b218d.active(_ndf0d998771d) then return end
if not _n2835e89f7d0() then
_n2064b8b218d.retreat(_ndf0d998771d)
if not _n2064b8b218d.active(_ndf0d998771d) then return end
_n2064b8b218d.status = "\084\097\114\103\101\116\032\099\104\097\110\103\101\100\032\098\101\102\111\114\101\032\112\105\099\107\117\112"; continue
end
local _n2b6f3debf5b
if _n2064b8b218d.Identity.LooksLikeFirstAreaUid(_n32435186674.uid) then _n2b6f3debf5b = _n2064b8b218d.Identity.SlotKey(_n32435186674.record.AreaId, _n32435186674.record.NestId) end
local _ndbf175f14ec = _n2064b8b218d.rewards
_n2064b8b218d.phase, _n2064b8b218d.status, _n2064b8b218d.progress = "\086\069\082\073\070\089", "\087\097\105\116\105\110\103\032\102\111\114\032\115\101\114\118\101\114\032\114\101\115\112\111\110\115\101", 1
local _nb5118e0f138, _nd9f05324378, _nd0fba888f4f = _n2064b8b218d.rpc(function() return _n2064b8b218d.EggState.CarryFieldEgg(_n32435186674.uid, _n2b6f3debf5b) end, _ndf0d998771d)
if not _n2064b8b218d.active(_ndf0d998771d) then return end
if not _nb5118e0f138 then
_n2064b8b218d.failures += 1
_n2064b8b218d.retreat(_ndf0d998771d)
if not _n2064b8b218d.active(_ndf0d998771d) then return end
_n2064b8b218d.status = tostring(_nd9f05324378); _n2064b8b218d.notify(_n2064b8b218d.status, "\101\114\114\111\114"); return
end
if _nd9f05324378 ~= true then
_n2064b8b218d.failures += 1
local _n4de0d3a912f = "\083\101\114\118\101\114\032\114\101\106\101\099\116\101\100\058\032" .. tostring(_nd0fba888f4f or "\078\111\032\114\101\097\115\111\110\032\114\101\116\117\114\110\101\100")
_n2064b8b218d.blocked[_n32435186674.uid] = os.clock() + 20
_n2064b8b218d.retreat(_ndf0d998771d)
if not _n2064b8b218d.active(_ndf0d998771d) then return end
_n2064b8b218d.status = _n4de0d3a912f
_n2064b8b218d.notify(_n2064b8b218d.status, "\101\114\114\111\114")
else
local _nb7a5f8a4e96, _nfca55361411 = _n2064b8b218d.returnHome(_ndf0d998771d)
if not _n2064b8b218d.active(_ndf0d998771d) then return end
if not _nb7a5f8a4e96 then _n2064b8b218d.status = _nfca55361411; return end
_n2064b8b218d.phase, _n2064b8b218d.status = "\086\069\082\073\070\089", "\087\097\105\116\105\110\103\032\102\111\114\032\115\101\114\118\101\114\032\114\101\119\097\114\100\032\110\111\116\105\102\105\099\097\116\105\111\110"
local _n70c6ec1d809 = os.clock() + 8
while _n2064b8b218d.active(_ndf0d998771d) and _n2064b8b218d.rewards == _ndbf175f14ec and os.clock() < _n70c6ec1d809 do task.wait(0.1) end
if not _n2064b8b218d.active(_ndf0d998771d) then return end
if _n2064b8b218d.rewards == _ndbf175f14ec then _n2064b8b218d.status = "\080\105\099\107\117\112\032\097\099\099\101\112\116\101\100\059\032\114\101\119\097\114\100\032\117\110\099\111\110\102\105\114\109\101\100\046\032\083\116\111\112\112\101\100\046"; return end
_n2064b8b218d.status = "\083\101\114\118\101\114\032\114\101\119\097\114\100\032\099\111\110\102\105\114\109\101\100"
_n2064b8b218d.targetOverride = nil
end
_n2064b8b218d.progress = 0
if _n2f6bcfa6071 == "\073\110\115\116\097\110\116\032\083\116\101\097\108" then return end
task.wait(0.6)
end
end
function _n2064b8b218d.start(_n4fdb8dd1f8f)
if not _n2064b8b218d.ready then _n2064b8b218d.notify(_n2064b8b218d.status, "\101\114\114\111\114"); return end
if _n2064b8b218d.busy then _n2064b8b218d.stop("\082\101\113\117\101\115\116\032\112\101\110\100\105\110\103\046\032\087\097\105\116\032\102\111\114\032\105\116\032\116\111\032\102\105\110\105\115\104\032\098\101\102\111\114\101\032\114\101\115\116\097\114\116\105\110\103\046"); _n2064b8b218d.notify(_n2064b8b218d.status); return end
_n2064b8b218d.stop()
_n2064b8b218d.mode = _n4fdb8dd1f8f
local _n4659d40e7b4 = _n2064b8b218d.generation
_n2064b8b218d.notify(_n4fdb8dd1f8f .. "\032\115\116\097\114\116\101\100")
task.spawn(function()
local _n51d5f41ea92, _n63e9055c92a = pcall(_n2064b8b218d.run, _n4fdb8dd1f8f, _n4659d40e7b4)
if _n2064b8b218d.active(_n4659d40e7b4) then
if not _n51d5f41ea92 then _n2064b8b218d.status = "\069\114\114\111\114\058\032" .. tostring(_n63e9055c92a); _n2064b8b218d.notify(_n2064b8b218d.status, "\101\114\114\111\114") end
_n2064b8b218d.stop()
end
end)
end
function _n2064b8b218d.drop()
if not _n2064b8b218d.ready then return end
if _n2064b8b218d.busy then _n2064b8b218d.stop("\087\097\105\116\032\102\111\114\032\116\104\101\032\111\117\116\115\116\097\110\100\105\110\103\032\114\101\113\117\101\115\116\032\098\101\102\111\114\101\032\100\114\111\112\112\105\110\103"); return end
_n2064b8b218d.stop("\068\114\111\112\112\105\110\103\032\104\101\108\100\032\101\103\103\046\046\046")
local _n9d57ce2fd21 = _n2064b8b218d.generation
task.spawn(function()
local _n40c012bf05f, _nf72d4513c93, _ne604a241c4d = _n2064b8b218d.rpc(function() return _n2064b8b218d.EggState.DropFieldEgg("\080\108\097\121\101\114\082\101\113\117\101\115\116") end, _n9d57ce2fd21)
if not _n2064b8b218d.active(_n9d57ce2fd21) then return end
_n2064b8b218d.status = _n40c012bf05f and _nf72d4513c93 == true and "\068\114\111\112\032\097\099\099\101\112\116\101\100\032\098\121\032\115\101\114\118\101\114" or "\068\114\111\112\032\102\097\105\108\101\100\058\032" .. tostring(_ne604a241c4d or _nf72d4513c93)
_n2064b8b218d.notify(_n2064b8b218d.status, _n40c012bf05f and _nf72d4513c93 == true and "\105\110\102\111" or "\101\114\114\111\114")
end)
end
function _n2064b8b218d.buildUI()
local _n93f83ad32ee = _n2064b8b218d.ui
local function _n0261082a713(_nae48fb7adc2, _ne3f81b9de5c, _n75e58654d7f)
local _ne5523136c35 = Instance.new(_nae48fb7adc2)
for _n919741a9784, _n2a743123179 in pairs(_n75e58654d7f or {}) do _ne5523136c35[_n919741a9784] = _n2a743123179 end
_ne5523136c35.Parent = _ne3f81b9de5c
return _ne5523136c35
end
local function _n413b2da9ca9(_ne46c9b9b6dc, _n564972da6f8)
_n0261082a713("\085\073\067\111\114\110\101\114", _ne46c9b9b6dc, {CornerRadius = UDim.new(0, _n564972da6f8 or 12)})
end
local function _nf61daeca942(_n4e8cc41099c, _nff0e5acbbee, _ncc9c2baa790)
return _n0261082a713("\085\073\083\116\114\111\107\101", _n4e8cc41099c, {Color = _nff0e5acbbee or _nc64c6043109.edge, Transparency = _ncc9c2baa790 or 0.45, Thickness = 1})
end
local function _nd2b36f93bc5(_n64f32269b6c, _naae46c9e1d8, _nb10dc1561c6, _ne2e3610c53f, _ncaf53a11260, _n043cb4c937a)
return _n0261082a713("\084\101\120\116\076\097\098\101\108", _n64f32269b6c, {Text = _naae46c9e1d8, TextSize = _nb10dc1561c6 or 14, TextColor3 = _ne2e3610c53f or _nc64c6043109.ink,
Font = Enum.Font.Gotham, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left,
Position = _ncaf53a11260 or UDim2.new(), Size = _n043cb4c937a or UDim2.new(1, 0, 0, 24), TextWrapped = true})
end
local function _nd9418a7b259(_nff982912740, _n184c9706d56, _nda14799da48)
local _nfd6ec28afb9 = _n0261082a713("\070\114\097\109\101", _nff982912740, {Size = _n184c9706d56, Position = _nda14799da48 or UDim2.new(),
BackgroundColor3 = _nc64c6043109.panel, BackgroundTransparency = 0.13, BorderSizePixel = 0})
_n413b2da9ca9(_nfd6ec28afb9, 13); _nf61daeca942(_nfd6ec28afb9)
return _nfd6ec28afb9
end
local function _n2ffbcb47b51(_n54842ad6b04, _ne5e00dccf99)
if _n2064b8b218d.motion then _nba8b43745e7:Create(_n54842ad6b04, TweenInfo.new(0.18, Enum.EasingStyle.Quad), _ne5e00dccf99):Play()
else for _n02ef27c7509, _n650c120cc4c in pairs(_ne5e00dccf99) do _n54842ad6b04[_n02ef27c7509] = _n650c120cc4c end end
end
local function _n5feacb8d952(_n310c1669430, _n6781631f852, _n7632071f857, _n64f35aa5490, _n114add37dca, _n8554c9b986b)
local _n48e7c905684 = _n0261082a713("\084\101\120\116\066\117\116\116\111\110", _n310c1669430, {Text = _n6781631f852, TextSize = 13, Font = Enum.Font.GothamBold,
TextColor3 = _n8554c9b986b and _nc64c6043109.bg or _nc64c6043109.ink, BackgroundColor3 = _n8554c9b986b or _nc64c6043109.panel,
BorderSizePixel = 0, AutoButtonColor = false, Position = _n7632071f857, Size = _n64f35aa5490})
_n413b2da9ca9(_n48e7c905684, 10); _nf61daeca942(_n48e7c905684, _n8554c9b986b or _nc64c6043109.edge, 0.6)
_n48e7c905684.Activated:Connect(_n114add37dca)
_n48e7c905684.MouseEnter:Connect(function() _n2ffbcb47b51(_n48e7c905684, {BackgroundTransparency = 0.17}) end)
_n48e7c905684.MouseLeave:Connect(function() _n2ffbcb47b51(_n48e7c905684, {BackgroundTransparency = 0}) end)
return _n48e7c905684
end
local function _n5313efed638(_n5f0f818612e)
return _n0261082a713("\083\099\114\111\108\108\105\110\103\070\114\097\109\101", _n5f0f818612e, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
BorderSizePixel = 0, ScrollBarThickness = 4, ScrollBarImageColor3 = _nc64c6043109.mint,
CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y,
ScrollingDirection = Enum.ScrollingDirection.Y})
end
_n93f83ad32ee.gui = _n0261082a713("\083\099\114\101\101\110\071\117\105", _n112046b4611, {Name = "\078\065\067\075\075\089\083\072\079\080\085\073", ResetOnSpawn = false, DisplayOrder = 120,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
_n93f83ad32ee.root = _n0261082a713("\070\114\097\109\101", _n93f83ad32ee.gui, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1})
_n93f83ad32ee.window = _nd9418a7b259(_n93f83ad32ee.root, UDim2.fromOffset(790, 650), UDim2.fromOffset(30, 30))
_n93f83ad32ee.window.BackgroundColor3 = _nc64c6043109.bg
_n93f83ad32ee.window.BackgroundTransparency = 0.07
_n93f83ad32ee.window.ClipsDescendants = true
_n0261082a713("\085\073\071\114\097\100\105\101\110\116", _n93f83ad32ee.window, {Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 255, 245)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(168, 190, 224))}), Rotation = 65})
_n93f83ad32ee.titlebar = _n0261082a713("\070\114\097\109\101", _n93f83ad32ee.window, {BackgroundTransparency = 1, Size = UDim2.new(1, -155, 0, 59), Active = true})
_nd2b36f93bc5(_n93f83ad32ee.titlebar, "\078\075", 18, _nc64c6043109.mint, UDim2.fromOffset(18, 13), UDim2.fromOffset(36, 30)).Font = Enum.Font.GothamBold
_nd2b36f93bc5(_n93f83ad32ee.titlebar, "\078\065\067\075\075\089\083\072\079\080", 15, _nc64c6043109.ink, UDim2.fromOffset(63, 10), UDim2.new(1, -67, 0, 23)).Font = Enum.Font.GothamBold
_nd2b36f93bc5(_n93f83ad32ee.titlebar, "\064" .. _n73fd9822adb.Name, 10, _nc64c6043109.muted, UDim2.fromOffset(63, 34), UDim2.new(1, -67, 0, 16))
_n93f83ad32ee.blur = _n0261082a713("\066\108\117\114\069\102\102\101\099\116", _nf671e725ac1, {Name = "\078\065\067\075\075\089\083\072\079\080\066\108\117\114", Size = 0, Enabled = false})
_n93f83ad32ee.launcher = _n5feacb8d952(_n93f83ad32ee.root, "\078\075\032\032\047\032\032\079\080\069\078", UDim2.new(1, -134, 0, 12), UDim2.fromOffset(120, 44), function() _n2064b8b218d.show() end, _nc64c6043109.mint)
_n93f83ad32ee.launcher.Visible = false
_n93f83ad32ee.close = _n5feacb8d952(_n93f83ad32ee.window, "\088", UDim2.new(1, -48, 0, 11), UDim2.fromOffset(36, 36), function()
_n2064b8b218d.stop("\067\108\111\115\101\100\046\032\082\101\111\112\101\110\032\116\111\032\099\111\110\116\105\110\117\101\046"); _n2064b8b218d.setSpeedEnabled(false)
_n2064b8b218d.hidden = true; _n93f83ad32ee.window.Visible = false; _n93f83ad32ee.launcher.Visible = true; _n93f83ad32ee.blur.Enabled = false
end)
_n93f83ad32ee.minimize = _n5feacb8d952(_n93f83ad32ee.window, "\095", UDim2.new(1, -130, 0, 11), UDim2.fromOffset(36, 36), function()
_n2064b8b218d.minimized = not _n2064b8b218d.minimized; _n2064b8b218d.layout()
end)
_n93f83ad32ee.maximize = _n5feacb8d952(_n93f83ad32ee.window, "\043", UDim2.new(1, -89, 0, 11), UDim2.fromOffset(36, 36), function()
_n93f83ad32ee.large = not _n93f83ad32ee.large; _n93f83ad32ee.userSize = nil; _n2064b8b218d.minimized = false; _n2064b8b218d.layout(true)
end)
_n93f83ad32ee.tabs = _n0261082a713("\083\099\114\111\108\108\105\110\103\070\114\097\109\101", _n93f83ad32ee.window, {Position = UDim2.fromOffset(14, 62), Size = UDim2.new(1, -28, 0, 44), BackgroundTransparency = 1,
BorderSizePixel = 0, CanvasSize = UDim2.new(), ScrollBarThickness = 2, ScrollingDirection = Enum.ScrollingDirection.X})
_n93f83ad32ee.tabButtons, _n93f83ad32ee.pages = {}, {}
_n93f83ad32ee.body = _n0261082a713("\070\114\097\109\101", _n93f83ad32ee.window, {Position = UDim2.fromOffset(16, 119), Size = UDim2.new(1, -32, 1, -170), BackgroundTransparency = 1})
_n93f83ad32ee.tabNames = {"\070\097\114\109", "\069\103\103\115", "\079\119\110\101\100", "\080\101\116\115", "\085\115\101\114\115", "\065\108\101\114\116\115", "\083\101\116\116\105\110\103\115"}
for _nc1e5a8f1ebd, _n93d9de96aa1 in ipairs(_n93f83ad32ee.tabNames) do
_n93f83ad32ee.tabButtons[_n93d9de96aa1] = _n5feacb8d952(_n93f83ad32ee.tabs, _n93d9de96aa1, UDim2.fromOffset((_nc1e5a8f1ebd - 1) * 72, 0), UDim2.fromOffset(68, 40), function() _n2064b8b218d.switchTab(_n93d9de96aa1) end)
_n93f83ad32ee.tabButtons[_n93d9de96aa1].TextSize = 11
_n93f83ad32ee.pages[_n93d9de96aa1] = _n0261082a713("\070\114\097\109\101", _n93f83ad32ee.body, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Visible = _n93d9de96aa1 == "\070\097\114\109"})
end
_n93f83ad32ee.footer = _nd2b36f93bc5(_n93f83ad32ee.window, "\067\111\110\110\101\099\116\105\110\103\046\046\046", 11, _nc64c6043109.muted, UDim2.new(0, 17, 1, -38), UDim2.new(1, -60, 0, 28))
_n93f83ad32ee.resize = _n5feacb8d952(_n93f83ad32ee.window, "\047\047", UDim2.new(1, -40, 1, -36), UDim2.fromOffset(32, 29), function() end)
_n93f83ad32ee.resize.TextColor3 = _nc64c6043109.muted
_n93f83ad32ee.resize.Active = true
_n93f83ad32ee.toast = _nd2b36f93bc5(_n93f83ad32ee.root, "", 13, _nc64c6043109.ink, UDim2.new(0.5, -180, 0, 8), UDim2.fromOffset(360, 54))
_n93f83ad32ee.toast.BackgroundColor3, _n93f83ad32ee.toast.BackgroundTransparency, _n93f83ad32ee.toast.Visible = _nc64c6043109.panel, 0.05, false
_n93f83ad32ee.toast.TextXAlignment = Enum.TextXAlignment.Center
_n93f83ad32ee.toast.ZIndex = 10
_n413b2da9ca9(_n93f83ad32ee.toast, 12); _nf61daeca942(_n93f83ad32ee.toast, _nc64c6043109.mint)
_n93f83ad32ee.hud = _nd9418a7b259(_n93f83ad32ee.root, UDim2.fromOffset(340, 65), UDim2.new(0.5, -170, 1, -81))
_n93f83ad32ee.hud.Visible = false
_n93f83ad32ee.hudText = _nd2b36f93bc5(_n93f83ad32ee.hud, "", 12, _nc64c6043109.ink, UDim2.fromOffset(12, 7), UDim2.new(1, -73, 1, -14))
_n5feacb8d952(_n93f83ad32ee.hud, "\083\084\079\080", UDim2.new(1, -62, 0, 12), UDim2.fromOffset(53, 40), function()
_n2064b8b218d.stop("\083\116\111\112\112\101\100\032\102\114\111\109\032\072\085\068"); _n2064b8b218d.setSpeedEnabled(false)
end, _nc64c6043109.red)
local _n64a2948eb66 = _n5313efed638(_n93f83ad32ee.pages.Farm)
_n93f83ad32ee.hero = _nd9418a7b259(_n64a2948eb66, UDim2.new(1, -8, 0, 174))
_nd2b36f93bc5(_n93f83ad32ee.hero, "\089\079\085\082\032\078\069\088\084\032\070\073\078\068", 10, _nc64c6043109.mint, UDim2.fromOffset(18, 12))
_n93f83ad32ee.heroImage = _n0261082a713("\073\109\097\103\101\076\097\098\101\108", _n93f83ad32ee.hero, {BackgroundTransparency = 1, Position = UDim2.fromOffset(14, 38), Size = UDim2.fromOffset(94, 94), ScaleType = Enum.ScaleType.Fit})
_n93f83ad32ee.heroName = _nd2b36f93bc5(_n93f83ad32ee.hero, "\082\101\097\100\121\032\116\111\032\101\120\112\108\111\114\101", 21, _nc64c6043109.ink, UDim2.fromOffset(119, 38), UDim2.new(1, -135, 0, 51))
_n93f83ad32ee.heroName.Font = Enum.Font.GothamBold
_n93f83ad32ee.heroDetails = _nd2b36f93bc5(_n93f83ad32ee.hero, "\083\101\108\101\099\116\032\097\032\109\111\100\101\032\098\101\108\111\119", 12, _nc64c6043109.muted, UDim2.fromOffset(119, 94), UDim2.new(1, -135, 0, 44))
_n93f83ad32ee.progressLabel = _nd2b36f93bc5(_n93f83ad32ee.hero, "\073\068\076\069", 10, _nc64c6043109.muted, UDim2.fromOffset(18, 143), UDim2.new(1, -36, 0, 17))
local _n9b83f667340 = _n0261082a713("\070\114\097\109\101", _n93f83ad32ee.hero, {Position = UDim2.new(0, 18, 1, -9), Size = UDim2.new(1, -36, 0, 3), BackgroundColor3 = _nc64c6043109.edge, BorderSizePixel = 0})
_n93f83ad32ee.progress = _n0261082a713("\070\114\097\109\101", _n9b83f667340, {Size = UDim2.fromScale(0, 1), BackgroundColor3 = _nc64c6043109.mint, BorderSizePixel = 0})
_n93f83ad32ee.stats = _nd9418a7b259(_n64a2948eb66, UDim2.new(1, -8, 0, 76), UDim2.fromOffset(0, 186))
_n93f83ad32ee.statLabels = {}
for _n01d9485070a, _n9651a0e9526 in ipairs({"\082\069\087\065\082\068\083", "\070\065\073\076\069\068", "\083\080\069\069\068"}) do
_nd2b36f93bc5(_n93f83ad32ee.stats, _n9651a0e9526, 10, _nc64c6043109.muted, UDim2.new((_n01d9485070a - 1) / 3, 14, 0, 10), UDim2.new(1 / 3, -18, 0, 16))
_n93f83ad32ee.statLabels[_n01d9485070a] = _nd2b36f93bc5(_n93f83ad32ee.stats, "\045\045", 24, _n01d9485070a == 2 and _nc64c6043109.gold or _nc64c6043109.mint,
UDim2.new((_n01d9485070a - 1) / 3, 14, 0, 29), UDim2.new(1 / 3, -18, 0, 33))
_n93f83ad32ee.statLabels[_n01d9485070a].Font = Enum.Font.GothamBold
end
_n93f83ad32ee.modeButtons = {}
local _n4fe16a35d68 = {{"\073\110\115\116\097\110\116\032\083\116\101\097\108", "\079\110\101\032\105\109\109\101\100\105\097\116\101\032\112\105\099\107\117\112\032\114\101\113\117\101\115\116", _nc64c6043109.gold},
{"\083\116\101\097\108\032\069\118\101\114\121\116\104\105\110\103", "\067\111\108\108\101\099\116\032\109\097\116\099\104\105\110\103\032\101\103\103\115\032\105\110\032\097\032\108\111\111\112", _nc64c6043109.mint},
{"\065\117\116\111\032\069\118\101\110\116", "\067\097\112\116\117\114\101\084\104\101\069\103\103\032\111\098\106\101\099\116\105\118\101\115", Color3.fromRGB(190, 187, 244)}}
for _nf79320b7a30, _n281f86eb334 in ipairs(_n4fe16a35d68) do
local _n2d32db0eb3a = _n5feacb8d952(_n64a2948eb66, "", UDim2.fromOffset(0, 276 + (_nf79320b7a30 - 1) * 68), UDim2.new(1, -8, 0, 58), function() _n2064b8b218d.start(_n281f86eb334[1]) end)
_nd2b36f93bc5(_n2d32db0eb3a, string.format("\048\037\100", _nf79320b7a30), 17, _n281f86eb334[3], UDim2.fromOffset(16, 12), UDim2.fromOffset(36, 30)).Font = Enum.Font.GothamBold
_nd2b36f93bc5(_n2d32db0eb3a, _n281f86eb334[1], 15, _nc64c6043109.ink, UDim2.fromOffset(60, 7), UDim2.new(1, -94, 0, 23)).Font = Enum.Font.GothamBold
_nd2b36f93bc5(_n2d32db0eb3a, _n281f86eb334[2], 11, _nc64c6043109.muted, UDim2.fromOffset(60, 31), UDim2.new(1, -76, 0, 18))
_nd2b36f93bc5(_n2d32db0eb3a, "\062", 20, _n281f86eb334[3], UDim2.new(1, -30, 0, 13), UDim2.fromOffset(23, 30))
_n93f83ad32ee.modeButtons[_n281f86eb334[1]] = _n2d32db0eb3a
end
_n93f83ad32ee.stopAll = _n5feacb8d952(_n64a2948eb66, "\083\084\079\080\032\065\076\076", UDim2.fromOffset(0, 483), UDim2.new(0.5, -8, 0, 44), function()
_n2064b8b218d.stop("\083\116\111\112\112\101\100\032\098\121\032\121\111\117"); _n2064b8b218d.setSpeedEnabled(false)
end, _nc64c6043109.red)
_n5feacb8d952(_n64a2948eb66, "\068\082\079\080\032\069\071\071", UDim2.new(0.5, 0, 0, 483), UDim2.new(0.5, -8, 0, 44), _n2064b8b218d.drop)
_n93f83ad32ee.carryPanel = _nd9418a7b259(_n64a2948eb66, UDim2.new(1, -8, 0, 107), UDim2.fromOffset(0, 540))
_nd2b36f93bc5(_n93f83ad32ee.carryPanel, "\067\065\082\082\089\032\077\079\078\073\084\079\082", 10, _nc64c6043109.mint, UDim2.fromOffset(14, 10))
_n93f83ad32ee.carryText = _nd2b36f93bc5(_n93f83ad32ee.carryPanel, "\078\111\116\032\099\097\114\114\121\105\110\103", 13, _nc64c6043109.ink, UDim2.fromOffset(14, 34), UDim2.new(1, -28, 0, 60))
_nd2b36f93bc5(_n64a2948eb66, "\070\097\115\116\032\102\108\105\103\104\116\032\115\116\097\114\116\115\032\097\116\032\049\050\048\032\115\116\117\100\115\047\115\046\032\081\117\105\099\107\032\112\105\099\107\117\112\032\115\107\105\112\115\032\116\104\101\032\108\111\099\097\108\032\119\097\105\116\059\032\116\104\101\032\115\101\114\118\101\114\032\099\097\110\032\115\116\105\108\108\032\114\101\106\101\099\116\032\097\032\114\101\113\117\101\115\116\046", 11, _nc64c6043109.muted,
UDim2.fromOffset(0, 660), UDim2.new(1, -12, 0, 50))
_n93f83ad32ee.catalogs = {}
for _n2808b0cc8a1, _n752bb9514c9 in ipairs({"\069\103\103\115", "\079\119\110\101\100", "\080\101\116\115"}) do
local _ncfe7ada816f = _n93f83ad32ee.pages[_n752bb9514c9]
local _nb0becb01dcc = _n0261082a713("\084\101\120\116\066\111\120", _ncfe7ada816f, {Position = UDim2.new(), Size = UDim2.new(1, 0, 0, 43),
BackgroundColor3 = _nc64c6043109.panel, TextColor3 = _nc64c6043109.ink, PlaceholderText = "\083\101\097\114\099\104\032\110\097\109\101\044\032\114\097\114\105\116\121\044\032\109\117\116\097\116\105\111\110\046\046\046",
PlaceholderColor3 = _nc64c6043109.muted, Text = "", ClearTextOnFocus = false, TextSize = 13, Font = Enum.Font.Gotham})
_n413b2da9ca9(_nb0becb01dcc, 10); _nf61daeca942(_nb0becb01dcc)
local _n69af2537c5c = _n5feacb8d952(_ncfe7ada816f, "\070\105\108\116\101\114\058\032\065\108\108", UDim2.fromOffset(0, 53), UDim2.new(0.5, -5, 0, 39), function()
local _n0e47fd9e0bd = {"\065\108\108", "\082\097\114\101", "\077\117\116\097\116\101\100", "\065\118\097\105\108\097\098\108\101"}
_n2064b8b218d.filter = _n0e47fd9e0bd[(table.find(_n0e47fd9e0bd, _n2064b8b218d.filter) or 1) % #_n0e47fd9e0bd + 1]
_n2064b8b218d.page = 1; _n2064b8b218d.dirty = true
end)
local _n5763911d824 = _n5feacb8d952(_ncfe7ada816f, "\083\111\114\116\058\032\078\101\097\114\101\115\116", UDim2.new(0.5, 5, 0, 53), UDim2.new(0.5, -5, 0, 39), function()
local _n4fcf4a81586 = {"\078\101\097\114\101\115\116", "\072\101\097\118\105\101\115\116", "\072\105\103\104\101\115\116\032\118\097\108\117\101", "\078\097\109\101"}
_n2064b8b218d.sort = _n4fcf4a81586[(table.find(_n4fcf4a81586, _n2064b8b218d.sort) or 1) % #_n4fcf4a81586 + 1]
_n2064b8b218d.page = 1; _n2064b8b218d.dirty = true
end)
local _nf1aa6aa62a2 = _n5313efed638(_ncfe7ada816f)
_nf1aa6aa62a2.Position, _nf1aa6aa62a2.Size = UDim2.fromOffset(0, 103), UDim2.new(1, 0, 1, -147)
local _n9a5956ae062 = _n0261082a713("\085\073\071\114\105\100\076\097\121\111\117\116", _nf1aa6aa62a2, {CellPadding = UDim2.fromOffset(10, 10), CellSize = UDim2.fromOffset(220, 216), SortOrder = Enum.SortOrder.LayoutOrder})
local _n953d5d7e596 = _nd2b36f93bc5(_ncfe7ada816f, "", 11, _nc64c6043109.muted, UDim2.new(0, 0, 1, -37), UDim2.new(1, -90, 0, 31))
_n5feacb8d952(_ncfe7ada816f, "\060", UDim2.new(1, -82, 1, -39), UDim2.fromOffset(36, 34), function() _n2064b8b218d.page = math.max(1, (_n2064b8b218d.page or 1) - 1); _n2064b8b218d.dirty = true end)
_n5feacb8d952(_ncfe7ada816f, "\062", UDim2.new(1, -39, 1, -39), UDim2.fromOffset(36, 34), function() _n2064b8b218d.page = (_n2064b8b218d.page or 1) + 1; _n2064b8b218d.dirty = true end)
local _n26d3ccfb40d = _nd2b36f93bc5(_ncfe7ada816f, "\076\111\097\100\105\110\103\032\101\103\103\115\046\046\046", 14, _nc64c6043109.muted, UDim2.fromOffset(12, 114), UDim2.new(1, -24, 0, 90))
_n93f83ad32ee.catalogs[_n752bb9514c9] = {search = _nb0becb01dcc, filter = _n69af2537c5c, sort = _n5763911d824, list = _nf1aa6aa62a2, grid = _n9a5956ae062, count = _n953d5d7e596, empty = _n26d3ccfb40d}
_nb0becb01dcc:GetPropertyChangedSignal("\084\101\120\116"):Connect(function() _n2064b8b218d.query = _nb0becb01dcc.Text; _n2064b8b218d.page = 1; _n2064b8b218d.dirty = true end)
end
_n93f83ad32ee.alertsList = _n5313efed638(_n93f83ad32ee.pages.Alerts)
_n0261082a713("\085\073\076\105\115\116\076\097\121\111\117\116", _n93f83ad32ee.alertsList, {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder})
local _nf166cead6fc = _n5313efed638(_n93f83ad32ee.pages.Settings)
local _n1c7058dfa97 = _nd9418a7b259(_nf166cead6fc, UDim2.new(1, -8, 0, 262))
_nd2b36f93bc5(_n1c7058dfa97, "\067\085\083\084\079\077\032\083\080\069\069\068", 14, _nc64c6043109.mint, UDim2.fromOffset(14, 10), UDim2.new(1, -145, 0, 30)).Font = Enum.Font.GothamBold
_n93f83ad32ee.speedToggle = _n5feacb8d952(_n1c7058dfa97, "\079\070\070", UDim2.new(1, -105, 0, 10), UDim2.fromOffset(91, 42), function()
_n2064b8b218d.setSpeedEnabled(not _n2064b8b218d.speedEnabled)
end)
_nd2b36f93bc5(_n1c7058dfa97, "\083\112\101\101\100\032\032\047\032\032\115\116\117\100\115\032\112\101\114\032\115\101\099\111\110\100", 11, _nc64c6043109.muted, UDim2.fromOffset(14, 54), UDim2.new(1, -160, 0, 36))
_n93f83ad32ee.speedInput = _n0261082a713("\084\101\120\116\066\111\120", _n1c7058dfa97, {Position = UDim2.new(1, -141, 0, 58), Size = UDim2.fromOffset(127, 42),
BackgroundColor3 = _nc64c6043109.bg, TextColor3 = _nc64c6043109.mint, Font = Enum.Font.GothamBold, TextSize = 19,
Text = tostring(_n2064b8b218d.speedValue), ClearTextOnFocus = false})
_n413b2da9ca9(_n93f83ad32ee.speedInput, 9); _nf61daeca942(_n93f83ad32ee.speedInput)
_n93f83ad32ee.speedInput.FocusLost:Connect(function()
if not _n2064b8b218d.setSpeed(_n93f83ad32ee.speedInput.Text) then _n2064b8b218d.notify("\069\110\116\101\114\032\097\032\115\112\101\101\100\032\102\114\111\109\032\049\032\116\111\032\051\048\048", "\101\114\114\111\114") end
_n93f83ad32ee.speedInput.Text = tostring(_n2064b8b218d.speedValue)
end)
_n93f83ad32ee.speedSlider = _n0261082a713("\084\101\120\116\066\117\116\116\111\110", _n1c7058dfa97, {Text = "", AutoButtonColor = false, BackgroundTransparency = 1,
Position = UDim2.fromOffset(20, 108), Size = UDim2.new(1, -40, 0, 40), Active = true})
local _n54a1e3daf08 = _n0261082a713("\070\114\097\109\101", _n93f83ad32ee.speedSlider, {Position = UDim2.new(0, 0, 0.5, -3), Size = UDim2.new(1, 0, 0, 6),
BackgroundColor3 = _nc64c6043109.edge, BorderSizePixel = 0})
_n413b2da9ca9(_n54a1e3daf08, 3)
_n93f83ad32ee.speedFill = _n0261082a713("\070\114\097\109\101", _n54a1e3daf08, {Size = UDim2.fromScale(0, 1), BackgroundColor3 = _nc64c6043109.mint, BorderSizePixel = 0})
_n413b2da9ca9(_n93f83ad32ee.speedFill, 3)
_n93f83ad32ee.speedKnob = _n0261082a713("\070\114\097\109\101", _n93f83ad32ee.speedSlider, {Size = UDim2.fromOffset(20, 20), Position = UDim2.new(0, -10, 0.5, -10),
BackgroundColor3 = _nc64c6043109.ink, BorderSizePixel = 0})
_n413b2da9ca9(_n93f83ad32ee.speedKnob, 10)
local _nf657d2c54f2
local function _n1ffa2afda74(_ncd88fc87181)
local _n29c6ea63fa4 = _n93f83ad32ee.speedSlider.AbsoluteSize.X
if _n29c6ea63fa4 <= 0 then return end
local _n1a5094805d4 = math.clamp((_ncd88fc87181.Position.X - _n93f83ad32ee.speedSlider.AbsolutePosition.X) / _n29c6ea63fa4, 0, 1)
_n2064b8b218d.setSpeed(_n2064b8b218d.speedMinimum + _n1a5094805d4 * (_n2064b8b218d.speedMaximum - _n2064b8b218d.speedMinimum))
_n93f83ad32ee.speedInput.Text = tostring(_n2064b8b218d.speedValue)
end
_n2064b8b218d.connect(_n93f83ad32ee.speedSlider.InputBegan, function(_nf180c556583)
if _nf180c556583.UserInputType == Enum.UserInputType.MouseButton1 or _nf180c556583.UserInputType == Enum.UserInputType.Touch then
_nf657d2c54f2 = {touch = _nf180c556583.UserInputType == Enum.UserInputType.Touch and _nf180c556583 or nil}
_n1ffa2afda74(_nf180c556583)
end
end)
_n2064b8b218d.connect(_nc6f50dcd544.InputChanged, function(_nd21d6ab60e4)
if _nf657d2c54f2 and ((_nf657d2c54f2.touch and _nf657d2c54f2.touch == _nd21d6ab60e4)
or (not _nf657d2c54f2.touch and _nd21d6ab60e4.UserInputType == Enum.UserInputType.MouseMovement)) then _n1ffa2afda74(_nd21d6ab60e4) end
end)
_n2064b8b218d.connect(_nc6f50dcd544.InputEnded, function(_nc258db5ebb5)
if _nf657d2c54f2 and (_nc258db5ebb5 == _nf657d2c54f2.touch or _nc258db5ebb5.UserInputType == Enum.UserInputType.MouseButton1) then _nf657d2c54f2 = nil end
end)
_n93f83ad32ee.speedPresets = {}
for _n47beb1d4268, _n89ea97fd478 in ipairs({{"\078\111\114\109\097\108", nil}, {"\070\097\115\116", 50}, {"\086\101\114\121\032\070\097\115\116", 100}, {"\067\117\115\116\111\109", nil}}) do
_n93f83ad32ee.speedPresets[_n89ea97fd478[1]] = _n5feacb8d952(_n1c7058dfa97, _n89ea97fd478[1], UDim2.new((_n47beb1d4268 - 1) / 4, 8, 0, 153), UDim2.new(0.25, -12, 0, 42), function()
if _n89ea97fd478[1] == "\078\111\114\109\097\108" then _n2064b8b218d.setSpeedEnabled(false)
else
if _n89ea97fd478[2] then _n2064b8b218d.setSpeed(_n89ea97fd478[2]) end
_n2064b8b218d.setSpeedEnabled(true)
end
end)
_n93f83ad32ee.speedPresets[_n89ea97fd478[1]].TextSize = 11
end
_n93f83ad32ee.speedReset = _n5feacb8d952(_n1c7058dfa97, "\082\069\083\069\084", UDim2.new(1, -105, 0, 207), UDim2.fromOffset(91, 42), function()
_n2064b8b218d.setSpeedEnabled(false); _n2064b8b218d.setSpeed(50); _n93f83ad32ee.speedInput.Text = "\053\048"
end)
_nd2b36f93bc5(_n1c7058dfa97, "\067\108\105\101\110\116\032\109\111\118\101\109\101\110\116\032\111\110\108\121\046\032\083\101\114\118\101\114\032\109\097\121\032\108\105\109\105\116\032\115\112\101\101\100\046\010\088\032\047\032\085\110\108\111\097\100\032\114\101\115\116\111\114\101\115\032\103\097\109\101\032\115\112\101\101\100\046", 10, _nc64c6043109.muted,
UDim2.fromOffset(14, 204), UDim2.new(1, -132, 0, 47))
local _n30405a9ab2b = _nd9418a7b259(_nf166cead6fc, UDim2.new(1, -8, 0, 142), UDim2.fromOffset(0, 274))
_nd2b36f93bc5(_n30405a9ab2b, "\077\079\078\083\084\069\082\032\080\082\079\084\069\067\084\073\079\078", 13, _nc64c6043109.gold, UDim2.fromOffset(14, 8), UDim2.new(1, -28, 0, 28)).Font = Enum.Font.GothamBold
_nd2b36f93bc5(_n30405a9ab2b, "\078\111\116\032\099\111\110\110\101\099\116\101\100\032\116\111\032\097\032\115\101\114\118\101\114\032\112\114\111\116\101\099\116\105\111\110\032\115\121\115\116\101\109", 11, _nc64c6043109.red, UDim2.fromOffset(14, 38), UDim2.new(1, -28, 0, 27))
_nd2b36f93bc5(_n30405a9ab2b, "\068\097\109\097\103\101\044\032\116\097\114\103\101\116\105\110\103\044\032\107\110\111\099\107\098\097\099\107\044\032\115\116\117\110\032\097\110\100\032\115\116\097\116\117\115\032\105\109\109\117\110\105\116\121\032\099\097\110\110\111\116\032\098\101\032\099\111\110\102\105\114\109\101\100\032\102\114\111\109\032\116\104\105\115\032\099\108\105\101\110\116\046\032\067\117\115\116\111\109\032\083\112\101\101\100\032\100\111\101\115\032\110\111\116\032\101\110\097\098\108\101\032\105\109\109\117\110\105\116\121\046",
11, _nc64c6043109.muted, UDim2.fromOffset(14, 70), UDim2.new(1, -28, 0, 59))
_n93f83ad32ee.settingY = 429
local function _n68fbad46a80(_n56c51e0e8e7, _nbc4902b2623, _nfb04f846bfc, _n0b1545fb09f)
local _nf342f009238 = _n93f83ad32ee.settingY
_n93f83ad32ee.settingY += 91
local _ne64f7cfe7ab = _nd9418a7b259(_nf166cead6fc, UDim2.new(1, -8, 0, 81), UDim2.fromOffset(0, _nf342f009238))
_nd2b36f93bc5(_ne64f7cfe7ab, _n56c51e0e8e7, 13, _nc64c6043109.ink, UDim2.fromOffset(13, 8), UDim2.new(1, -140, 0, 27)).Font = Enum.Font.GothamBold
_nd2b36f93bc5(_ne64f7cfe7ab, _nbc4902b2623, 11, _nc64c6043109.muted, UDim2.fromOffset(13, 38), UDim2.new(1, -140, 0, 35))
return _n5feacb8d952(_ne64f7cfe7ab, _nfb04f846bfc, UDim2.new(1, -119, 0, 18), UDim2.fromOffset(106, 44), _n0b1545fb09f)
end
_n93f83ad32ee.flightToggle = _n68fbad46a80("\070\108\121\032\099\111\108\108\101\099\116\105\111\110", "\065\115\099\101\110\100\044\032\116\114\097\118\101\108\044\032\100\101\115\099\101\110\100\032\116\111\032\099\111\108\108\101\099\116", _n2064b8b218d.flightEnabled and "\079\078" or "\079\070\070", function()
_n2064b8b218d.stop("\070\108\105\103\104\116\032\109\111\100\101\032\099\104\097\110\103\101\100")
_n2064b8b218d.flightEnabled = not _n2064b8b218d.flightEnabled
_n93f83ad32ee.flightToggle.Text = _n2064b8b218d.flightEnabled and "\079\078" or "\079\070\070"
end)
_n93f83ad32ee.quickPickupToggle = _n68fbad46a80("\081\117\105\099\107\032\112\105\099\107\117\112", "\083\101\110\100\032\105\109\109\101\100\105\097\116\101\108\121\032\111\110\032\097\114\114\105\118\097\108", _n2064b8b218d.quickPickup and "\079\078" or "\079\070\070", function()
_n2064b8b218d.quickPickup = not _n2064b8b218d.quickPickup
_n93f83ad32ee.quickPickupToggle.Text = _n2064b8b218d.quickPickup and "\079\078" or "\079\070\070"
end)
_n93f83ad32ee.afkToggle = _n68fbad46a80("\065\110\116\105\045\065\070\075", "\083\101\110\100\032\105\100\108\101\032\105\110\112\117\116\032\105\102\032\115\117\112\112\111\114\116\101\100", "\079\070\070", function()
_n2064b8b218d.antiAfk = not _n2064b8b218d.antiAfk
_n2064b8b218d.antiAfkStatus = _n2064b8b218d.antiAfk and "\087\097\105\116\105\110\103\032\102\111\114\032\105\100\108\101\032\101\118\101\110\116" or "\079\070\070"
_n93f83ad32ee.afkToggle.Text = _n2064b8b218d.antiAfk and "\079\078" or "\079\070\070"
end)
_n93f83ad32ee.priority = _n68fbad46a80("\084\097\114\103\101\116\032\112\114\105\111\114\105\116\121", "\085\115\101\100\032\098\121\032\097\108\108\032\102\097\114\109\032\109\111\100\101\115", _n2064b8b218d.selection, function()
local _ncbba45b5789 = {"\078\101\097\114\101\115\116", "\072\101\097\118\105\101\115\116", "\072\105\103\104\101\115\116\032\118\097\108\117\101"}
_n2064b8b218d.selection = _ncbba45b5789[(table.find(_ncbba45b5789, _n2064b8b218d.selection) or 1) % #_ncbba45b5789 + 1]
_n93f83ad32ee.priority.Text = _n2064b8b218d.selection
end)
_n93f83ad32ee.onlyRare = _n68fbad46a80("\082\097\114\101\032\101\103\103\115\032\111\110\108\121", "\083\107\105\112\032\067\111\109\109\111\110\032\097\110\100\032\085\110\099\111\109\109\111\110", "\079\070\070", function()
_n2064b8b218d.rareOnly = not _n2064b8b218d.rareOnly; _n93f83ad32ee.onlyRare.Text = _n2064b8b218d.rareOnly and "\079\078" or "\079\070\070"
end)
local function _n06580cf7236(_nf29f88755fd, _nb6ce1ee5cb1, _n0274433d884)
local _ne5ce667c5de = _n68fbad46a80(_nf29f88755fd, _nb6ce1ee5cb1, "", function() end)
_ne5ce667c5de.Visible = false
local _n8a137d42e35 = _n0261082a713("\084\101\120\116\066\111\120", _ne5ce667c5de.Parent, {Size = _ne5ce667c5de.Size, Position = _ne5ce667c5de.Position,
BackgroundColor3 = _nc64c6043109.bg, TextColor3 = _nc64c6043109.mint, Font = Enum.Font.GothamBold,
TextSize = 14, Text = tostring(_n2064b8b218d[_n0274433d884]), ClearTextOnFocus = false})
_n413b2da9ca9(_n8a137d42e35, 9); _nf61daeca942(_n8a137d42e35)
_n8a137d42e35.FocusLost:Connect(function()
local _n67273fcf068 = tonumber(_n8a137d42e35.Text)
if _n67273fcf068 and _n67273fcf068 == _n67273fcf068 and _n67273fcf068 >= 0 and _n67273fcf068 < 1e15 then _n2064b8b218d[_n0274433d884] = _n67273fcf068 end
_n8a137d42e35.Text = tostring(_n2064b8b218d[_n0274433d884])
end)
end
_n06580cf7236("\077\105\110\105\109\117\109\032\119\101\105\103\104\116", "\070\097\114\109\032\102\105\108\116\101\114\032\105\110\032\107\103\059\032\048\032\061\032\097\110\121", "\109\105\110\087\101\105\103\104\116")
_n06580cf7236("\070\108\105\103\104\116\032\104\101\105\103\104\116", "\067\108\097\109\112\101\100\032\116\111\032\056\045\049\048\048\032\115\116\117\100\115", "\102\108\105\103\104\116\072\101\105\103\104\116")
_n06580cf7236("\070\108\105\103\104\116\032\115\112\101\101\100", "\073\110\100\101\112\101\110\100\101\110\116\032\111\102\032\087\097\108\107\083\112\101\101\100\059\032\050\048\045\051\048\048", "\102\108\105\103\104\116\083\112\101\101\100")
_n06580cf7236("\077\105\110\105\109\117\109\032\118\097\108\117\101", "\070\097\114\109\032\102\105\108\116\101\114\059\032\048\032\061\032\097\110\121", "\109\105\110\086\097\108\117\101")
_n06580cf7236("\072\101\097\118\121\032\101\103\103\032\097\108\101\114\116", "\078\111\116\105\102\121\032\097\098\111\118\101\032\116\104\105\115\032\107\103\032\116\104\114\101\115\104\111\108\100", "\104\101\097\118\121\065\108\101\114\116")
_n06580cf7236("\072\105\103\104\032\118\097\108\117\101\032\097\108\101\114\116", "\078\111\116\105\102\121\032\097\098\111\118\101\032\116\104\105\115\032\118\097\108\117\101", "\118\097\108\117\101\065\108\101\114\116")
_n93f83ad32ee.alertToggle = _n68fbad46a80("\078\111\116\105\102\105\099\097\116\105\111\110\115", "\078\101\119\032\101\103\103\115\032\097\110\100\032\115\101\114\118\101\114\032\114\101\115\117\108\116\115", "\079\078", function()
_n2064b8b218d.alerts = not _n2064b8b218d.alerts; _n93f83ad32ee.alertToggle.Text = _n2064b8b218d.alerts and "\079\078" or "\079\070\070"
end)
_n93f83ad32ee.motionToggle = _n68fbad46a80("\077\111\116\105\111\110", "\083\104\111\114\116\032\104\111\118\101\114\032\116\114\097\110\115\105\116\105\111\110\115", "\079\078", function()
_n2064b8b218d.motion = not _n2064b8b218d.motion; _n93f83ad32ee.motionToggle.Text = _n2064b8b218d.motion and "\079\078" or "\079\070\070"
end)
_n93f83ad32ee.blurToggle = _n68fbad46a80("\066\097\099\107\103\114\111\117\110\100\032\098\108\117\114", "\079\112\116\105\111\110\097\108\059\032\111\102\102\032\119\104\105\108\101\032\102\097\114\109\105\110\103", "\079\070\070", function()
_n2064b8b218d.blurEnabled = not _n2064b8b218d.blurEnabled; _n93f83ad32ee.blurToggle.Text = _n2064b8b218d.blurEnabled and "\079\078" or "\079\070\070"
end)
_n93f83ad32ee.pin = _n68fbad46a80("\080\105\110\110\101\100\032\116\097\114\103\101\116", "\083\101\108\101\099\116\032\097\032\099\097\114\100\032\116\111\032\112\105\110\032\111\110\101\032\101\103\103", "\067\076\069\065\082", function() _n2064b8b218d.targetOverride = nil; _n2064b8b218d.notify("\084\097\114\103\101\116\032\112\105\110\032\099\108\101\097\114\101\100") end)
_n68fbad46a80("\087\105\110\100\111\119\032\112\111\115\105\116\105\111\110", "\067\101\110\116\101\114\032\097\110\100\032\102\105\116\032\116\111\032\115\099\114\101\101\110", "\082\069\083\069\084", function() _n93f83ad32ee.userSize = nil; _n2064b8b218d.layout(true) end)
_n68fbad46a80("\082\101\109\111\118\101\032\099\111\109\112\097\110\105\111\110", "\083\116\111\112\032\097\110\100\032\100\101\115\116\114\111\121\032\116\104\105\115\032\085\073", "\085\078\076\079\065\068", function() _n93f83ad32ee.gui:Destroy() end)
_nd2b36f93bc5(_nf166cead6fc, "\076\105\118\101\032\102\101\097\116\117\114\101\115\058\032\101\103\103\032\119\101\105\103\104\116\044\032\115\101\108\108\032\101\115\116\105\109\097\116\101\044\032\114\097\114\105\116\121\044\032\115\105\122\101\044\032\109\117\116\097\116\105\111\110\115\044\032\105\110\118\101\110\116\111\114\121\044\032\112\105\099\107\117\112\032\097\110\100\032\100\114\111\112\046\010\010\077\117\108\116\105\045\099\097\114\114\121\044\032\112\101\116\032\115\116\114\101\110\103\116\104\044\032\115\116\097\109\105\110\097\044\032\117\112\103\114\097\100\101\115\032\097\110\100\032\110\101\119\032\101\118\101\110\116\032\109\101\099\104\097\110\105\099\115\032\114\101\113\117\105\114\101\032\103\097\109\101\045\115\101\114\118\101\114\032\115\117\112\112\111\114\116\032\097\110\100\032\097\114\101\032\110\111\116\032\109\111\100\105\102\105\101\100\032\104\101\114\101\046\032\077\105\115\115\105\110\103\032\118\097\108\117\101\115\032\115\116\097\121\032\045\045\046",
11, _nc64c6043109.muted, UDim2.fromOffset(0, _n93f83ad32ee.settingY), UDim2.new(1, -12, 0, 132))
local _nf0b10e9ce39 = _n93f83ad32ee.pages.Users
_n93f83ad32ee.userTitle = _nd2b36f93bc5(_nf0b10e9ce39, _n73fd9822adb.DisplayName .. "\032\032\040\064" .. _n73fd9822adb.Name .. "\041", 16, _nc64c6043109.mint, UDim2.new(), UDim2.new(1, 0, 0, 35))
_n93f83ad32ee.userStatus = _nd2b36f93bc5(_nf0b10e9ce39, "", 12, _nc64c6043109.muted, UDim2.fromOffset(0, 40), UDim2.new(1, 0, 0, 70))
_n93f83ad32ee.sharePresence = _n5feacb8d952(_nf0b10e9ce39, "\083\072\065\082\069\032\077\089\032\078\065\077\069\058\032\079\070\070", UDim2.fromOffset(0, 115), UDim2.new(1, 0, 0, 44), function()
_n2064b8b218d.setPresence(not _n2064b8b218d.presenceEnabled)
end)
_n93f83ad32ee.usersList = _n5313efed638(_nf0b10e9ce39)
_n93f83ad32ee.usersList.Position, _n93f83ad32ee.usersList.Size = UDim2.fromOffset(0, 171), UDim2.new(1, 0, 1, -171)
_n0261082a713("\085\073\076\105\115\116\076\097\121\111\117\116", _n93f83ad32ee.usersList, {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder})
function _n2064b8b218d.show()
_n2064b8b218d.hidden, _n2064b8b218d.minimized = false, false
_n93f83ad32ee.window.Visible, _n93f83ad32ee.launcher.Visible = true, false
_n2064b8b218d.layout()
end
function _n2064b8b218d.switchTab(_n6b448381790)
_n2064b8b218d.tab, _n2064b8b218d.page, _n2064b8b218d.dirty, _n2064b8b218d.logDirty = _n6b448381790, 1, true, true
for _n89485d7abdb, _n474478f3899 in pairs(_n93f83ad32ee.pages) do _n474478f3899.Visible = _n89485d7abdb == _n6b448381790 end
for _n19fab6e0d91, _n31128677da1 in pairs(_n93f83ad32ee.tabButtons) do
_n31128677da1.BackgroundColor3 = _n19fab6e0d91 == _n6b448381790 and _nc64c6043109.mint or _nc64c6043109.panel
_n31128677da1.TextColor3 = _n19fab6e0d91 == _n6b448381790 and _nc64c6043109.bg or _nc64c6043109.muted
end
if _n93f83ad32ee.catalogs[_n6b448381790] then _n93f83ad32ee.catalogs[_n6b448381790].search.Text = _n2064b8b218d.query end
end
function _n2064b8b218d.layout(_nf0b1f07adc2)
local _n68f497b4656 = _n93f83ad32ee.root.AbsoluteSize
if _n68f497b4656.X < 1 or _n68f497b4656.Y < 1 then return end
local _n0d4ce4fdb21 = math.min(_n93f83ad32ee.userSize and _n93f83ad32ee.userSize.X or (_n93f83ad32ee.large and 1010 or 790), _n68f497b4656.X - 16)
local _n103fb008a0f = math.min(_n93f83ad32ee.userSize and _n93f83ad32ee.userSize.Y or 650, _n68f497b4656.Y - 16)
_n0d4ce4fdb21, _n103fb008a0f = math.max(280, _n0d4ce4fdb21), math.max(230, _n103fb008a0f)
_n93f83ad32ee.logicalSize = Vector2.new(_n0d4ce4fdb21, _n103fb008a0f)
_n93f83ad32ee.window.Size = UDim2.fromOffset(_n0d4ce4fdb21, _n2064b8b218d.minimized and 60 or _n103fb008a0f)
if _nf0b1f07adc2 then _n93f83ad32ee.window.Position = UDim2.fromOffset(math.max(8, (_n68f497b4656.X - _n0d4ce4fdb21) / 2), math.max(8, (_n68f497b4656.Y - _n103fb008a0f) / 2)) end
local _n8073382735e = _n93f83ad32ee.window.Position
_n93f83ad32ee.window.Position = UDim2.fromOffset(math.clamp(_n8073382735e.X.Offset, 0, math.max(0, _n68f497b4656.X - _n0d4ce4fdb21)),
math.clamp(_n8073382735e.Y.Offset, 0, math.max(0, _n68f497b4656.Y - (_n2064b8b218d.minimized and 60 or _n103fb008a0f))))
_n93f83ad32ee.body.Visible, _n93f83ad32ee.tabs.Visible, _n93f83ad32ee.footer.Visible, _n93f83ad32ee.resize.Visible = not _n2064b8b218d.minimized, not _n2064b8b218d.minimized, not _n2064b8b218d.minimized, not _n2064b8b218d.minimized
_n93f83ad32ee.titlebar.Size = UDim2.new(1, -144, 0, 59)
local _n051124d8421 = math.max(66, (_n0d4ce4fdb21 - 28) / #_n93f83ad32ee.tabNames)
for _n7beac09f422, _na9f75282446 in ipairs(_n93f83ad32ee.tabNames) do
_n93f83ad32ee.tabButtons[_na9f75282446].Position = UDim2.fromOffset((_n7beac09f422 - 1) * _n051124d8421, 0)
_n93f83ad32ee.tabButtons[_na9f75282446].Size = UDim2.fromOffset(_n051124d8421 - 4, 40)
end
_n93f83ad32ee.tabs.CanvasSize = UDim2.fromOffset(_n051124d8421 * #_n93f83ad32ee.tabNames, 0)
_n93f83ad32ee.toast.Size = UDim2.fromOffset(math.min(360, _n68f497b4656.X - 20), 54)
_n93f83ad32ee.toast.Position = UDim2.new(0.5, -_n93f83ad32ee.toast.Size.X.Offset / 2, 0, 8)
_n93f83ad32ee.hud.Size = UDim2.fromOffset(math.min(340, _n68f497b4656.X - 20), 65)
_n93f83ad32ee.hud.Position = UDim2.new(0.5, -_n93f83ad32ee.hud.Size.X.Offset / 2, 1, -77)
for _n0ea37e2bf9b, _n7d452fbdd3f in pairs(_n93f83ad32ee.catalogs) do
local _nbcff411aa5d = _n0d4ce4fdb21 - 41
local _n2108b86cf8d = math.max(1, math.floor((_nbcff411aa5d + 10) / 230))
_n7d452fbdd3f.grid.CellSize = UDim2.fromOffset(math.floor((_nbcff411aa5d - (_n2108b86cf8d - 1) * 10) / _n2108b86cf8d), 223)
end
_n2064b8b218d.dirty = true
end
local _n92a8eaf096b
local function _n3eb91719ac1(_n5a336bfd3e8, _n14ff381690c)
if _n5a336bfd3e8.UserInputType == Enum.UserInputType.MouseButton1 or _n5a336bfd3e8.UserInputType == Enum.UserInputType.Touch then
_n92a8eaf096b = {kind = _n14ff381690c, origin = _n5a336bfd3e8.Position, position = _n93f83ad32ee.window.Position,
size = _n93f83ad32ee.logicalSize, touch = _n5a336bfd3e8.UserInputType == Enum.UserInputType.Touch and _n5a336bfd3e8 or nil}
end
end
_n2064b8b218d.connect(_n93f83ad32ee.titlebar.InputBegan, function(_n8bd665026df) _n3eb91719ac1(_n8bd665026df, "\100\114\097\103") end)
_n2064b8b218d.connect(_n93f83ad32ee.resize.InputBegan, function(_nae8551c21bc) _n3eb91719ac1(_nae8551c21bc, "\114\101\115\105\122\101") end)
_n2064b8b218d.connect(_nc6f50dcd544.InputChanged, function(_naafe65803b9)
if not _n92a8eaf096b then return end
if not ((_n92a8eaf096b.touch and _naafe65803b9 == _n92a8eaf096b.touch) or (not _n92a8eaf096b.touch and _naafe65803b9.UserInputType == Enum.UserInputType.MouseMovement)) then return end
local _n27a94bfa1c2 = _naafe65803b9.Position - _n92a8eaf096b.origin
if _n92a8eaf096b.kind == "\100\114\097\103" then _n93f83ad32ee.window.Position = UDim2.fromOffset(_n92a8eaf096b.position.X.Offset + _n27a94bfa1c2.X, _n92a8eaf096b.position.Y.Offset + _n27a94bfa1c2.Y)
else _n93f83ad32ee.userSize = Vector2.new(math.max(350, _n92a8eaf096b.size.X + _n27a94bfa1c2.X), math.max(340, _n92a8eaf096b.size.Y + _n27a94bfa1c2.Y)) end
_n2064b8b218d.layout()
end)
_n2064b8b218d.connect(_nc6f50dcd544.InputEnded, function(_nd7076fcf2dd)
if _n92a8eaf096b and (_nd7076fcf2dd == _n92a8eaf096b.touch or _nd7076fcf2dd.UserInputType == Enum.UserInputType.MouseButton1) then _n92a8eaf096b = nil end
end)
_n2064b8b218d.connect(_nc6f50dcd544.InputBegan, function(_n5561862ecd9, _n1e9c6acef88)
if _n1e9c6acef88 or _nc6f50dcd544:GetFocusedTextBox() then return end
if _n5561862ecd9.KeyCode == Enum.KeyCode.RightShift then
if _n2064b8b218d.hidden then _n2064b8b218d.show() else _n2064b8b218d.stop("\087\105\110\100\111\119\032\099\108\111\115\101\100"); _n2064b8b218d.setSpeedEnabled(false); _n2064b8b218d.hidden = true; _n93f83ad32ee.window.Visible = false; _n93f83ad32ee.launcher.Visible = true end
end
end)
_n2064b8b218d.connect(_n93f83ad32ee.root:GetPropertyChangedSignal("\065\098\115\111\108\117\116\101\083\105\122\101"), function() _n2064b8b218d.layout() end)
_n2064b8b218d.connect(_n93f83ad32ee.gui.Destroying, function()
_n2064b8b218d.alive = false; _n2064b8b218d.stop("\085\110\108\111\097\100\101\100"); _n2064b8b218d.setSpeedEnabled(false)
_n2064b8b218d.antiAfk = false
if _n2064b8b218d.presenceEnabled then _n2064b8b218d.setPresence(false) end
_n2064b8b218d.clearPresenceTags()
for _n81a80027a1c, _na846a94f1e7 in ipairs(_n2064b8b218d.connections) do _na846a94f1e7:Disconnect() end
_n93f83ad32ee.blur:Destroy()
end)
function _n2064b8b218d.renderCatalog()
local _ne1307efdc49 = _n93f83ad32ee.catalogs[_n2064b8b218d.tab]
if not _ne1307efdc49 then return end
local _nf77eba8df68 = {}
local _n1dc6aa845dd, _n7e6ffc06dca = _n2064b8b218d.character()
for _n2c9f5838294, _n6a086f3c145 in ipairs(_n2064b8b218d.tab == "\080\101\116\115" and _n2064b8b218d.pets or _n2064b8b218d.tab == "\079\119\110\101\100" and _n2064b8b218d.owned or _n2064b8b218d.rows) do
local _n6241f016c2c = _n6a086f3c145.record
_n6a086f3c145.distance = _n7e6ffc06dca and typeof(_n6241f016c2c.BottomCFrame) == "\067\070\114\097\109\101" and (_n6241f016c2c.BottomCFrame.Position - _n7e6ffc06dca.Position).Magnitude or nil
local _n9f2a3082df2 = string.find(string.lower(_n6a086f3c145.name .. "\032" .. _n6a086f3c145.rarity .. "\032" .. _n6a086f3c145.mutations .. "\032" .. _n6a086f3c145.uid), string.lower(_n2064b8b218d.query), 1, true)
if _n9f2a3082df2 and (_n2064b8b218d.filter == "\065\108\108" or _n2064b8b218d.filter == "\082\097\114\101" and _n6a086f3c145.rare
or _n2064b8b218d.filter == "\077\117\116\097\116\101\100" and _n6a086f3c145.mutations ~= "" or _n2064b8b218d.filter == "\065\118\097\105\108\097\098\108\101" and (_n6a086f3c145.owned or _n2064b8b218d.valid(_n6241f016c2c, false))) then
table.insert(_nf77eba8df68, _n6a086f3c145)
end
end
table.sort(_nf77eba8df68, function(_n99602bb4ad9, _n63f3b6bb29b)
local _nf2852221304, _n26708592a5d
if _n2064b8b218d.sort == "\072\101\097\118\105\101\115\116" then _nf2852221304, _n26708592a5d = -(_n99602bb4ad9.weight or -math.huge), -(_n63f3b6bb29b.weight or -math.huge)
elseif _n2064b8b218d.sort == "\072\105\103\104\101\115\116\032\118\097\108\117\101" then _nf2852221304, _n26708592a5d = -(_n99602bb4ad9.value or -math.huge), -(_n63f3b6bb29b.value or -math.huge)
elseif _n2064b8b218d.sort == "\078\097\109\101" then _nf2852221304, _n26708592a5d = _n99602bb4ad9.name, _n63f3b6bb29b.name
else _nf2852221304, _n26708592a5d = _n99602bb4ad9.distance or math.huge, _n63f3b6bb29b.distance or math.huge end
if _nf2852221304 == _n26708592a5d then return _n99602bb4ad9.uid < _n63f3b6bb29b.uid end
return _nf2852221304 < _n26708592a5d
end)
local _n3355054ea36 = math.max(1, math.ceil(#_nf77eba8df68 / 30))
_n2064b8b218d.page = math.clamp(_n2064b8b218d.page or 1, 1, _n3355054ea36)
_ne1307efdc49.filter.Text, _ne1307efdc49.sort.Text = "\070\105\108\116\101\114\058\032" .. _n2064b8b218d.filter, "\083\111\114\116\058\032" .. _n2064b8b218d.sort
_ne1307efdc49.count.Text = string.format("\037\100\032\037\115\032\032\047\032\032\112\097\103\101\032\037\100\032\111\102\032\037\100", #_nf77eba8df68, _n2064b8b218d.tab == "\080\101\116\115" and "\112\101\116\115" or "\101\103\103\115", _n2064b8b218d.page, _n3355054ea36)
_ne1307efdc49.empty.Visible = #_nf77eba8df68 == 0
_ne1307efdc49.empty.Text = not _n2064b8b218d.ready and _n2064b8b218d.status or _n2064b8b218d.tab == "\080\101\116\115" and "\078\111\032\105\110\118\101\110\116\111\114\121\032\112\101\116\115\032\097\118\097\105\108\097\098\108\101\046\032\080\108\097\099\101\100\032\112\101\116\115\032\097\114\101\032\110\111\116\032\105\110\099\108\117\100\101\100\046"
or "\078\111\032\101\103\103\115\032\109\097\116\099\104\046\032\084\114\121\032\097\110\111\116\104\101\114\032\102\105\108\116\101\114\032\111\114\032\119\097\105\116\032\102\111\114\032\110\101\119\032\115\112\097\119\110\115\046"
for _n23f0497f1de, _nb3ae16a588a in ipairs(_ne1307efdc49.list:GetChildren()) do if _nb3ae16a588a:IsA("\071\117\105\079\098\106\101\099\116") then _nb3ae16a588a:Destroy() end end
for _ndf1d4ec0c34 = (_n2064b8b218d.page - 1) * 30 + 1, math.min(#_nf77eba8df68, _n2064b8b218d.page * 30) do
local _n4bec3bc685f = _nf77eba8df68[_ndf1d4ec0c34]
local _nd488b621f0f = _n5feacb8d952(_ne1307efdc49.list, "", UDim2.new(), UDim2.fromOffset(220, 223), function()
if _n4bec3bc685f.owned then _n2064b8b218d.notify(_n4bec3bc685f.name .. "\032\047\032" .. _n4bec3bc685f.uid); return end
_n2064b8b218d.targetOverride = _n4bec3bc685f.uid; _n2064b8b218d.target = _n4bec3bc685f; _n2064b8b218d.switchTab("\070\097\114\109")
_n2064b8b218d.notify("\080\105\110\110\101\100\032" .. _n4bec3bc685f.name .. "\046\032\083\101\108\101\099\116\032\097\032\109\111\100\101\032\116\111\032\099\111\108\108\101\099\116\046")
end)
_nd488b621f0f.LayoutOrder = _ndf1d4ec0c34
_nd2b36f93bc5(_nd488b621f0f, string.upper(_n4bec3bc685f.rarity), 10, _n4bec3bc685f.color, UDim2.fromOffset(12, 8), UDim2.new(1, -24, 0, 19)).Font = Enum.Font.GothamBold
_n0261082a713("\073\109\097\103\101\076\097\098\101\108", _nd488b621f0f, {Image = _n4bec3bc685f.icon, BackgroundTransparency = 1,
Size = UDim2.fromOffset(82, 82), Position = UDim2.new(0.5, -41, 0, 28), ScaleType = Enum.ScaleType.Fit})
_nd2b36f93bc5(_nd488b621f0f, _n4bec3bc685f.name, 14, _nc64c6043109.ink, UDim2.fromOffset(12, 110), UDim2.new(1, -24, 0, 36)).Font = Enum.Font.GothamBold
_nd2b36f93bc5(_nd488b621f0f, _n2064b8b218d.number(_n4bec3bc685f.weight) .. "\032\107\103\032\032\124\032\032" .. _n2064b8b218d.number(_n4bec3bc685f.value), 13, _nc64c6043109.mint,
UDim2.fromOffset(12, 149), UDim2.new(1, -24, 0, 20))
_nd2b36f93bc5(_nd488b621f0f, "\083\101\108\108\032\101\115\116\105\109\097\116\101\032\032\047\032\032\115\099\097\108\101\032" .. _n2064b8b218d.number(_n4bec3bc685f.scale, 2), 10, _nc64c6043109.muted,
UDim2.fromOffset(12, 171), UDim2.new(1, -24, 0, 17))
local _n125f9b1fe8f = _n4bec3bc685f.mutations ~= "" and _n4bec3bc685f.mutations or (_n4bec3bc685f.owned and "\079\119\110\101\100" or tostring(_n4bec3bc685f.record.State))
_nd2b36f93bc5(_nd488b621f0f, _n125f9b1fe8f, 10, _nc64c6043109.gold, UDim2.fromOffset(12, 190), UDim2.new(1, -24, 0, 26))
end
end
function _n2064b8b218d.renderLog()
for _n8ccd1a6577e, _n48e69ea842e in ipairs(_n93f83ad32ee.alertsList:GetChildren()) do if _n48e69ea842e:IsA("\071\117\105\079\098\106\101\099\116") then _n48e69ea842e:Destroy() end end
for _nae0756d1a94, _n4c057374c02 in ipairs(_n2064b8b218d.log) do
local _n199da58b9b0 = _nd9418a7b259(_n93f83ad32ee.alertsList, UDim2.new(1, -8, 0, 83))
_n199da58b9b0.LayoutOrder = _nae0756d1a94
_nd2b36f93bc5(_n199da58b9b0, _n4c057374c02.at, 10, _nc64c6043109.muted, UDim2.fromOffset(13, 8), UDim2.new(1, -26, 0, 17))
_nd2b36f93bc5(_n199da58b9b0, _n4c057374c02.text, 12, _n4c057374c02.kind == "\101\114\114\111\114" and _nc64c6043109.red or _n4c057374c02.kind == "\103\111\108\100" and _nc64c6043109.gold or _nc64c6043109.ink,
UDim2.fromOffset(13, 29), UDim2.new(1, -26, 0, 46))
end
end
function _n2064b8b218d.updateUI()
if _n2064b8b218d.presenceEnabled and os.clock() >= (_n2064b8b218d.nextPresenceBeat or 0) then
_n2064b8b218d.nextPresenceBeat = os.clock() + 30
pcall(function() _n2064b8b218d.presenceRemote:FireServer(true) end)
end
_n2064b8b218d.applySpeed()
_n93f83ad32ee.speedToggle.Text = _n2064b8b218d.speedEnabled and "\079\078" or "\079\070\070"
_n93f83ad32ee.speedToggle.BackgroundColor3 = _n2064b8b218d.speedEnabled and _nc64c6043109.mint or _nc64c6043109.panel
_n93f83ad32ee.speedToggle.TextColor3 = _n2064b8b218d.speedEnabled and _nc64c6043109.bg or _nc64c6043109.ink
if _nc6f50dcd544:GetFocusedTextBox() ~= _n93f83ad32ee.speedInput then _n93f83ad32ee.speedInput.Text = tostring(_n2064b8b218d.speedValue) end
local _n31bff7a6b15 = (_n2064b8b218d.speedValue - _n2064b8b218d.speedMinimum) / (_n2064b8b218d.speedMaximum - _n2064b8b218d.speedMinimum)
_n93f83ad32ee.speedFill.Size = UDim2.fromScale(_n31bff7a6b15, 1)
_n93f83ad32ee.speedKnob.Position = UDim2.new(_n31bff7a6b15, -10, 0.5, -10)
_n93f83ad32ee.afkToggle.Text = _n2064b8b218d.antiAfk and "\079\078" or "\079\070\070"
_n93f83ad32ee.userStatus.Text = _n2064b8b218d.presenceStatus .. "\010\083\104\097\114\105\110\103\032\105\115\032\111\112\116\045\105\110\059\032\110\097\109\101\115\032\097\114\101\032\118\105\115\105\098\108\101\032\111\110\108\121\032\116\111\032\114\101\103\105\115\116\101\114\101\100\032\117\115\101\114\115\046"
_n93f83ad32ee.sharePresence.Text = _n2064b8b218d.presenceEnabled and "\083\072\065\082\069\032\077\089\032\078\065\077\069\058\032\079\078" or "\083\072\065\082\069\032\077\089\032\078\065\077\069\058\032\079\070\070"
if _n2064b8b218d.presenceDirty then
_n2064b8b218d.presenceDirty = false
for _n51dbda01fdc, _n09814304cb9 in ipairs(_n93f83ad32ee.usersList:GetChildren()) do if _n09814304cb9:IsA("\071\117\105\079\098\106\101\099\116") then _n09814304cb9:Destroy() end end
for _nba03008d8ea, _n9a28dcf1a26 in ipairs(_n2064b8b218d.presenceUsers) do
local _n5b8cf32385e = _nd2b36f93bc5(_n93f83ad32ee.usersList, _n9a28dcf1a26.DisplayName .. "\032\032\040\064" .. _n9a28dcf1a26.Name .. "\041", 13, _nc64c6043109.mint, nil, UDim2.new(1, -8, 0, 48))
_n5b8cf32385e.LayoutOrder = _nba03008d8ea
end
end
local _n51379734c7d = {}
if _n2064b8b218d.presenceEnabled then
for _n7487b931251, _n27b3c63459a in ipairs(_n2064b8b218d.presenceUsers) do
_n51379734c7d[_n27b3c63459a.UserId] = true
local _n8c9e837aed7 = _n529a44f539a:GetPlayerByUserId(_n27b3c63459a.UserId)
local _nb4be26d2848 = _n8c9e837aed7 and _n8c9e837aed7.Character and _n8c9e837aed7.Character:FindFirstChild("\072\101\097\100")
local _n09238748268 = _n2064b8b218d.presenceTags[_n27b3c63459a.UserId]
if _nb4be26d2848 and (not _n09238748268 or _n09238748268.Adornee ~= _nb4be26d2848) then
if _n09238748268 then _n09238748268:Destroy() end
_n09238748268 = _n0261082a713("\066\105\108\108\098\111\097\114\100\071\117\105", _n93f83ad32ee.gui, {Name = "\078\065\067\075\075\089\083\072\079\080\085\115\101\114", Adornee = _nb4be26d2848,
Size = UDim2.fromOffset(190, 42), StudsOffset = Vector3.new(0, 3, 0), AlwaysOnTop = true, MaxDistance = 150})
local _n200e461686d = _nd2b36f93bc5(_n09238748268, "\078\065\067\075\075\089\083\072\079\080\010\064" .. _n27b3c63459a.Name, 12, _nc64c6043109.mint, nil, UDim2.fromScale(1, 1))
_n200e461686d.TextXAlignment = Enum.TextXAlignment.Center
_n2064b8b218d.presenceTags[_n27b3c63459a.UserId] = _n09238748268
elseif not _nb4be26d2848 and _n09238748268 then _n09238748268:Destroy(); _n2064b8b218d.presenceTags[_n27b3c63459a.UserId] = nil end
end
end
for _n3cad8fe74de, _n08b4829a119 in pairs(_n2064b8b218d.presenceTags) do if not _n51379734c7d[_n3cad8fe74de] then _n08b4829a119:Destroy(); _n2064b8b218d.presenceTags[_n3cad8fe74de] = nil end end
_n93f83ad32ee.footer.Text = _n2064b8b218d.phase .. "\032\032\047\032\032" .. _n2064b8b218d.status
if _n2064b8b218d.toastUntil and os.clock() > _n2064b8b218d.toastUntil then _n93f83ad32ee.toast.Visible = false end
_n93f83ad32ee.blur.Enabled = _n2064b8b218d.blurEnabled and not _n2064b8b218d.hidden and not _n2064b8b218d.minimized and _n2064b8b218d.mode == "\083\116\111\112\112\101\100"
_n93f83ad32ee.blur.Size = _n93f83ad32ee.blur.Enabled and 7 or 0
local _n5057d32aff9, _n30114140586 = _n2064b8b218d.character()
local _n009ce35b3f9 = _n5057d32aff9 and _n5057d32aff9.WalkSpeed
local _n904a530cd18 = _n30114140586 and Vector3.new(_n30114140586.AssemblyLinearVelocity.X, 0, _n30114140586.AssemblyLinearVelocity.Z).Magnitude
_n93f83ad32ee.statLabels[1].Text, _n93f83ad32ee.statLabels[2].Text, _n93f83ad32ee.statLabels[3].Text = tostring(_n2064b8b218d.rewards), tostring(_n2064b8b218d.failures), _n2064b8b218d.number(_n009ce35b3f9)
local _n2f5dcac8ee8 = _n2064b8b218d.target
if _n2f5dcac8ee8 then
_n93f83ad32ee.heroName.Text, _n93f83ad32ee.heroImage.Image = _n2f5dcac8ee8.name, _n2f5dcac8ee8.icon
local _ne9470e24660 = _n30114140586 and typeof(_n2f5dcac8ee8.record.BottomCFrame) == "\067\070\114\097\109\101" and (_n2f5dcac8ee8.record.BottomCFrame.Position - _n30114140586.Position).Magnitude
_n93f83ad32ee.heroDetails.Text = _n2f5dcac8ee8.rarity .. "\032\032\047\032\032" .. _n2064b8b218d.number(_n2f5dcac8ee8.weight) .. "\032\107\103\010\083\101\108\108\032" .. _n2064b8b218d.number(_n2f5dcac8ee8.value) .. "\032\032\047\032\032" .. _n2064b8b218d.number(_ne9470e24660) .. "\032\115\116\117\100\115"
end
local _n8f3f76611be = _n2064b8b218d.eventActive() and "\069\086\069\078\084\032\076\073\086\069" or "\069\086\069\078\084\032\079\070\070"
_n93f83ad32ee.progressLabel.Text = _n2064b8b218d.phase .. "\032\032\047\032\032" .. _n8f3f76611be .. "\032\032\047\032\032" .. math.floor((os.clock() - _n2064b8b218d.started) / 60) .. "\109"
_n93f83ad32ee.progress.Size = UDim2.fromScale(_n2064b8b218d.phase == "\080\073\067\075\085\080" and _n2064b8b218d.progress or 0, 1)
for _nf89813fce94, _n1f3dc0af018 in pairs(_n93f83ad32ee.modeButtons) do _n1f3dc0af018.BackgroundColor3 = _n2064b8b218d.mode == _nf89813fce94 and Color3.fromRGB(44, 68, 62) or _nc64c6043109.panel end
local _n8f8532d5e7e = _n2064b8b218d.carry and _n2064b8b218d.carry.IsCarrying
local _n539583de3d5 = _n8f8532d5e7e and (_n2064b8b218d.metadata["\070\058" .. tostring(_n2064b8b218d.carry.Uid)]
or (_n2064b8b218d.target and _n2064b8b218d.target.uid == _n2064b8b218d.carry.Uid and _n2064b8b218d.target))
local _n9265adf6f7a = _n539583de3d5 and _n539583de3d5.weight
local _n84613443241 = _n2064b8b218d.carry and _n2064b8b218d.carry.SpeedMultiplier
_n93f83ad32ee.carryText.Text = (_n8f8532d5e7e and (_n539583de3d5 and _n539583de3d5.name or tostring(_n2064b8b218d.carry.Uid or "\069\103\103")) or "\078\111\032\101\103\103\032\104\101\108\100")
.. "\010\087\101\105\103\104\116\032" .. _n2064b8b218d.number(_n9265adf6f7a) .. "\032\107\103\032\032\047\032\032\083\112\101\101\100\032\102\097\099\116\111\114\032" .. _n2064b8b218d.number(_n84613443241, 2)
.. "\010\087\097\108\107\083\112\101\101\100\032" .. _n2064b8b218d.number(_n009ce35b3f9) .. "\032\032\047\032\032\065\099\116\117\097\108\032" .. _n2064b8b218d.number(_n904a530cd18) .. "\032\115\116\117\100\115\047\115"
_n93f83ad32ee.hud.Visible = _n8f8532d5e7e or (_n2064b8b218d.minimized and (_n2064b8b218d.mode ~= "\083\116\111\112\112\101\100" or _n2064b8b218d.speedEnabled))
_n93f83ad32ee.hudText.Text = (_n8f8532d5e7e and "\067\065\082\082\089\073\078\071" or _n2064b8b218d.mode) .. "\032\032\047\032\032" .. _n2064b8b218d.number(_n9265adf6f7a) .. "\032\107\103\010" .. _n2064b8b218d.phase .. "\032\032\124\032\032" .. _n2064b8b218d.number(_n009ce35b3f9) .. "\032\115\116\117\100\115\047\115"
if _n2064b8b218d.dirty and not _n2064b8b218d.hidden and not _n2064b8b218d.minimized and _n93f83ad32ee.catalogs[_n2064b8b218d.tab] then _n2064b8b218d.renderCatalog(); _n2064b8b218d.dirty = false end
if _n2064b8b218d.logDirty and _n2064b8b218d.tab == "\065\108\101\114\116\115" then _n2064b8b218d.renderLog(); _n2064b8b218d.logDirty = false end
end
_n2064b8b218d.switchTab("\070\097\114\109")
task.defer(function() if _n2064b8b218d.alive then _n2064b8b218d.layout(true) end end)
end
function _n2064b8b218d.boot()
local _n7a1c719df4e, _nc8946f5812b = pcall(function()
_n2064b8b218d.EggState = require(_n74f430a5b2d.Client.EggState)
_n2064b8b218d.Identity = require(_n74f430a5b2d.Shared.Util.AreaEggSlotIdentity)
_n2064b8b218d.Types = require(_n74f430a5b2d.Shared.Types.AreaEggs)
_n2064b8b218d.Records = require(_n74f430a5b2d.Shared.Util.EggRecords)
_n2064b8b218d.Assets = require(_n74f430a5b2d.Data.Assets)
if not _n2064b8b218d.alive then return end
_n2064b8b218d.connect(_n2064b8b218d.EggState.CarryChanged, function(_nf4bfd47e2ea)
_n2064b8b218d.carry = _nf4bfd47e2ea
_n2064b8b218d.carryingUid = _nf4bfd47e2ea.IsCarrying and _nf4bfd47e2ea.Uid or nil
end)
_n2064b8b218d.connect(_n2064b8b218d.EggState.FieldClaimed, function(_n30b3e10e9a9)
_n2064b8b218d.rewards += 1
_n2064b8b218d.notify("\083\101\114\118\101\114\032\114\101\119\097\114\100\058\032" .. tostring(_n30b3e10e9a9.DisplayName or _n30b3e10e9a9.AssetCategory or "\069\103\103"), "\103\111\108\100")
end)
for _n851b67e00f4, _n79fe794f2eb in ipairs({_n2064b8b218d.EggState.FieldRefreshed, _n2064b8b218d.EggState.FieldShifted,
_n2064b8b218d.EggState.FieldGone, _n2064b8b218d.EggState.SnapshotRefreshed}) do
_n2064b8b218d.connect(_n79fe794f2eb, function() _n2064b8b218d.needsRefresh = true end)
end
_n2064b8b218d.status = "\083\121\110\099\104\114\111\110\105\122\105\110\103\032\108\105\118\101\032\101\103\103\115\046\046\046"
local _ncef5739d8ff, _n3da065fecd6 = _n2064b8b218d.rpc(function() return _n2064b8b218d.EggState.SyncFieldEggs() end)
if not _ncef5739d8ff then error(_n3da065fecd6) end
local _nc06d1c25244, _nb955c73b62c = _n2064b8b218d.rpc(function() return _n2064b8b218d.EggState.SyncOwnedEggs() end)
if not _nc06d1c25244 then error(_nb955c73b62c) end
if not _n2064b8b218d.alive then return end
_n2064b8b218d.ready = true
_n2064b8b218d.refreshData()
_n2064b8b218d.phase, _n2064b8b218d.status = "\073\068\076\069", "\082\101\097\100\121\046\032\080\105\099\107\032\097\032\109\111\100\101\032\111\114\032\098\114\111\119\115\101\032\121\111\117\114\032\101\103\103\115\046"
_n2064b8b218d.notify("\067\111\110\110\101\099\116\101\100\032\116\111\032\108\105\118\101\032\101\103\103\032\100\097\116\097")
task.spawn(function()
_n2064b8b218d.Save = _n2064b8b218d.safe(require, _n74f430a5b2d.Shared.Save)
_n2064b8b218d.AssetItems = _n2064b8b218d.safe(require, _n74f430a5b2d.Shared.Util.AssetItems)
if _n2064b8b218d.alive then _n2064b8b218d.needsRefresh = true end
end)
end)
if not _n7a1c719df4e and _n2064b8b218d.alive then _n2064b8b218d.status = "\076\111\097\100\032\102\097\105\108\101\100\058\032" .. tostring(_nc8946f5812b); _n2064b8b218d.phase = "\069\082\082\079\082"; _n2064b8b218d.notify(_n2064b8b218d.status, "\101\114\114\111\114") end
end
_n2064b8b218d.buildUI()
_n2064b8b218d.connect(_n73fd9822adb.Idled, _n2064b8b218d.onIdle)
_n2064b8b218d.connectPresence()
task.spawn(_n2064b8b218d.boot)
task.delay(18, function()
if _n2064b8b218d.alive and not _n2064b8b218d.ready and _n2064b8b218d.phase ~= "\069\082\082\079\082" then
_n2064b8b218d.status = "\077\111\100\117\108\101\032\108\111\097\100\105\110\103\032\105\115\032\115\108\111\119\046\032\067\104\101\099\107\032\116\104\101\032\099\108\105\101\110\116\032\099\111\110\115\111\108\101\032\105\102\032\105\116\032\100\111\101\115\032\110\111\116\032\102\105\110\105\115\104\046"
end
end)
task.spawn(function()
while _n2064b8b218d.alive do
local _n224dad74b72, _nb2ed2907434 = pcall(function()
if _n2064b8b218d.ready and (_n2064b8b218d.needsRefresh or os.clock() - _n2064b8b218d.refreshAt > 2) then
_n2064b8b218d.needsRefresh = false; _n2064b8b218d.refreshData()
end
_n2064b8b218d.updateUI()
end)
if not _n224dad74b72 then _n2064b8b218d.status = "\085\073\032\117\112\100\097\116\101\032\101\114\114\111\114\058\032" .. tostring(_nb2ed2907434) end
task.wait(0.2)
end
end)
