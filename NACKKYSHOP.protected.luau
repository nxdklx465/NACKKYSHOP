-- NACKKYSHOP | NK-6a27a772f3a1 | static-obfuscated client
local _n5020aee301c = game:GetService("\080\108\097\121\101\114\115")
local _n88615e67a04 = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101")
local _n571b1bd5f27 = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101")
local _n30b552810bc = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101")
local _nffef14de233 = game:GetService("\076\105\103\104\116\105\110\103")
local _nc921dac722b = _n5020aee301c.LocalPlayer
assert(_nc921dac722b, "\067\108\105\101\110\116\032\099\111\110\116\101\120\116\032\114\101\113\117\105\114\101\100")
local _na1f558175a5 = _nc921dac722b:WaitForChild("\080\108\097\121\101\114\071\117\105", 10)
assert(_na1f558175a5, "\080\108\097\121\101\114\071\117\105\032\110\111\116\032\097\118\097\105\108\097\098\108\101")
for _nb9a33d68d0e, _n247a7aaf0f3 in ipairs({"\069\103\103\070\097\114\109\067\108\105\101\110\116\085\073", "\069\103\103\065\116\101\108\105\101\114\085\073", "\078\065\067\075\075\089\083\072\079\080\085\073"}) do
local _n5b46aadacdd = _na1f558175a5:FindFirstChild(_n247a7aaf0f3)
if _n5b46aadacdd then _n5b46aadacdd:Destroy() end
end
local _ne31c6f549ea = {
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
flightEnabled = false, flightHeight = 30, flight = nil,
antiAfk = false, antiAfkStatus = "\079\070\070", lastIdlePulse = -math.huge,
presenceEnabled = false, presenceRemote = nil, presenceUsers = {}, presenceTags = {},
presenceStatus = "\083\101\114\118\101\114\032\099\111\109\112\097\110\105\111\110\032\110\111\116\032\105\110\115\116\097\108\108\101\100", presenceDirty = true,
}
local _n06f55647211 = {
bg = Color3.fromRGB(17, 22, 29), panel = Color3.fromRGB(27, 35, 44),
edge = Color3.fromRGB(64, 82, 91), ink = Color3.fromRGB(236, 243, 239),
muted = Color3.fromRGB(146, 166, 168), mint = Color3.fromRGB(166, 238, 195),
gold = Color3.fromRGB(246, 202, 123), red = Color3.fromRGB(241, 133, 145),
}
function _ne31c6f549ea.connect(_ncf5e36149f7, _n3c872a7eeba)
local _n8506b70e9af = _ncf5e36149f7:Connect(_n3c872a7eeba)
table.insert(_ne31c6f549ea.connections, _n8506b70e9af)
return _n8506b70e9af
end
function _ne31c6f549ea.safe(_nb2f095511cb, ...)
if type(_nb2f095511cb) ~= "\102\117\110\099\116\105\111\110" then return nil end
local _n1d6b41bf6ef, _n1247a62f197 = pcall(_nb2f095511cb, ...)
if _n1d6b41bf6ef then return _n1247a62f197 end
return nil
end
function _ne31c6f549ea.number(_n0b984da1135, _n1775a3d6472)
if type(_n0b984da1135) ~= "\110\117\109\098\101\114" or _n0b984da1135 ~= _n0b984da1135 or math.abs(_n0b984da1135) == math.huge then return "\045\045" end
local _nfbc8f9c06d9, _n9b836637325 = "", 1
if math.abs(_n0b984da1135) >= 1e9 then _nfbc8f9c06d9, _n9b836637325 = "\066", 1e9
elseif math.abs(_n0b984da1135) >= 1e6 then _nfbc8f9c06d9, _n9b836637325 = "\077", 1e6
elseif math.abs(_n0b984da1135) >= 1e3 then _nfbc8f9c06d9, _n9b836637325 = "\075", 1e3 end
return string.format("\037\046" .. tostring(_n1775a3d6472 or 1) .. "\102\037\115", _n0b984da1135 / _n9b836637325, _nfbc8f9c06d9)
end
function _ne31c6f549ea.notify(_ndbfc661a25e, _n0a5d4fbcdf4)
table.insert(_ne31c6f549ea.log, 1, {text = tostring(_ndbfc661a25e), kind = _n0a5d4fbcdf4 or "\105\110\102\111", at = os.date("\037\072\058\037\077\058\037\083")})
if #_ne31c6f549ea.log > 60 then table.remove(_ne31c6f549ea.log) end
_ne31c6f549ea.logDirty = true
if _ne31c6f549ea.alerts and _ne31c6f549ea.ui.toast then
_ne31c6f549ea.ui.toast.Text = tostring(_ndbfc661a25e)
_ne31c6f549ea.ui.toast.Visible = true
_ne31c6f549ea.toastUntil = os.clock() + 5
end
end
function _ne31c6f549ea.character()
local _n0e980f58fac = _nc921dac722b.Character
local _n00f8ff0d937 = _n0e980f58fac and _n0e980f58fac:FindFirstChildOfClass("\072\117\109\097\110\111\105\100")
local _n8b5d8679bf8 = _n0e980f58fac and _n0e980f58fac:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116")
if _n00f8ff0d937 and _n8b5d8679bf8 and _n00f8ff0d937.Health > 0 then return _n00f8ff0d937, _n8b5d8679bf8 end
end
function _ne31c6f549ea.releaseSpeed()
if _ne31c6f549ea.speedConnection then _ne31c6f549ea.speedConnection:Disconnect(); _ne31c6f549ea.speedConnection = nil end
local _n7ab18f5d3e9, _nc8baeeaa251 = _ne31c6f549ea.speedHumanoid, _ne31c6f549ea.speedBaseline
_ne31c6f549ea.speedHumanoid, _ne31c6f549ea.speedBaseline = nil, nil
if _n7ab18f5d3e9 and type(_nc8baeeaa251) == "\110\117\109\098\101\114" then
pcall(function() _n7ab18f5d3e9.WalkSpeed = _nc8baeeaa251 end)
end
end
function _ne31c6f549ea.applySpeed()
if not _ne31c6f549ea.speedEnabled or not _ne31c6f549ea.alive then return end
local _nc2a6e9d9316 = _ne31c6f549ea.character()
if _nc2a6e9d9316 ~= _ne31c6f549ea.speedHumanoid then
_ne31c6f549ea.releaseSpeed()
if not _nc2a6e9d9316 then return end
_ne31c6f549ea.speedHumanoid, _ne31c6f549ea.speedBaseline = _nc2a6e9d9316, _nc2a6e9d9316.WalkSpeed
_ne31c6f549ea.speedConnection = _nc2a6e9d9316:GetPropertyChangedSignal("\087\097\108\107\083\112\101\101\100"):Connect(function()
if not _ne31c6f549ea.writingSpeed and _nc2a6e9d9316 == _ne31c6f549ea.speedHumanoid then
_ne31c6f549ea.speedBaseline = _nc2a6e9d9316.WalkSpeed
end
end)
end
if _nc2a6e9d9316 and _nc2a6e9d9316.WalkSpeed ~= _ne31c6f549ea.speedValue then
_ne31c6f549ea.writingSpeed = true
local _n1649c2d76e3, _n57ce8a6e9f8 = pcall(function() _nc2a6e9d9316.WalkSpeed = _ne31c6f549ea.speedValue end)
_ne31c6f549ea.writingSpeed = false
if not _n1649c2d76e3 then
_ne31c6f549ea.speedEnabled = false; _ne31c6f549ea.releaseSpeed()
_ne31c6f549ea.notify("\067\117\115\116\111\109\032\083\112\101\101\100\032\102\097\105\108\101\100\058\032" .. tostring(_n57ce8a6e9f8), "\101\114\114\111\114")
end
end
end
function _ne31c6f549ea.setSpeedEnabled(_n6c4f109f586)
_ne31c6f549ea.speedEnabled = _n6c4f109f586 == true
if _ne31c6f549ea.speedEnabled then _ne31c6f549ea.applySpeed() else _ne31c6f549ea.releaseSpeed() end
end
function _ne31c6f549ea.setSpeed(_n145512b2cd1)
local _n5b7ef5b9756 = tonumber(_n145512b2cd1)
if not _n5b7ef5b9756 or _n5b7ef5b9756 ~= _n5b7ef5b9756 or math.abs(_n5b7ef5b9756) == math.huge then return false end
_ne31c6f549ea.speedValue = math.clamp(math.floor(_n5b7ef5b9756 + 0.5), _ne31c6f549ea.speedMinimum, _ne31c6f549ea.speedMaximum)
_ne31c6f549ea.applySpeed()
return true
end
function _ne31c6f549ea.releaseFlight()
local _n9cee4b4e074 = _ne31c6f549ea.flight
_ne31c6f549ea.flight = nil
if not _n9cee4b4e074 then return end
if _n9cee4b4e074.velocity then _n9cee4b4e074.velocity:Destroy() end
if _n9cee4b4e074.attachment then _n9cee4b4e074.attachment:Destroy() end
pcall(function()
_n9cee4b4e074.humanoid.PlatformStand = _n9cee4b4e074.platformStand
_n9cee4b4e074.humanoid.AutoRotate = _n9cee4b4e074.autoRotate
_n9cee4b4e074.root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
end)
end
function _ne31c6f549ea.ensureFlight()
local _n975f8df48ae, _n7f49c5ad017 = _ne31c6f549ea.character()
if not _n975f8df48ae then return nil end
if _ne31c6f549ea.flight and _ne31c6f549ea.flight.root == _n7f49c5ad017 then return _ne31c6f549ea.flight end
_ne31c6f549ea.releaseFlight()
local _n4c365cbe46f = {humanoid = _n975f8df48ae, root = _n7f49c5ad017, platformStand = _n975f8df48ae.PlatformStand, autoRotate = _n975f8df48ae.AutoRotate}
_ne31c6f549ea.flight = _n4c365cbe46f
local _n2bad7d82f64 = Instance.new("\065\116\116\097\099\104\109\101\110\116")
_n4c365cbe46f.attachment = _n2bad7d82f64
_n2bad7d82f64.Name, _n2bad7d82f64.Parent = "\078\065\067\075\075\089\083\072\079\080\070\108\105\103\104\116\065\116\116\097\099\104\109\101\110\116", _n7f49c5ad017
local _n0d35a8e62cc = Instance.new("\076\105\110\101\097\114\086\101\108\111\099\105\116\121")
_n4c365cbe46f.velocity = _n0d35a8e62cc
_n0d35a8e62cc.Name = "\078\065\067\075\075\089\083\072\079\080\070\108\105\103\104\116\086\101\108\111\099\105\116\121"
_n0d35a8e62cc.Attachment0 = _n2bad7d82f64
_n0d35a8e62cc.RelativeTo = Enum.ActuatorRelativeTo.World
_n0d35a8e62cc.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
_n0d35a8e62cc.MaxForce = 1000000
_n0d35a8e62cc.VectorVelocity = Vector3.new(0, 0, 0)
_n0d35a8e62cc.Parent = _n7f49c5ad017
_n975f8df48ae.PlatformStand, _n975f8df48ae.AutoRotate = true, false
return _n4c365cbe46f
end
function _ne31c6f549ea.flyTo(_n4227a6c5144, _n2642c5e071c, _n7151ec547ba)
if not _ne31c6f549ea.active(_n2642c5e071c) then return false, "\083\116\111\112\112\101\100" end
local _nc34d2bfdbc6 = _ne31c6f549ea.ensureFlight()
if not _nc34d2bfdbc6 then return false, "\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101" end
local _n5cdbc1c352b = _nc34d2bfdbc6.root
local _nc66432881e6 = math.max(_n5cdbc1c352b.Position.Y, _n4227a6c5144.Y) + math.clamp(_ne31c6f549ea.flightHeight, 8, 100)
local _n7b02e4e2205 = {Vector3.new(_n5cdbc1c352b.Position.X, _nc66432881e6, _n5cdbc1c352b.Position.Z),
Vector3.new(_n4227a6c5144.X, _nc66432881e6, _n4227a6c5144.Z), _n4227a6c5144 + Vector3.new(0, 3, 0)}
for _n10659aa9cdc, _n771d3dd4140 in ipairs(_n7b02e4e2205) do
local _n2597a7f9292, _n236540023d6, _nb34968745e4 = os.clock(), os.clock(), _n5cdbc1c352b.Position
while _ne31c6f549ea.active(_n2642c5e071c) do
local _n8a0c84c8050, _na46ba496db8 = _ne31c6f549ea.character()
if not _n8a0c84c8050 or _na46ba496db8 ~= _n5cdbc1c352b or not _ne31c6f549ea.flightEnabled or (_n7151ec547ba and not _n7151ec547ba()) then
_ne31c6f549ea.releaseFlight(); return false, "\070\108\105\103\104\116\032\116\097\114\103\101\116\044\032\099\104\097\114\097\099\116\101\114\032\111\114\032\101\118\101\110\116\032\099\104\097\110\103\101\100"
end
local _n1ecf24d0abe = _n771d3dd4140 - _n5cdbc1c352b.Position
if _n1ecf24d0abe.Magnitude <= 2.2 then break end
if (_n5cdbc1c352b.Position - _nb34968745e4).Magnitude > 0.6 then _n236540023d6, _nb34968745e4 = os.clock(), _n5cdbc1c352b.Position end
if os.clock() - _n236540023d6 > 4 or os.clock() - _n2597a7f9292 > 35 then
_ne31c6f549ea.releaseFlight(); return false, "\070\108\105\103\104\116\032\098\108\111\099\107\101\100\032\111\114\032\099\111\114\114\101\099\116\101\100\032\098\121\032\115\101\114\118\101\114"
end
local _nac37ca519df = _ne31c6f549ea.speedEnabled and _ne31c6f549ea.speedValue or 50
_nc34d2bfdbc6.velocity.VectorVelocity = _n1ecf24d0abe.Unit * math.min(_nac37ca519df, _n1ecf24d0abe.Magnitude * 5)
task.wait(0.05)
end
if not _ne31c6f549ea.active(_n2642c5e071c) then return false, "\083\116\111\112\112\101\100" end
end
_nc34d2bfdbc6.velocity.VectorVelocity = Vector3.new(0, 0, 0)
return true
end
function _ne31c6f549ea.onIdle()
if not _ne31c6f549ea.alive or not _ne31c6f549ea.antiAfk or os.clock() - _ne31c6f549ea.lastIdlePulse < 60 then return end
_ne31c6f549ea.lastIdlePulse = os.clock()
local _n731dae2707e, _na5c0cd19e0d = pcall(function()
local _n397eca2e402 = game:GetService("\086\105\114\116\117\097\108\085\115\101\114")
_n397eca2e402:CaptureController()
_n397eca2e402:ClickButton2(Vector2.new(0, 0))
end)
if _n731dae2707e then _ne31c6f549ea.antiAfkStatus = "\076\097\115\116\032\105\100\108\101\032\105\110\112\117\116\032\115\101\110\116"
else
_ne31c6f549ea.antiAfk, _ne31c6f549ea.antiAfkStatus = false, "\085\110\115\117\112\112\111\114\116\101\100\032\105\110\032\116\104\105\115\032\099\108\105\101\110\116"
_ne31c6f549ea.notify("\065\110\116\105\045\065\070\075\032\117\110\097\118\097\105\108\097\098\108\101\058\032" .. tostring(_na5c0cd19e0d), "\101\114\114\111\114")
end
end
function _ne31c6f549ea.clearPresenceTags()
for _ne7f30a02c44, _n53a985d5148 in pairs(_ne31c6f549ea.presenceTags) do _n53a985d5148:Destroy() end
_ne31c6f549ea.presenceTags = {}
end
function _ne31c6f549ea.setPresence(_n60f626c4628)
if not _ne31c6f549ea.presenceRemote then
_ne31c6f549ea.presenceStatus = "\073\110\115\116\097\108\108\032\078\065\067\075\075\089\083\072\079\080\080\114\101\115\101\110\099\101\046\115\101\114\118\101\114\046\108\117\097\117\032\105\110\032\116\104\101\032\103\097\109\101\032\115\101\114\118\101\114\032\102\105\114\115\116"
_ne31c6f549ea.notify(_ne31c6f549ea.presenceStatus, "\101\114\114\111\114"); return
end
_ne31c6f549ea.presenceEnabled = _n60f626c4628 == true
_ne31c6f549ea.nextPresenceBeat = os.clock() + 30
local _ncb7b41a663b, _nd3b847a72e3 = pcall(function() _ne31c6f549ea.presenceRemote:FireServer(_ne31c6f549ea.presenceEnabled) end)
if not _ncb7b41a663b then _ne31c6f549ea.presenceEnabled = false; _ne31c6f549ea.presenceStatus = tostring(_nd3b847a72e3) end
if not _ne31c6f549ea.presenceEnabled then _ne31c6f549ea.presenceUsers = {}; _ne31c6f549ea.clearPresenceTags() end
_ne31c6f549ea.presenceDirty = true
end
function _ne31c6f549ea.connectPresence()
local _n23ec09571af = _n88615e67a04:FindFirstChild("\078\065\067\075\075\089\083\072\079\080\080\114\101\115\101\110\099\101\086\049")
if not _n23ec09571af or not _n23ec09571af:IsA("\082\101\109\111\116\101\069\118\101\110\116") then return end
_ne31c6f549ea.presenceRemote = _n23ec09571af
_ne31c6f549ea.presenceStatus = "\065\118\097\105\108\097\098\108\101\046\032\069\110\097\098\108\101\032\083\104\097\114\101\032\116\111\032\115\104\111\119\032\121\111\117\114\032\110\097\109\101\032\116\111\032\111\116\104\101\114\032\117\115\101\114\115\046"
_ne31c6f549ea.connect(_n23ec09571af.OnClientEvent, function(_n1f0d686f907)
if not _ne31c6f549ea.presenceEnabled or type(_n1f0d686f907) ~= "\116\097\098\108\101" then return end
local _n2810b2f50d1 = {}
for _n9eee7c7158f, _ne9b67733b5a in ipairs(_n1f0d686f907) do
if type(_ne9b67733b5a) == "\116\097\098\108\101" and type(_ne9b67733b5a.UserId) == "\110\117\109\098\101\114" and type(_ne9b67733b5a.Name) == "\115\116\114\105\110\103" and type(_ne9b67733b5a.DisplayName) == "\115\116\114\105\110\103" then
table.insert(_n2810b2f50d1, {UserId = _ne9b67733b5a.UserId, Name = _ne9b67733b5a.Name, DisplayName = _ne9b67733b5a.DisplayName})
if #_n2810b2f50d1 >= 200 then break end
end
end
_ne31c6f549ea.presenceUsers, _ne31c6f549ea.presenceDirty = _n2810b2f50d1, true
_ne31c6f549ea.presenceStatus = tostring(#_n2810b2f50d1) .. "\032\114\101\103\105\115\116\101\114\101\100\032\117\115\101\114\115\032\105\110\032\116\104\105\115\032\115\101\114\118\101\114"
end)
end
function _ne31c6f549ea.active(_n1772ddd3039)
return _ne31c6f549ea.alive and _ne31c6f549ea.generation == _n1772ddd3039
end
function _ne31c6f549ea.stop(_n220f64ecaea)
_ne31c6f549ea.releaseFlight()
_ne31c6f549ea.generation += 1
_ne31c6f549ea.mode, _ne31c6f549ea.phase, _ne31c6f549ea.progress = "\083\116\111\112\112\101\100", "\073\068\076\069", 0
if _n220f64ecaea then _ne31c6f549ea.status = _n220f64ecaea end
local _n27ab34af4a1, _n64987909af7 = _ne31c6f549ea.character()
if _n27ab34af4a1 then _n27ab34af4a1:MoveTo(_n64987909af7.Position) end
end
function _ne31c6f549ea.eventActive()
return workspace:GetAttribute("\069\118\101\110\116\095\067\097\112\116\117\114\101\084\104\101\069\103\103\071\097\109\101\112\108\097\121") == true
end
function _ne31c6f549ea.valid(_naaf7d875b47, _n72f46846f1a)
return type(_naaf7d875b47) == "\116\097\098\108\101" and type(_naaf7d875b47.Uid) == "\115\116\114\105\110\103"
and typeof(_naaf7d875b47.BottomCFrame) == "\067\070\114\097\109\101"
and (_naaf7d875b47.State == _ne31c6f549ea.Types.States.Slot or _naaf7d875b47.State == _ne31c6f549ea.Types.States.Dropped)
and (not _n72f46846f1a or (_ne31c6f549ea.eventActive()
and _naaf7d875b47.Uid == workspace:GetAttribute("\069\118\101\110\116\095\067\097\112\116\117\114\101\084\104\101\069\103\103\085\105\100")))
end
function _ne31c6f549ea.describe(_nec84496b01a, _n30b3cfc40fa, _nf52e04ec643)
local _n8a8de6292a5 = _ne31c6f549ea.Assets and _ne31c6f549ea.Assets.Directory[_nec84496b01a.AssetCategory]
local _n839b2999c34 = _n8a8de6292a5 and _n8a8de6292a5.Rarity
local _n614edb8d169 = _ne31c6f549ea.safe(_ne31c6f549ea.Records.DisplayName, _nec84496b01a)
or (_n8a8de6292a5 and _n8a8de6292a5.Egg and _n8a8de6292a5.Egg.DisplayName) or _nec84496b01a.AssetCategory or "\069\103\103"
local _n8578faad501 = _ne31c6f549ea.safe(_ne31c6f549ea.Records.WeightKgForScale, _nec84496b01a.AssetCategory, _nec84496b01a.AssetScale)
local _n43bb39205d7 = _ne31c6f549ea.safe(_ne31c6f549ea.Records.SellPrice, _nec84496b01a)
local _nc231b37c2e9 = _ne31c6f549ea.safe(_ne31c6f549ea.Records.EggIcon, _nec84496b01a)
if type(_nc231b37c2e9) == "\110\117\109\098\101\114" then _nc231b37c2e9 = "\114\098\120\097\115\115\101\116\105\100\058\047\047" .. tostring(_nc231b37c2e9) end
local _n268bbd8f6e4 = {}
if type(_nec84496b01a.BaseMutation) == "\115\116\114\105\110\103" and _nec84496b01a.BaseMutation ~= "\078\111\110\101" then
table.insert(_n268bbd8f6e4, _nec84496b01a.BaseMutation)
end
for _n14163d4b931, _nfb1358e3f16 in ipairs(_nec84496b01a.Mutations or {}) do
if _nfb1358e3f16 ~= "\078\111\110\101" and not table.find(_n268bbd8f6e4, _nfb1358e3f16) then table.insert(_n268bbd8f6e4, _nfb1358e3f16) end
end
local _n46adcfc692a = _n839b2999c34 and tostring(_n839b2999c34._id) or "\085\110\107\110\111\119\110"
local _n81d8db8fa29 = _n839b2999c34 and typeof(_n839b2999c34.Color) == "\067\111\108\111\114\051" and _n839b2999c34.Color or _n06f55647211.mint
return {uid = tostring(_n30b3cfc40fa), record = _nec84496b01a, name = _n614edb8d169, weight = _n8578faad501, value = _n43bb39205d7,
rarity = _n46adcfc692a, color = _n81d8db8fa29, icon = type(_nc231b37c2e9) == "\115\116\114\105\110\103" and _nc231b37c2e9 or "",
scale = _nec84496b01a.AssetScale, mutations = table.concat(_n268bbd8f6e4, "\044\032"), owned = _nf52e04ec643,
rare = _n46adcfc692a ~= "\067\111\109\109\111\110" and _n46adcfc692a ~= "\085\110\099\111\109\109\111\110" and _n46adcfc692a ~= "\085\110\107\110\111\119\110"}
end
function _ne31c6f549ea.metadataFor(_n1a38b411486, _nf56981fba59, _n78b1a9a35e1)
local _n5ec652a8a78 = (_n78b1a9a35e1 and "\079\058" or "\070\058") .. tostring(_nf56981fba59)
local _n3b10aae07a2 = _ne31c6f549ea.metadata[_n5ec652a8a78]
local _n8d3126d5614 = tostring(_n1a38b411486.AssetCategory) .. "\058" .. tostring(_n1a38b411486.AssetScale)
.. "\058" .. tostring(_n1a38b411486.BaseMutation) .. "\058" .. table.concat(_n1a38b411486.Mutations or {}, "\044")
.. "\058" .. tostring(_n1a38b411486.EggSkin)
if not _n3b10aae07a2 or _n3b10aae07a2.signature ~= _n8d3126d5614 then
_n3b10aae07a2 = _ne31c6f549ea.describe(_n1a38b411486, _nf56981fba59, _n78b1a9a35e1)
_n3b10aae07a2.signature = _n8d3126d5614
_ne31c6f549ea.metadata[_n5ec652a8a78] = _n3b10aae07a2
end
_n3b10aae07a2.record = _n1a38b411486
return _n3b10aae07a2
end
function _ne31c6f549ea.refreshData()
if not _ne31c6f549ea.ready then return end
_ne31c6f549ea.rows, _ne31c6f549ea.owned = {}, {}
local _n07fee5b190c = {}
for _n7bf897c906d, _n105a21536ee in ipairs(_ne31c6f549ea.EggState.ReadFieldEggs().Records) do
if type(_n105a21536ee.Uid) == "\115\116\114\105\110\103" then
_n07fee5b190c["\070\058" .. _n105a21536ee.Uid] = true
table.insert(_ne31c6f549ea.rows, _ne31c6f549ea.metadataFor(_n105a21536ee, _n105a21536ee.Uid, false))
end
end
for _na999b706774, _nbb983a32c14 in pairs(_ne31c6f549ea.EggState.ReadOwnerEggs(_nc921dac722b.UserId)) do
_n07fee5b190c["\079\058" .. tostring(_na999b706774)] = true
table.insert(_ne31c6f549ea.owned, _ne31c6f549ea.metadataFor(_nbb983a32c14, _na999b706774, true))
end
local _n46cfb29b392, _ndb6ae735b7e = {}, 0
for _nbf324c2e2e5, _ne49e5611b07 in ipairs(_ne31c6f549ea.owned) do _n46cfb29b392[_ne49e5611b07.uid] = true end
for _n074c48dafbe in pairs(_ne31c6f549ea.ownedBaseline or {}) do if not _n46cfb29b392[_n074c48dafbe] then _ndb6ae735b7e += 1 end end
if _ndb6ae735b7e > 0 then _ne31c6f549ea.notify("\073\110\118\101\110\116\111\114\121\032\099\104\097\110\103\101\100\058\032" .. _ndb6ae735b7e .. "\032\101\103\103\040\115\041\032\114\101\109\111\118\101\100") end
_ne31c6f549ea.ownedBaseline = _n46cfb29b392
_ne31c6f549ea.pets = {}
local _n212f03d1b01 = _ne31c6f549ea.Save and _ne31c6f549ea.safe(_ne31c6f549ea.Save.Get)
if _n212f03d1b01 and _ne31c6f549ea.AssetItems then
for _n6499015bcf0, _n8ee2923ebd0 in pairs(_n212f03d1b01.Inventory or {}) do
local _n9b0b1855789 = _ne31c6f549ea.Assets.Directory[_n8ee2923ebd0.Category]
if _n9b0b1855789 then
local _nf9796abae29 = table.clone(_n8ee2923ebd0.Mutations or {})
if _n8ee2923ebd0.BaseMutation and not table.find(_nf9796abae29, _n8ee2923ebd0.BaseMutation) then table.insert(_nf9796abae29, _n8ee2923ebd0.BaseMutation) end
local _nbd7cd0d0a04 = _n9b0b1855789.Rarity and tostring(_n9b0b1855789.Rarity._id) or "\085\110\107\110\111\119\110"
table.insert(_ne31c6f549ea.pets, {uid = tostring(_n6499015bcf0), record = _n8ee2923ebd0, name = _n9b0b1855789.DisplayName or _n8ee2923ebd0.Category,
weight = _ne31c6f549ea.safe(_ne31c6f549ea.AssetItems.WeightKg, _n8ee2923ebd0), value = _ne31c6f549ea.safe(_ne31c6f549ea.AssetItems.SalePrice, _n8ee2923ebd0),
icon = type(_n9b0b1855789.Icon) == "\115\116\114\105\110\103" and _n9b0b1855789.Icon or "", scale = _n8ee2923ebd0.Scale,
rarity = _nbd7cd0d0a04, color = _n06f55647211.mint, rare = _nbd7cd0d0a04 ~= "\067\111\109\109\111\110" and _nbd7cd0d0a04 ~= "\085\110\099\111\109\109\111\110" and _nbd7cd0d0a04 ~= "\085\110\107\110\111\119\110",
mutations = table.concat(_nf9796abae29, "\044\032"), owned = true, pet = true})
end
end
end
for _n1aa03e939aa in pairs(_ne31c6f549ea.metadata) do if not _n07fee5b190c[_n1aa03e939aa] then _ne31c6f549ea.metadata[_n1aa03e939aa] = nil end end
local _n5f954e5646f = not _ne31c6f549ea.alertBaseline
local _n7c77d3e2f72 = {}
for _ne677dcbabad, _n69b4d970398 in ipairs(_ne31c6f549ea.rows) do
_n7c77d3e2f72[_n69b4d970398.uid] = true
if not _n5f954e5646f and not _ne31c6f549ea.seen[_n69b4d970398.uid] and _ne31c6f549ea.valid(_n69b4d970398.record, false) then
if _n69b4d970398.weight and _n69b4d970398.weight >= _ne31c6f549ea.heavyAlert then
_ne31c6f549ea.notify("\072\101\097\118\121\032\101\103\103\058\032" .. _n69b4d970398.name .. "\032\047\032" .. _ne31c6f549ea.number(_n69b4d970398.weight) .. "\032\107\103", "\103\111\108\100")
elseif _n69b4d970398.value and _n69b4d970398.value >= _ne31c6f549ea.valueAlert then
_ne31c6f549ea.notify("\072\105\103\104\032\118\097\108\117\101\058\032" .. _n69b4d970398.name .. "\032\047\032" .. _ne31c6f549ea.number(_n69b4d970398.value), "\103\111\108\100")
end
end
end
_ne31c6f549ea.seen, _ne31c6f549ea.alertBaseline = _n7c77d3e2f72, true
_ne31c6f549ea.dirty, _ne31c6f549ea.refreshAt = true, os.clock()
end
function _ne31c6f549ea.matches(_n9eb8affcb3b)
if _ne31c6f549ea.rareOnly and not _n9eb8affcb3b.rare then return false end
if _ne31c6f549ea.minWeight > 0 and (not _n9eb8affcb3b.weight or _n9eb8affcb3b.weight < _ne31c6f549ea.minWeight) then return false end
if _ne31c6f549ea.minValue > 0 and (not _n9eb8affcb3b.value or _n9eb8affcb3b.value < _ne31c6f549ea.minValue) then return false end
return true
end
function _ne31c6f549ea.choose(_nfde786b1378)
local _n6587b25a0ef, _nb15d8137c80 = _ne31c6f549ea.character()
if not _nb15d8137c80 then return nil end
local _nb9b8afbeeb0, _nc9bcf42fd2a = nil, -math.huge
for _n7a308d23fcd, _n7ac2c0c846c in pairs(_ne31c6f549ea.blocked) do if _n7ac2c0c846c <= os.clock() then _ne31c6f549ea.blocked[_n7a308d23fcd] = nil end end
for _n1e360b79c05, _ndcf6aa1b5e8 in ipairs(_ne31c6f549ea.rows) do
local _n83d952aa6ae = _ne31c6f549ea.EggState.ReadFieldEgg(_ndcf6aa1b5e8.uid)
if _ne31c6f549ea.valid(_n83d952aa6ae, _nfde786b1378) and _ne31c6f549ea.matches(_ndcf6aa1b5e8) and not _ne31c6f549ea.blocked[_ndcf6aa1b5e8.uid]
and (not _ne31c6f549ea.targetOverride or _ne31c6f549ea.targetOverride == _ndcf6aa1b5e8.uid) then
local _n61af280850e = (_n83d952aa6ae.BottomCFrame.Position - _nb15d8137c80.Position).Magnitude
local _n9f99f162b16 = -_n61af280850e
if _ne31c6f549ea.selection == "\072\101\097\118\105\101\115\116" then _n9f99f162b16 = _ndcf6aa1b5e8.weight or -math.huge
elseif _ne31c6f549ea.selection == "\072\105\103\104\101\115\116\032\118\097\108\117\101" then _n9f99f162b16 = _ndcf6aa1b5e8.value or -math.huge end
if _n9f99f162b16 > _nc9bcf42fd2a or (_n9f99f162b16 == _nc9bcf42fd2a and _nb9b8afbeeb0 and _ndcf6aa1b5e8.uid < _nb9b8afbeeb0.uid) then
_ndcf6aa1b5e8.record, _nb9b8afbeeb0, _nc9bcf42fd2a = _n83d952aa6ae, _ndcf6aa1b5e8, _n9f99f162b16
end
end
end
return _nb9b8afbeeb0
end
function _ne31c6f549ea.rpc(_nc93ebbaa8b6, _n3691b18587f)
if _ne31c6f549ea.busy then return false, "\080\114\101\118\105\111\117\115\032\114\101\113\117\101\115\116\032\112\101\110\100\105\110\103" end
_ne31c6f549ea.busy = true
local _nd688d98ae91
task.spawn(function() _nd688d98ae91 = table.pack(pcall(_nc93ebbaa8b6)); _ne31c6f549ea.busy = false end)
local _n746bc9c3fce = os.clock() + 10
repeat task.wait(0.05) until _nd688d98ae91 or not _ne31c6f549ea.alive or (_n3691b18587f ~= nil and not _ne31c6f549ea.active(_n3691b18587f)) or os.clock() > _n746bc9c3fce
if not _nd688d98ae91 then return false, "\082\101\113\117\101\115\116\032\115\116\105\108\108\032\112\101\110\100\105\110\103\059\032\115\116\111\112\112\101\100\032\116\111\032\097\118\111\105\100\032\100\117\112\108\105\099\097\116\101\115" end
if not _nd688d98ae91[1] then return false, tostring(_nd688d98ae91[2]) end
return true, table.unpack(_nd688d98ae91, 2, _nd688d98ae91.n)
end
function _ne31c6f549ea.moveTo(_n8acb2ec4112, _n2e20a834379, _n3e0e77e6d91)
if _ne31c6f549ea.flightEnabled then return _ne31c6f549ea.flyTo(_n8acb2ec4112, _n2e20a834379, _n3e0e77e6d91) end
local _na3c77f882ab, _nef2436264a4, _n064b9dbb25c = os.clock(), os.clock(), nil
while _ne31c6f549ea.active(_n2e20a834379) and os.clock() - _na3c77f882ab < 40 do
local _nb17e2c32045, _n9c30bb35de2 = _ne31c6f549ea.character()
if not _nb17e2c32045 then return false, "\067\104\097\114\097\099\116\101\114\032\117\110\097\118\097\105\108\097\098\108\101" end
if _n3e0e77e6d91 and not _n3e0e77e6d91() then _nb17e2c32045:MoveTo(_n9c30bb35de2.Position); return false, "\084\097\114\103\101\116\032\111\114\032\101\118\101\110\116\032\099\104\097\110\103\101\100" end
local _n69cc7b87989 = _n8acb2ec4112 - _n9c30bb35de2.Position
if Vector3.new(_n69cc7b87989.X, 0, _n69cc7b87989.Z).Magnitude < 3.5 and math.abs(_n69cc7b87989.Y) < 8 then
_nb17e2c32045:MoveTo(_n9c30bb35de2.Position); return true
end
if not _n064b9dbb25c or (_n9c30bb35de2.Position - _n064b9dbb25c).Magnitude > 1 then
_nef2436264a4, _n064b9dbb25c = os.clock(), _n9c30bb35de2.Position
elseif os.clock() - _nef2436264a4 > 4 then
_nb17e2c32045:MoveTo(_n9c30bb35de2.Position); return false, "\080\097\116\104\032\098\108\111\099\107\101\100\059\032\116\097\114\103\101\116\032\115\107\105\112\112\101\100"
end
_nb17e2c32045:MoveTo(_n8acb2ec4112)
task.wait(0.12)
end
local _n035023e0ebb, _n1f60baf2ae3 = _ne31c6f549ea.character()
if _n035023e0ebb and _ne31c6f549ea.active(_n2e20a834379) then _n035023e0ebb:MoveTo(_n1f60baf2ae3.Position) end
return false, "\077\111\118\101\109\101\110\116\032\116\105\109\101\111\117\116\032\111\114\032\115\116\111\112\112\101\100"
end
function _ne31c6f549ea.returnHome(_na47ae22f8e2)
local _n200c4c43729 = workspace:FindFirstChild("\095\095\079\066\074\069\067\084\083")
local _nf814cf427df = _n200c4c43729 and _n200c4c43729:FindFirstChild("\065\114\101\097\115")
local _n9819a5d9e2e = _nf814cf427df and _nf814cf427df:FindFirstChild("\083\101\112\097\114\097\116\105\111\110\076\105\110\101")
local _n1a6f445d42d, _n0a1455e6d6c = _ne31c6f549ea.character()
if not _n9819a5d9e2e or not _n9819a5d9e2e:IsA("\066\097\115\101\080\097\114\116") or not _n0a1455e6d6c then return false, "\071\097\109\101\112\108\097\121\032\101\120\105\116\032\117\110\097\118\097\105\108\097\098\108\101" end
local _n5049720eeeb = _n9819a5d9e2e.Position + Vector3.new(0, 3, 0) - _n9819a5d9e2e.CFrame.LookVector.Unit * 6
_ne31c6f549ea.phase = "\082\069\084\085\082\078"
local _n1c728ca58b6, _nf26f38d0bf4 = _ne31c6f549ea.moveTo(Vector3.new(_n5049720eeeb.X, _n5049720eeeb.Y, _n0a1455e6d6c.Position.Z), _na47ae22f8e2)
if _ne31c6f549ea.active(_na47ae22f8e2) then _ne31c6f549ea.releaseFlight() end
return _n1c728ca58b6, _nf26f38d0bf4
end
function _ne31c6f549ea.run(_nae6038e0673, _n5c57a9c6356)
while _ne31c6f549ea.active(_n5c57a9c6356) do
if _ne31c6f549ea.busy then _ne31c6f549ea.status = "\087\097\105\116\105\110\103\032\102\111\114\032\112\114\101\118\105\111\117\115\032\114\101\113\117\101\115\116"; task.wait(0.3); continue end
if not _ne31c6f549ea.character() then _ne31c6f549ea.phase = "\082\069\083\080\065\087\078"; _ne31c6f549ea.status = "\087\097\105\116\105\110\103\032\102\111\114\032\099\104\097\114\097\099\116\101\114"; task.wait(0.4); continue end
local _n57661a66738 = _nae6038e0673 == "\065\117\116\111\032\069\118\101\110\116"
if _n57661a66738 and not _ne31c6f549ea.eventActive() then
_ne31c6f549ea.phase, _ne31c6f549ea.status = "\087\065\073\084\032\069\086\069\078\084", "\087\097\105\116\105\110\103\032\102\111\114\032\067\097\112\116\117\114\101\084\104\101\069\103\103"
task.wait(0.5); continue
end
if _ne31c6f549ea.carry and _ne31c6f549ea.carry.IsCarrying then
local _n4b1544a9da3, _n613e0464597 = _ne31c6f549ea.returnHome(_n5c57a9c6356)
if not _ne31c6f549ea.active(_n5c57a9c6356) then return end
if not _n4b1544a9da3 then _ne31c6f549ea.status = _n613e0464597; return end
local _n32aed4d89a1 = os.clock() + 8
repeat task.wait(0.1) until not _ne31c6f549ea.active(_n5c57a9c6356) or not _ne31c6f549ea.carry.IsCarrying or os.clock() > _n32aed4d89a1
if not _ne31c6f549ea.active(_n5c57a9c6356) then return end
if _ne31c6f549ea.carry.IsCarrying then _ne31c6f549ea.status = "\083\116\105\108\108\032\099\097\114\114\121\105\110\103\059\032\112\108\101\097\115\101\032\114\101\116\117\114\110\032\109\097\110\117\097\108\108\121"; return end
end
_ne31c6f549ea.phase = "\083\067\065\078"
_ne31c6f549ea.refreshData()
local _n1066c0fa149 = _ne31c6f549ea.choose(_n57661a66738)
if not _n1066c0fa149 then
_ne31c6f549ea.status = _ne31c6f549ea.targetOverride and "\083\101\108\101\099\116\101\100\032\101\103\103\032\117\110\097\118\097\105\108\097\098\108\101\059\032\099\108\101\097\114\032\080\105\110\032\105\110\032\083\101\116\116\105\110\103\115" or "\087\097\105\116\105\110\103\032\102\111\114\032\101\103\103\115\032\109\097\116\099\104\105\110\103\032\121\111\117\114\032\102\105\108\116\101\114\115"
task.wait(0.8); continue
end
_ne31c6f549ea.target, _ne31c6f549ea.blocked[_n1066c0fa149.uid] = _n1066c0fa149, os.clock() + 20
local function _nf6fd263bcba() return _ne31c6f549ea.valid(_ne31c6f549ea.EggState.ReadFieldEgg(_n1066c0fa149.uid), _n57661a66738) end
if _nae6038e0673 ~= "\073\110\115\116\097\110\116\032\083\116\101\097\108" or _ne31c6f549ea.flightEnabled then
_ne31c6f549ea.phase, _ne31c6f549ea.status = "\077\079\086\069", "\065\112\112\114\111\097\099\104\105\110\103\032" .. _n1066c0fa149.name
local _na17c79ac576, _na8f4870f000 = _ne31c6f549ea.moveTo(_n1066c0fa149.record.BottomCFrame.Position, _n5c57a9c6356, _nf6fd263bcba)
if not _ne31c6f549ea.active(_n5c57a9c6356) then return end
if not _na17c79ac576 then
_ne31c6f549ea.failures += 1; _ne31c6f549ea.notify(_na8f4870f000, "\101\114\114\111\114"); _ne31c6f549ea.status = _na8f4870f000; task.wait(0.4); continue
end
_ne31c6f549ea.phase = "\080\073\067\075\085\080"
local _ncd3e1e48408 = workspace:GetAttribute("\070\097\115\116\069\103\103\080\105\099\107\117\112\084\105\109\101") and 0.25 or 1.2
local _nc5037d18f16 = os.clock()
while _ne31c6f549ea.active(_n5c57a9c6356) and _nf6fd263bcba() and os.clock() - _nc5037d18f16 < _ncd3e1e48408 do
_ne31c6f549ea.progress = math.clamp((os.clock() - _nc5037d18f16) / _ncd3e1e48408, 0, 1)
task.wait(0.03)
end
end
if not _ne31c6f549ea.active(_n5c57a9c6356) then return end
if not _nf6fd263bcba() then _ne31c6f549ea.status = "\084\097\114\103\101\116\032\099\104\097\110\103\101\100\032\098\101\102\111\114\101\032\112\105\099\107\117\112"; continue end
local _na02668b1ebf
if _ne31c6f549ea.Identity.LooksLikeFirstAreaUid(_n1066c0fa149.uid) then _na02668b1ebf = _ne31c6f549ea.Identity.SlotKey(_n1066c0fa149.record.AreaId, _n1066c0fa149.record.NestId) end
local _nd722a2f13ec = _ne31c6f549ea.rewards
_ne31c6f549ea.phase, _ne31c6f549ea.status, _ne31c6f549ea.progress = "\086\069\082\073\070\089", "\087\097\105\116\105\110\103\032\102\111\114\032\115\101\114\118\101\114\032\114\101\115\112\111\110\115\101", 1
local _n719c5aab6de, _nf5439b32f8a, _n3c4bbaa41bf = _ne31c6f549ea.rpc(function() return _ne31c6f549ea.EggState.CarryFieldEgg(_n1066c0fa149.uid, _na02668b1ebf) end, _n5c57a9c6356)
if not _ne31c6f549ea.active(_n5c57a9c6356) then return end
if not _n719c5aab6de then _ne31c6f549ea.failures += 1; _ne31c6f549ea.status = tostring(_nf5439b32f8a); _ne31c6f549ea.notify(_ne31c6f549ea.status, "\101\114\114\111\114"); return end
if _nf5439b32f8a ~= true then
_ne31c6f549ea.failures += 1
_ne31c6f549ea.status = "\083\101\114\118\101\114\032\114\101\106\101\099\116\101\100\058\032" .. tostring(_n3c4bbaa41bf or "\078\111\032\114\101\097\115\111\110\032\114\101\116\117\114\110\101\100")
_ne31c6f549ea.notify(_ne31c6f549ea.status, "\101\114\114\111\114")
else
local _n99d0a812568, _n3791ad0c111 = _ne31c6f549ea.returnHome(_n5c57a9c6356)
if not _ne31c6f549ea.active(_n5c57a9c6356) then return end
if not _n99d0a812568 then _ne31c6f549ea.status = _n3791ad0c111; return end
_ne31c6f549ea.phase, _ne31c6f549ea.status = "\086\069\082\073\070\089", "\087\097\105\116\105\110\103\032\102\111\114\032\115\101\114\118\101\114\032\114\101\119\097\114\100\032\110\111\116\105\102\105\099\097\116\105\111\110"
local _n9d03fc829ac = os.clock() + 8
while _ne31c6f549ea.active(_n5c57a9c6356) and _ne31c6f549ea.rewards == _nd722a2f13ec and os.clock() < _n9d03fc829ac do task.wait(0.1) end
if not _ne31c6f549ea.active(_n5c57a9c6356) then return end
if _ne31c6f549ea.rewards == _nd722a2f13ec then _ne31c6f549ea.status = "\080\105\099\107\117\112\032\097\099\099\101\112\116\101\100\059\032\114\101\119\097\114\100\032\117\110\099\111\110\102\105\114\109\101\100\046\032\083\116\111\112\112\101\100\046"; return end
_ne31c6f549ea.status = "\083\101\114\118\101\114\032\114\101\119\097\114\100\032\099\111\110\102\105\114\109\101\100"
_ne31c6f549ea.targetOverride = nil
end
_ne31c6f549ea.progress = 0
if _nae6038e0673 == "\073\110\115\116\097\110\116\032\083\116\101\097\108" then return end
task.wait(0.6)
end
end
function _ne31c6f549ea.start(_n25a8ae1f713)
if not _ne31c6f549ea.ready then _ne31c6f549ea.notify(_ne31c6f549ea.status, "\101\114\114\111\114"); return end
if _ne31c6f549ea.busy then _ne31c6f549ea.stop("\082\101\113\117\101\115\116\032\112\101\110\100\105\110\103\046\032\087\097\105\116\032\102\111\114\032\105\116\032\116\111\032\102\105\110\105\115\104\032\098\101\102\111\114\101\032\114\101\115\116\097\114\116\105\110\103\046"); _ne31c6f549ea.notify(_ne31c6f549ea.status); return end
_ne31c6f549ea.stop()
_ne31c6f549ea.mode = _n25a8ae1f713
local _n4b643f50f01 = _ne31c6f549ea.generation
_ne31c6f549ea.notify(_n25a8ae1f713 .. "\032\115\116\097\114\116\101\100")
task.spawn(function()
local _n6d074360299, _n7739888f11a = pcall(_ne31c6f549ea.run, _n25a8ae1f713, _n4b643f50f01)
if _ne31c6f549ea.active(_n4b643f50f01) then
if not _n6d074360299 then _ne31c6f549ea.status = "\069\114\114\111\114\058\032" .. tostring(_n7739888f11a); _ne31c6f549ea.notify(_ne31c6f549ea.status, "\101\114\114\111\114") end
_ne31c6f549ea.stop()
end
end)
end
function _ne31c6f549ea.drop()
if not _ne31c6f549ea.ready then return end
if _ne31c6f549ea.busy then _ne31c6f549ea.stop("\087\097\105\116\032\102\111\114\032\116\104\101\032\111\117\116\115\116\097\110\100\105\110\103\032\114\101\113\117\101\115\116\032\098\101\102\111\114\101\032\100\114\111\112\112\105\110\103"); return end
_ne31c6f549ea.stop("\068\114\111\112\112\105\110\103\032\104\101\108\100\032\101\103\103\046\046\046")
local _n4e6287ad12b = _ne31c6f549ea.generation
task.spawn(function()
local _nd6625dbc655, _n51b7a1ac858, _n486ef316b1f = _ne31c6f549ea.rpc(function() return _ne31c6f549ea.EggState.DropFieldEgg("\080\108\097\121\101\114\082\101\113\117\101\115\116") end, _n4e6287ad12b)
if not _ne31c6f549ea.active(_n4e6287ad12b) then return end
_ne31c6f549ea.status = _nd6625dbc655 and _n51b7a1ac858 == true and "\068\114\111\112\032\097\099\099\101\112\116\101\100\032\098\121\032\115\101\114\118\101\114" or "\068\114\111\112\032\102\097\105\108\101\100\058\032" .. tostring(_n486ef316b1f or _n51b7a1ac858)
_ne31c6f549ea.notify(_ne31c6f549ea.status, _nd6625dbc655 and _n51b7a1ac858 == true and "\105\110\102\111" or "\101\114\114\111\114")
end)
end
function _ne31c6f549ea.buildUI()
local _n6520ae49775 = _ne31c6f549ea.ui
local function _n87f97b61fb7(_n07dde30ee91, _n6d1928456a8, _n9712e69533b)
local _n9a2958c0e32 = Instance.new(_n07dde30ee91)
for _na7c207e3ae3, _ne78d200bca8 in pairs(_n9712e69533b or {}) do _n9a2958c0e32[_na7c207e3ae3] = _ne78d200bca8 end
_n9a2958c0e32.Parent = _n6d1928456a8
return _n9a2958c0e32
end
local function _n61cb8008a6f(_ne7589bdf59a, _n330d0e032d4)
_n87f97b61fb7("\085\073\067\111\114\110\101\114", _ne7589bdf59a, {CornerRadius = UDim.new(0, _n330d0e032d4 or 12)})
end
local function _n11c7e50164a(_nd85a04f3159, _n360d05fb656, _nba795fdf837)
return _n87f97b61fb7("\085\073\083\116\114\111\107\101", _nd85a04f3159, {Color = _n360d05fb656 or _n06f55647211.edge, Transparency = _nba795fdf837 or 0.45, Thickness = 1})
end
local function _n3c3b92bebac(_n2fe295a3ac5, _nda33d510815, _ne5c6c7f1c57, _n4821e8c8cdc, _n221b49f5cf7, _n83a8350e25b)
return _n87f97b61fb7("\084\101\120\116\076\097\098\101\108", _n2fe295a3ac5, {Text = _nda33d510815, TextSize = _ne5c6c7f1c57 or 14, TextColor3 = _n4821e8c8cdc or _n06f55647211.ink,
Font = Enum.Font.Gotham, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left,
Position = _n221b49f5cf7 or UDim2.new(), Size = _n83a8350e25b or UDim2.new(1, 0, 0, 24), TextWrapped = true})
end
local function _ncd52347aa93(_nf1bf27b1b02, _n3648d2f9379, _n7e5efc0fa89)
local _nc08076e3401 = _n87f97b61fb7("\070\114\097\109\101", _nf1bf27b1b02, {Size = _n3648d2f9379, Position = _n7e5efc0fa89 or UDim2.new(),
BackgroundColor3 = _n06f55647211.panel, BackgroundTransparency = 0.13, BorderSizePixel = 0})
_n61cb8008a6f(_nc08076e3401, 13); _n11c7e50164a(_nc08076e3401)
return _nc08076e3401
end
local function _nc297441f02e(_n418c0dc4c94, _n220550b59ef)
if _ne31c6f549ea.motion then _n30b552810bc:Create(_n418c0dc4c94, TweenInfo.new(0.18, Enum.EasingStyle.Quad), _n220550b59ef):Play()
else for _ne6ec7c8572d, _n7ca08cd2413 in pairs(_n220550b59ef) do _n418c0dc4c94[_ne6ec7c8572d] = _n7ca08cd2413 end end
end
local function _n836aceee785(_n111146e07d0, _n234e2215de5, _n272d8011bf2, _ne5d91d4980c, _n38e05c1f674, _n44f41c5d85c)
local _naad83705033 = _n87f97b61fb7("\084\101\120\116\066\117\116\116\111\110", _n111146e07d0, {Text = _n234e2215de5, TextSize = 13, Font = Enum.Font.GothamBold,
TextColor3 = _n44f41c5d85c and _n06f55647211.bg or _n06f55647211.ink, BackgroundColor3 = _n44f41c5d85c or _n06f55647211.panel,
BorderSizePixel = 0, AutoButtonColor = false, Position = _n272d8011bf2, Size = _ne5d91d4980c})
_n61cb8008a6f(_naad83705033, 10); _n11c7e50164a(_naad83705033, _n44f41c5d85c or _n06f55647211.edge, 0.6)
_naad83705033.Activated:Connect(_n38e05c1f674)
_naad83705033.MouseEnter:Connect(function() _nc297441f02e(_naad83705033, {BackgroundTransparency = 0.17}) end)
_naad83705033.MouseLeave:Connect(function() _nc297441f02e(_naad83705033, {BackgroundTransparency = 0}) end)
return _naad83705033
end
local function _ned48510ce93(_n0f0c20ce5de)
return _n87f97b61fb7("\083\099\114\111\108\108\105\110\103\070\114\097\109\101", _n0f0c20ce5de, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
BorderSizePixel = 0, ScrollBarThickness = 4, ScrollBarImageColor3 = _n06f55647211.mint,
CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y,
ScrollingDirection = Enum.ScrollingDirection.Y})
end
_n6520ae49775.gui = _n87f97b61fb7("\083\099\114\101\101\110\071\117\105", _na1f558175a5, {Name = "\078\065\067\075\075\089\083\072\079\080\085\073", ResetOnSpawn = false, DisplayOrder = 120,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
_n6520ae49775.root = _n87f97b61fb7("\070\114\097\109\101", _n6520ae49775.gui, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1})
_n6520ae49775.window = _ncd52347aa93(_n6520ae49775.root, UDim2.fromOffset(790, 650), UDim2.fromOffset(30, 30))
_n6520ae49775.window.BackgroundColor3 = _n06f55647211.bg
_n6520ae49775.window.BackgroundTransparency = 0.07
_n6520ae49775.window.ClipsDescendants = true
_n87f97b61fb7("\085\073\071\114\097\100\105\101\110\116", _n6520ae49775.window, {Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 255, 245)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(168, 190, 224))}), Rotation = 65})
_n6520ae49775.titlebar = _n87f97b61fb7("\070\114\097\109\101", _n6520ae49775.window, {BackgroundTransparency = 1, Size = UDim2.new(1, -155, 0, 59), Active = true})
_n3c3b92bebac(_n6520ae49775.titlebar, "\078\075", 18, _n06f55647211.mint, UDim2.fromOffset(18, 13), UDim2.fromOffset(36, 30)).Font = Enum.Font.GothamBold
_n3c3b92bebac(_n6520ae49775.titlebar, "\078\065\067\075\075\089\083\072\079\080", 15, _n06f55647211.ink, UDim2.fromOffset(63, 10), UDim2.new(1, -67, 0, 23)).Font = Enum.Font.GothamBold
_n3c3b92bebac(_n6520ae49775.titlebar, "\064" .. _nc921dac722b.Name, 10, _n06f55647211.muted, UDim2.fromOffset(63, 34), UDim2.new(1, -67, 0, 16))
_n6520ae49775.blur = _n87f97b61fb7("\066\108\117\114\069\102\102\101\099\116", _nffef14de233, {Name = "\078\065\067\075\075\089\083\072\079\080\066\108\117\114", Size = 0, Enabled = false})
_n6520ae49775.launcher = _n836aceee785(_n6520ae49775.root, "\078\075\032\032\047\032\032\079\080\069\078", UDim2.new(1, -134, 0, 12), UDim2.fromOffset(120, 44), function() _ne31c6f549ea.show() end, _n06f55647211.mint)
_n6520ae49775.launcher.Visible = false
_n6520ae49775.close = _n836aceee785(_n6520ae49775.window, "\088", UDim2.new(1, -48, 0, 11), UDim2.fromOffset(36, 36), function()
_ne31c6f549ea.stop("\067\108\111\115\101\100\046\032\082\101\111\112\101\110\032\116\111\032\099\111\110\116\105\110\117\101\046"); _ne31c6f549ea.setSpeedEnabled(false)
_ne31c6f549ea.hidden = true; _n6520ae49775.window.Visible = false; _n6520ae49775.launcher.Visible = true; _n6520ae49775.blur.Enabled = false
end)
_n6520ae49775.minimize = _n836aceee785(_n6520ae49775.window, "\095", UDim2.new(1, -130, 0, 11), UDim2.fromOffset(36, 36), function()
_ne31c6f549ea.minimized = not _ne31c6f549ea.minimized; _ne31c6f549ea.layout()
end)
_n6520ae49775.maximize = _n836aceee785(_n6520ae49775.window, "\043", UDim2.new(1, -89, 0, 11), UDim2.fromOffset(36, 36), function()
_n6520ae49775.large = not _n6520ae49775.large; _n6520ae49775.userSize = nil; _ne31c6f549ea.minimized = false; _ne31c6f549ea.layout(true)
end)
_n6520ae49775.tabs = _n87f97b61fb7("\083\099\114\111\108\108\105\110\103\070\114\097\109\101", _n6520ae49775.window, {Position = UDim2.fromOffset(14, 62), Size = UDim2.new(1, -28, 0, 44), BackgroundTransparency = 1,
BorderSizePixel = 0, CanvasSize = UDim2.new(), ScrollBarThickness = 2, ScrollingDirection = Enum.ScrollingDirection.X})
_n6520ae49775.tabButtons, _n6520ae49775.pages = {}, {}
_n6520ae49775.body = _n87f97b61fb7("\070\114\097\109\101", _n6520ae49775.window, {Position = UDim2.fromOffset(16, 119), Size = UDim2.new(1, -32, 1, -170), BackgroundTransparency = 1})
_n6520ae49775.tabNames = {"\070\097\114\109", "\069\103\103\115", "\079\119\110\101\100", "\080\101\116\115", "\085\115\101\114\115", "\065\108\101\114\116\115", "\083\101\116\116\105\110\103\115"}
for _n79ab5aa4f04, _na89b3dffe46 in ipairs(_n6520ae49775.tabNames) do
_n6520ae49775.tabButtons[_na89b3dffe46] = _n836aceee785(_n6520ae49775.tabs, _na89b3dffe46, UDim2.fromOffset((_n79ab5aa4f04 - 1) * 72, 0), UDim2.fromOffset(68, 40), function() _ne31c6f549ea.switchTab(_na89b3dffe46) end)
_n6520ae49775.tabButtons[_na89b3dffe46].TextSize = 11
_n6520ae49775.pages[_na89b3dffe46] = _n87f97b61fb7("\070\114\097\109\101", _n6520ae49775.body, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Visible = _na89b3dffe46 == "\070\097\114\109"})
end
_n6520ae49775.footer = _n3c3b92bebac(_n6520ae49775.window, "\067\111\110\110\101\099\116\105\110\103\046\046\046", 11, _n06f55647211.muted, UDim2.new(0, 17, 1, -38), UDim2.new(1, -60, 0, 28))
_n6520ae49775.resize = _n836aceee785(_n6520ae49775.window, "\047\047", UDim2.new(1, -40, 1, -36), UDim2.fromOffset(32, 29), function() end)
_n6520ae49775.resize.TextColor3 = _n06f55647211.muted
_n6520ae49775.resize.Active = true
_n6520ae49775.toast = _n3c3b92bebac(_n6520ae49775.root, "", 13, _n06f55647211.ink, UDim2.new(0.5, -180, 0, 8), UDim2.fromOffset(360, 54))
_n6520ae49775.toast.BackgroundColor3, _n6520ae49775.toast.BackgroundTransparency, _n6520ae49775.toast.Visible = _n06f55647211.panel, 0.05, false
_n6520ae49775.toast.TextXAlignment = Enum.TextXAlignment.Center
_n6520ae49775.toast.ZIndex = 10
_n61cb8008a6f(_n6520ae49775.toast, 12); _n11c7e50164a(_n6520ae49775.toast, _n06f55647211.mint)
_n6520ae49775.hud = _ncd52347aa93(_n6520ae49775.root, UDim2.fromOffset(340, 65), UDim2.new(0.5, -170, 1, -81))
_n6520ae49775.hud.Visible = false
_n6520ae49775.hudText = _n3c3b92bebac(_n6520ae49775.hud, "", 12, _n06f55647211.ink, UDim2.fromOffset(12, 7), UDim2.new(1, -73, 1, -14))
_n836aceee785(_n6520ae49775.hud, "\083\084\079\080", UDim2.new(1, -62, 0, 12), UDim2.fromOffset(53, 40), function()
_ne31c6f549ea.stop("\083\116\111\112\112\101\100\032\102\114\111\109\032\072\085\068"); _ne31c6f549ea.setSpeedEnabled(false)
end, _n06f55647211.red)
local _ne6aa132f89b = _ned48510ce93(_n6520ae49775.pages.Farm)
_n6520ae49775.hero = _ncd52347aa93(_ne6aa132f89b, UDim2.new(1, -8, 0, 174))
_n3c3b92bebac(_n6520ae49775.hero, "\089\079\085\082\032\078\069\088\084\032\070\073\078\068", 10, _n06f55647211.mint, UDim2.fromOffset(18, 12))
_n6520ae49775.heroImage = _n87f97b61fb7("\073\109\097\103\101\076\097\098\101\108", _n6520ae49775.hero, {BackgroundTransparency = 1, Position = UDim2.fromOffset(14, 38), Size = UDim2.fromOffset(94, 94), ScaleType = Enum.ScaleType.Fit})
_n6520ae49775.heroName = _n3c3b92bebac(_n6520ae49775.hero, "\082\101\097\100\121\032\116\111\032\101\120\112\108\111\114\101", 21, _n06f55647211.ink, UDim2.fromOffset(119, 38), UDim2.new(1, -135, 0, 51))
_n6520ae49775.heroName.Font = Enum.Font.GothamBold
_n6520ae49775.heroDetails = _n3c3b92bebac(_n6520ae49775.hero, "\083\101\108\101\099\116\032\097\032\109\111\100\101\032\098\101\108\111\119", 12, _n06f55647211.muted, UDim2.fromOffset(119, 94), UDim2.new(1, -135, 0, 44))
_n6520ae49775.progressLabel = _n3c3b92bebac(_n6520ae49775.hero, "\073\068\076\069", 10, _n06f55647211.muted, UDim2.fromOffset(18, 143), UDim2.new(1, -36, 0, 17))
local _nf9ce9648758 = _n87f97b61fb7("\070\114\097\109\101", _n6520ae49775.hero, {Position = UDim2.new(0, 18, 1, -9), Size = UDim2.new(1, -36, 0, 3), BackgroundColor3 = _n06f55647211.edge, BorderSizePixel = 0})
_n6520ae49775.progress = _n87f97b61fb7("\070\114\097\109\101", _nf9ce9648758, {Size = UDim2.fromScale(0, 1), BackgroundColor3 = _n06f55647211.mint, BorderSizePixel = 0})
_n6520ae49775.stats = _ncd52347aa93(_ne6aa132f89b, UDim2.new(1, -8, 0, 76), UDim2.fromOffset(0, 186))
_n6520ae49775.statLabels = {}
for _na095afd0c75, _n93a51b96ebb in ipairs({"\082\069\087\065\082\068\083", "\070\065\073\076\069\068", "\083\080\069\069\068"}) do
_n3c3b92bebac(_n6520ae49775.stats, _n93a51b96ebb, 10, _n06f55647211.muted, UDim2.new((_na095afd0c75 - 1) / 3, 14, 0, 10), UDim2.new(1 / 3, -18, 0, 16))
_n6520ae49775.statLabels[_na095afd0c75] = _n3c3b92bebac(_n6520ae49775.stats, "\045\045", 24, _na095afd0c75 == 2 and _n06f55647211.gold or _n06f55647211.mint,
UDim2.new((_na095afd0c75 - 1) / 3, 14, 0, 29), UDim2.new(1 / 3, -18, 0, 33))
_n6520ae49775.statLabels[_na095afd0c75].Font = Enum.Font.GothamBold
end
_n6520ae49775.modeButtons = {}
local _ne95ae604157 = {{"\073\110\115\116\097\110\116\032\083\116\101\097\108", "\079\110\101\032\105\109\109\101\100\105\097\116\101\032\112\105\099\107\117\112\032\114\101\113\117\101\115\116", _n06f55647211.gold},
{"\083\116\101\097\108\032\069\118\101\114\121\116\104\105\110\103", "\067\111\108\108\101\099\116\032\109\097\116\099\104\105\110\103\032\101\103\103\115\032\105\110\032\097\032\108\111\111\112", _n06f55647211.mint},
{"\065\117\116\111\032\069\118\101\110\116", "\067\097\112\116\117\114\101\084\104\101\069\103\103\032\111\098\106\101\099\116\105\118\101\115", Color3.fromRGB(190, 187, 244)}}
for _n0bdaf6cc2ed, _nae3bdacaf43 in ipairs(_ne95ae604157) do
local _n1eee10e6d16 = _n836aceee785(_ne6aa132f89b, "", UDim2.fromOffset(0, 276 + (_n0bdaf6cc2ed - 1) * 68), UDim2.new(1, -8, 0, 58), function() _ne31c6f549ea.start(_nae3bdacaf43[1]) end)
_n3c3b92bebac(_n1eee10e6d16, string.format("\048\037\100", _n0bdaf6cc2ed), 17, _nae3bdacaf43[3], UDim2.fromOffset(16, 12), UDim2.fromOffset(36, 30)).Font = Enum.Font.GothamBold
_n3c3b92bebac(_n1eee10e6d16, _nae3bdacaf43[1], 15, _n06f55647211.ink, UDim2.fromOffset(60, 7), UDim2.new(1, -94, 0, 23)).Font = Enum.Font.GothamBold
_n3c3b92bebac(_n1eee10e6d16, _nae3bdacaf43[2], 11, _n06f55647211.muted, UDim2.fromOffset(60, 31), UDim2.new(1, -76, 0, 18))
_n3c3b92bebac(_n1eee10e6d16, "\062", 20, _nae3bdacaf43[3], UDim2.new(1, -30, 0, 13), UDim2.fromOffset(23, 30))
_n6520ae49775.modeButtons[_nae3bdacaf43[1]] = _n1eee10e6d16
end
_n6520ae49775.stopAll = _n836aceee785(_ne6aa132f89b, "\083\084\079\080\032\065\076\076", UDim2.fromOffset(0, 483), UDim2.new(0.5, -8, 0, 44), function()
_ne31c6f549ea.stop("\083\116\111\112\112\101\100\032\098\121\032\121\111\117"); _ne31c6f549ea.setSpeedEnabled(false)
end, _n06f55647211.red)
_n836aceee785(_ne6aa132f89b, "\068\082\079\080\032\069\071\071", UDim2.new(0.5, 0, 0, 483), UDim2.new(0.5, -8, 0, 44), _ne31c6f549ea.drop)
_n6520ae49775.carryPanel = _ncd52347aa93(_ne6aa132f89b, UDim2.new(1, -8, 0, 107), UDim2.fromOffset(0, 540))
_n3c3b92bebac(_n6520ae49775.carryPanel, "\067\065\082\082\089\032\077\079\078\073\084\079\082", 10, _n06f55647211.mint, UDim2.fromOffset(14, 10))
_n6520ae49775.carryText = _n3c3b92bebac(_n6520ae49775.carryPanel, "\078\111\116\032\099\097\114\114\121\105\110\103", 13, _n06f55647211.ink, UDim2.fromOffset(14, 34), UDim2.new(1, -28, 0, 60))
_n3c3b92bebac(_ne6aa132f89b, "\082\101\119\097\114\100\115\032\099\111\117\110\116\032\115\101\114\118\101\114\032\110\111\116\105\102\105\099\097\116\105\111\110\115\046\032\080\105\099\107\117\112\032\112\114\111\103\114\101\115\115\032\102\111\108\108\111\119\115\032\116\104\101\032\110\111\114\109\097\108\032\104\111\108\100\032\116\105\109\101\059\032\105\116\032\105\115\032\110\111\116\032\097\032\115\101\114\118\101\114\032\112\114\111\103\114\101\115\115\032\114\101\097\100\111\117\116\046", 11, _n06f55647211.muted,
UDim2.fromOffset(0, 660), UDim2.new(1, -12, 0, 50))
_n6520ae49775.catalogs = {}
for _nf0d5e2c513b, _n62b29a4a556 in ipairs({"\069\103\103\115", "\079\119\110\101\100", "\080\101\116\115"}) do
local _n3fffcec3d80 = _n6520ae49775.pages[_n62b29a4a556]
local _naff61b83038 = _n87f97b61fb7("\084\101\120\116\066\111\120", _n3fffcec3d80, {Position = UDim2.new(), Size = UDim2.new(1, 0, 0, 43),
BackgroundColor3 = _n06f55647211.panel, TextColor3 = _n06f55647211.ink, PlaceholderText = "\083\101\097\114\099\104\032\110\097\109\101\044\032\114\097\114\105\116\121\044\032\109\117\116\097\116\105\111\110\046\046\046",
PlaceholderColor3 = _n06f55647211.muted, Text = "", ClearTextOnFocus = false, TextSize = 13, Font = Enum.Font.Gotham})
_n61cb8008a6f(_naff61b83038, 10); _n11c7e50164a(_naff61b83038)
local _nca1908dda77 = _n836aceee785(_n3fffcec3d80, "\070\105\108\116\101\114\058\032\065\108\108", UDim2.fromOffset(0, 53), UDim2.new(0.5, -5, 0, 39), function()
local _n3dcf519f49e = {"\065\108\108", "\082\097\114\101", "\077\117\116\097\116\101\100", "\065\118\097\105\108\097\098\108\101"}
_ne31c6f549ea.filter = _n3dcf519f49e[(table.find(_n3dcf519f49e, _ne31c6f549ea.filter) or 1) % #_n3dcf519f49e + 1]
_ne31c6f549ea.page = 1; _ne31c6f549ea.dirty = true
end)
local _nc1b07dec800 = _n836aceee785(_n3fffcec3d80, "\083\111\114\116\058\032\078\101\097\114\101\115\116", UDim2.new(0.5, 5, 0, 53), UDim2.new(0.5, -5, 0, 39), function()
local _n5ac5d8ab6b6 = {"\078\101\097\114\101\115\116", "\072\101\097\118\105\101\115\116", "\072\105\103\104\101\115\116\032\118\097\108\117\101", "\078\097\109\101"}
_ne31c6f549ea.sort = _n5ac5d8ab6b6[(table.find(_n5ac5d8ab6b6, _ne31c6f549ea.sort) or 1) % #_n5ac5d8ab6b6 + 1]
_ne31c6f549ea.page = 1; _ne31c6f549ea.dirty = true
end)
local _n821c6833297 = _ned48510ce93(_n3fffcec3d80)
_n821c6833297.Position, _n821c6833297.Size = UDim2.fromOffset(0, 103), UDim2.new(1, 0, 1, -147)
local _n5b589ced975 = _n87f97b61fb7("\085\073\071\114\105\100\076\097\121\111\117\116", _n821c6833297, {CellPadding = UDim2.fromOffset(10, 10), CellSize = UDim2.fromOffset(220, 216), SortOrder = Enum.SortOrder.LayoutOrder})
local _n0facc914d32 = _n3c3b92bebac(_n3fffcec3d80, "", 11, _n06f55647211.muted, UDim2.new(0, 0, 1, -37), UDim2.new(1, -90, 0, 31))
_n836aceee785(_n3fffcec3d80, "\060", UDim2.new(1, -82, 1, -39), UDim2.fromOffset(36, 34), function() _ne31c6f549ea.page = math.max(1, (_ne31c6f549ea.page or 1) - 1); _ne31c6f549ea.dirty = true end)
_n836aceee785(_n3fffcec3d80, "\062", UDim2.new(1, -39, 1, -39), UDim2.fromOffset(36, 34), function() _ne31c6f549ea.page = (_ne31c6f549ea.page or 1) + 1; _ne31c6f549ea.dirty = true end)
local _n84934d3be69 = _n3c3b92bebac(_n3fffcec3d80, "\076\111\097\100\105\110\103\032\101\103\103\115\046\046\046", 14, _n06f55647211.muted, UDim2.fromOffset(12, 114), UDim2.new(1, -24, 0, 90))
_n6520ae49775.catalogs[_n62b29a4a556] = {search = _naff61b83038, filter = _nca1908dda77, sort = _nc1b07dec800, list = _n821c6833297, grid = _n5b589ced975, count = _n0facc914d32, empty = _n84934d3be69}
_naff61b83038:GetPropertyChangedSignal("\084\101\120\116"):Connect(function() _ne31c6f549ea.query = _naff61b83038.Text; _ne31c6f549ea.page = 1; _ne31c6f549ea.dirty = true end)
end
_n6520ae49775.alertsList = _ned48510ce93(_n6520ae49775.pages.Alerts)
_n87f97b61fb7("\085\073\076\105\115\116\076\097\121\111\117\116", _n6520ae49775.alertsList, {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder})
local _nb38b32782ff = _ned48510ce93(_n6520ae49775.pages.Settings)
local _nf47600c7812 = _ncd52347aa93(_nb38b32782ff, UDim2.new(1, -8, 0, 262))
_n3c3b92bebac(_nf47600c7812, "\067\085\083\084\079\077\032\083\080\069\069\068", 14, _n06f55647211.mint, UDim2.fromOffset(14, 10), UDim2.new(1, -145, 0, 30)).Font = Enum.Font.GothamBold
_n6520ae49775.speedToggle = _n836aceee785(_nf47600c7812, "\079\070\070", UDim2.new(1, -105, 0, 10), UDim2.fromOffset(91, 42), function()
_ne31c6f549ea.setSpeedEnabled(not _ne31c6f549ea.speedEnabled)
end)
_n3c3b92bebac(_nf47600c7812, "\083\112\101\101\100\032\032\047\032\032\115\116\117\100\115\032\112\101\114\032\115\101\099\111\110\100", 11, _n06f55647211.muted, UDim2.fromOffset(14, 54), UDim2.new(1, -160, 0, 36))
_n6520ae49775.speedInput = _n87f97b61fb7("\084\101\120\116\066\111\120", _nf47600c7812, {Position = UDim2.new(1, -141, 0, 58), Size = UDim2.fromOffset(127, 42),
BackgroundColor3 = _n06f55647211.bg, TextColor3 = _n06f55647211.mint, Font = Enum.Font.GothamBold, TextSize = 19,
Text = tostring(_ne31c6f549ea.speedValue), ClearTextOnFocus = false})
_n61cb8008a6f(_n6520ae49775.speedInput, 9); _n11c7e50164a(_n6520ae49775.speedInput)
_n6520ae49775.speedInput.FocusLost:Connect(function()
if not _ne31c6f549ea.setSpeed(_n6520ae49775.speedInput.Text) then _ne31c6f549ea.notify("\069\110\116\101\114\032\097\032\115\112\101\101\100\032\102\114\111\109\032\049\032\116\111\032\051\048\048", "\101\114\114\111\114") end
_n6520ae49775.speedInput.Text = tostring(_ne31c6f549ea.speedValue)
end)
_n6520ae49775.speedSlider = _n87f97b61fb7("\084\101\120\116\066\117\116\116\111\110", _nf47600c7812, {Text = "", AutoButtonColor = false, BackgroundTransparency = 1,
Position = UDim2.fromOffset(20, 108), Size = UDim2.new(1, -40, 0, 40), Active = true})
local _ne5481e40258 = _n87f97b61fb7("\070\114\097\109\101", _n6520ae49775.speedSlider, {Position = UDim2.new(0, 0, 0.5, -3), Size = UDim2.new(1, 0, 0, 6),
BackgroundColor3 = _n06f55647211.edge, BorderSizePixel = 0})
_n61cb8008a6f(_ne5481e40258, 3)
_n6520ae49775.speedFill = _n87f97b61fb7("\070\114\097\109\101", _ne5481e40258, {Size = UDim2.fromScale(0, 1), BackgroundColor3 = _n06f55647211.mint, BorderSizePixel = 0})
_n61cb8008a6f(_n6520ae49775.speedFill, 3)
_n6520ae49775.speedKnob = _n87f97b61fb7("\070\114\097\109\101", _n6520ae49775.speedSlider, {Size = UDim2.fromOffset(20, 20), Position = UDim2.new(0, -10, 0.5, -10),
BackgroundColor3 = _n06f55647211.ink, BorderSizePixel = 0})
_n61cb8008a6f(_n6520ae49775.speedKnob, 10)
local _n444abf793e1
local function _n8f064f348e0(_n39c2d9fe1e1)
local _n3cc6a6121ad = _n6520ae49775.speedSlider.AbsoluteSize.X
if _n3cc6a6121ad <= 0 then return end
local _n55fc9805a36 = math.clamp((_n39c2d9fe1e1.Position.X - _n6520ae49775.speedSlider.AbsolutePosition.X) / _n3cc6a6121ad, 0, 1)
_ne31c6f549ea.setSpeed(_ne31c6f549ea.speedMinimum + _n55fc9805a36 * (_ne31c6f549ea.speedMaximum - _ne31c6f549ea.speedMinimum))
_n6520ae49775.speedInput.Text = tostring(_ne31c6f549ea.speedValue)
end
_ne31c6f549ea.connect(_n6520ae49775.speedSlider.InputBegan, function(_n9359d758251)
if _n9359d758251.UserInputType == Enum.UserInputType.MouseButton1 or _n9359d758251.UserInputType == Enum.UserInputType.Touch then
_n444abf793e1 = {touch = _n9359d758251.UserInputType == Enum.UserInputType.Touch and _n9359d758251 or nil}
_n8f064f348e0(_n9359d758251)
end
end)
_ne31c6f549ea.connect(_n571b1bd5f27.InputChanged, function(_n3960d9d8c02)
if _n444abf793e1 and ((_n444abf793e1.touch and _n444abf793e1.touch == _n3960d9d8c02)
or (not _n444abf793e1.touch and _n3960d9d8c02.UserInputType == Enum.UserInputType.MouseMovement)) then _n8f064f348e0(_n3960d9d8c02) end
end)
_ne31c6f549ea.connect(_n571b1bd5f27.InputEnded, function(_n0598853b676)
if _n444abf793e1 and (_n0598853b676 == _n444abf793e1.touch or _n0598853b676.UserInputType == Enum.UserInputType.MouseButton1) then _n444abf793e1 = nil end
end)
_n6520ae49775.speedPresets = {}
for _ne8d1242adbf, _n8f46351e7f7 in ipairs({{"\078\111\114\109\097\108", nil}, {"\070\097\115\116", 50}, {"\086\101\114\121\032\070\097\115\116", 100}, {"\067\117\115\116\111\109", nil}}) do
_n6520ae49775.speedPresets[_n8f46351e7f7[1]] = _n836aceee785(_nf47600c7812, _n8f46351e7f7[1], UDim2.new((_ne8d1242adbf - 1) / 4, 8, 0, 153), UDim2.new(0.25, -12, 0, 42), function()
if _n8f46351e7f7[1] == "\078\111\114\109\097\108" then _ne31c6f549ea.setSpeedEnabled(false)
else
if _n8f46351e7f7[2] then _ne31c6f549ea.setSpeed(_n8f46351e7f7[2]) end
_ne31c6f549ea.setSpeedEnabled(true)
end
end)
_n6520ae49775.speedPresets[_n8f46351e7f7[1]].TextSize = 11
end
_n6520ae49775.speedReset = _n836aceee785(_nf47600c7812, "\082\069\083\069\084", UDim2.new(1, -105, 0, 207), UDim2.fromOffset(91, 42), function()
_ne31c6f549ea.setSpeedEnabled(false); _ne31c6f549ea.setSpeed(50); _n6520ae49775.speedInput.Text = "\053\048"
end)
_n3c3b92bebac(_nf47600c7812, "\067\108\105\101\110\116\032\109\111\118\101\109\101\110\116\032\111\110\108\121\046\032\083\101\114\118\101\114\032\109\097\121\032\108\105\109\105\116\032\115\112\101\101\100\046\010\088\032\047\032\085\110\108\111\097\100\032\114\101\115\116\111\114\101\115\032\103\097\109\101\032\115\112\101\101\100\046", 10, _n06f55647211.muted,
UDim2.fromOffset(14, 204), UDim2.new(1, -132, 0, 47))
local _n7e1475f1f13 = _ncd52347aa93(_nb38b32782ff, UDim2.new(1, -8, 0, 142), UDim2.fromOffset(0, 274))
_n3c3b92bebac(_n7e1475f1f13, "\077\079\078\083\084\069\082\032\080\082\079\084\069\067\084\073\079\078", 13, _n06f55647211.gold, UDim2.fromOffset(14, 8), UDim2.new(1, -28, 0, 28)).Font = Enum.Font.GothamBold
_n3c3b92bebac(_n7e1475f1f13, "\078\111\116\032\099\111\110\110\101\099\116\101\100\032\116\111\032\097\032\115\101\114\118\101\114\032\112\114\111\116\101\099\116\105\111\110\032\115\121\115\116\101\109", 11, _n06f55647211.red, UDim2.fromOffset(14, 38), UDim2.new(1, -28, 0, 27))
_n3c3b92bebac(_n7e1475f1f13, "\068\097\109\097\103\101\044\032\116\097\114\103\101\116\105\110\103\044\032\107\110\111\099\107\098\097\099\107\044\032\115\116\117\110\032\097\110\100\032\115\116\097\116\117\115\032\105\109\109\117\110\105\116\121\032\099\097\110\110\111\116\032\098\101\032\099\111\110\102\105\114\109\101\100\032\102\114\111\109\032\116\104\105\115\032\099\108\105\101\110\116\046\032\067\117\115\116\111\109\032\083\112\101\101\100\032\100\111\101\115\032\110\111\116\032\101\110\097\098\108\101\032\105\109\109\117\110\105\116\121\046",
11, _n06f55647211.muted, UDim2.fromOffset(14, 70), UDim2.new(1, -28, 0, 59))
_n6520ae49775.settingY = 429
local function _n780e893e2e4(_n1d38d146fea, _n35a18ddbb08, _n918db48581c, _nec7b7bb37d6)
local _n8ec860d0bfc = _n6520ae49775.settingY
_n6520ae49775.settingY += 91
local _n9a63e1c5c2d = _ncd52347aa93(_nb38b32782ff, UDim2.new(1, -8, 0, 81), UDim2.fromOffset(0, _n8ec860d0bfc))
_n3c3b92bebac(_n9a63e1c5c2d, _n1d38d146fea, 13, _n06f55647211.ink, UDim2.fromOffset(13, 8), UDim2.new(1, -140, 0, 27)).Font = Enum.Font.GothamBold
_n3c3b92bebac(_n9a63e1c5c2d, _n35a18ddbb08, 11, _n06f55647211.muted, UDim2.fromOffset(13, 38), UDim2.new(1, -140, 0, 35))
return _n836aceee785(_n9a63e1c5c2d, _n918db48581c, UDim2.new(1, -119, 0, 18), UDim2.fromOffset(106, 44), _nec7b7bb37d6)
end
_n6520ae49775.flightToggle = _n780e893e2e4("\070\108\121\032\099\111\108\108\101\099\116\105\111\110", "\065\115\099\101\110\100\044\032\116\114\097\118\101\108\044\032\100\101\115\099\101\110\100\032\116\111\032\099\111\108\108\101\099\116", "\079\070\070", function()
_ne31c6f549ea.stop("\070\108\105\103\104\116\032\109\111\100\101\032\099\104\097\110\103\101\100")
_ne31c6f549ea.flightEnabled = not _ne31c6f549ea.flightEnabled
_n6520ae49775.flightToggle.Text = _ne31c6f549ea.flightEnabled and "\079\078" or "\079\070\070"
end)
_n6520ae49775.afkToggle = _n780e893e2e4("\065\110\116\105\045\065\070\075", "\083\101\110\100\032\105\100\108\101\032\105\110\112\117\116\032\105\102\032\115\117\112\112\111\114\116\101\100", "\079\070\070", function()
_ne31c6f549ea.antiAfk = not _ne31c6f549ea.antiAfk
_ne31c6f549ea.antiAfkStatus = _ne31c6f549ea.antiAfk and "\087\097\105\116\105\110\103\032\102\111\114\032\105\100\108\101\032\101\118\101\110\116" or "\079\070\070"
_n6520ae49775.afkToggle.Text = _ne31c6f549ea.antiAfk and "\079\078" or "\079\070\070"
end)
_n6520ae49775.priority = _n780e893e2e4("\084\097\114\103\101\116\032\112\114\105\111\114\105\116\121", "\085\115\101\100\032\098\121\032\097\108\108\032\102\097\114\109\032\109\111\100\101\115", _ne31c6f549ea.selection, function()
local _n2c754668688 = {"\078\101\097\114\101\115\116", "\072\101\097\118\105\101\115\116", "\072\105\103\104\101\115\116\032\118\097\108\117\101"}
_ne31c6f549ea.selection = _n2c754668688[(table.find(_n2c754668688, _ne31c6f549ea.selection) or 1) % #_n2c754668688 + 1]
_n6520ae49775.priority.Text = _ne31c6f549ea.selection
end)
_n6520ae49775.onlyRare = _n780e893e2e4("\082\097\114\101\032\101\103\103\115\032\111\110\108\121", "\083\107\105\112\032\067\111\109\109\111\110\032\097\110\100\032\085\110\099\111\109\109\111\110", "\079\070\070", function()
_ne31c6f549ea.rareOnly = not _ne31c6f549ea.rareOnly; _n6520ae49775.onlyRare.Text = _ne31c6f549ea.rareOnly and "\079\078" or "\079\070\070"
end)
local function _nfb8a20ac7ee(_n257a459492e, _n849101b3c4a, _n5bec254be70)
local _n767f4576bc7 = _n780e893e2e4(_n257a459492e, _n849101b3c4a, "", function() end)
_n767f4576bc7.Visible = false
local _n45a26e2bd49 = _n87f97b61fb7("\084\101\120\116\066\111\120", _n767f4576bc7.Parent, {Size = _n767f4576bc7.Size, Position = _n767f4576bc7.Position,
BackgroundColor3 = _n06f55647211.bg, TextColor3 = _n06f55647211.mint, Font = Enum.Font.GothamBold,
TextSize = 14, Text = tostring(_ne31c6f549ea[_n5bec254be70]), ClearTextOnFocus = false})
_n61cb8008a6f(_n45a26e2bd49, 9); _n11c7e50164a(_n45a26e2bd49)
_n45a26e2bd49.FocusLost:Connect(function()
local _nfb7652b861e = tonumber(_n45a26e2bd49.Text)
if _nfb7652b861e and _nfb7652b861e == _nfb7652b861e and _nfb7652b861e >= 0 and _nfb7652b861e < 1e15 then _ne31c6f549ea[_n5bec254be70] = _nfb7652b861e end
_n45a26e2bd49.Text = tostring(_ne31c6f549ea[_n5bec254be70])
end)
end
_nfb8a20ac7ee("\077\105\110\105\109\117\109\032\119\101\105\103\104\116", "\070\097\114\109\032\102\105\108\116\101\114\032\105\110\032\107\103\059\032\048\032\061\032\097\110\121", "\109\105\110\087\101\105\103\104\116")
_nfb8a20ac7ee("\070\108\105\103\104\116\032\104\101\105\103\104\116", "\067\108\097\109\112\101\100\032\116\111\032\056\045\049\048\048\032\115\116\117\100\115", "\102\108\105\103\104\116\072\101\105\103\104\116")
_nfb8a20ac7ee("\077\105\110\105\109\117\109\032\118\097\108\117\101", "\070\097\114\109\032\102\105\108\116\101\114\059\032\048\032\061\032\097\110\121", "\109\105\110\086\097\108\117\101")
_nfb8a20ac7ee("\072\101\097\118\121\032\101\103\103\032\097\108\101\114\116", "\078\111\116\105\102\121\032\097\098\111\118\101\032\116\104\105\115\032\107\103\032\116\104\114\101\115\104\111\108\100", "\104\101\097\118\121\065\108\101\114\116")
_nfb8a20ac7ee("\072\105\103\104\032\118\097\108\117\101\032\097\108\101\114\116", "\078\111\116\105\102\121\032\097\098\111\118\101\032\116\104\105\115\032\118\097\108\117\101", "\118\097\108\117\101\065\108\101\114\116")
_n6520ae49775.alertToggle = _n780e893e2e4("\078\111\116\105\102\105\099\097\116\105\111\110\115", "\078\101\119\032\101\103\103\115\032\097\110\100\032\115\101\114\118\101\114\032\114\101\115\117\108\116\115", "\079\078", function()
_ne31c6f549ea.alerts = not _ne31c6f549ea.alerts; _n6520ae49775.alertToggle.Text = _ne31c6f549ea.alerts and "\079\078" or "\079\070\070"
end)
_n6520ae49775.motionToggle = _n780e893e2e4("\077\111\116\105\111\110", "\083\104\111\114\116\032\104\111\118\101\114\032\116\114\097\110\115\105\116\105\111\110\115", "\079\078", function()
_ne31c6f549ea.motion = not _ne31c6f549ea.motion; _n6520ae49775.motionToggle.Text = _ne31c6f549ea.motion and "\079\078" or "\079\070\070"
end)
_n6520ae49775.blurToggle = _n780e893e2e4("\066\097\099\107\103\114\111\117\110\100\032\098\108\117\114", "\079\112\116\105\111\110\097\108\059\032\111\102\102\032\119\104\105\108\101\032\102\097\114\109\105\110\103", "\079\070\070", function()
_ne31c6f549ea.blurEnabled = not _ne31c6f549ea.blurEnabled; _n6520ae49775.blurToggle.Text = _ne31c6f549ea.blurEnabled and "\079\078" or "\079\070\070"
end)
_n6520ae49775.pin = _n780e893e2e4("\080\105\110\110\101\100\032\116\097\114\103\101\116", "\083\101\108\101\099\116\032\097\032\099\097\114\100\032\116\111\032\112\105\110\032\111\110\101\032\101\103\103", "\067\076\069\065\082", function() _ne31c6f549ea.targetOverride = nil; _ne31c6f549ea.notify("\084\097\114\103\101\116\032\112\105\110\032\099\108\101\097\114\101\100") end)
_n780e893e2e4("\087\105\110\100\111\119\032\112\111\115\105\116\105\111\110", "\067\101\110\116\101\114\032\097\110\100\032\102\105\116\032\116\111\032\115\099\114\101\101\110", "\082\069\083\069\084", function() _n6520ae49775.userSize = nil; _ne31c6f549ea.layout(true) end)
_n780e893e2e4("\082\101\109\111\118\101\032\099\111\109\112\097\110\105\111\110", "\083\116\111\112\032\097\110\100\032\100\101\115\116\114\111\121\032\116\104\105\115\032\085\073", "\085\078\076\079\065\068", function() _n6520ae49775.gui:Destroy() end)
_n3c3b92bebac(_nb38b32782ff, "\076\105\118\101\032\102\101\097\116\117\114\101\115\058\032\101\103\103\032\119\101\105\103\104\116\044\032\115\101\108\108\032\101\115\116\105\109\097\116\101\044\032\114\097\114\105\116\121\044\032\115\105\122\101\044\032\109\117\116\097\116\105\111\110\115\044\032\105\110\118\101\110\116\111\114\121\044\032\112\105\099\107\117\112\032\097\110\100\032\100\114\111\112\046\010\010\077\117\108\116\105\045\099\097\114\114\121\044\032\112\101\116\032\115\116\114\101\110\103\116\104\044\032\115\116\097\109\105\110\097\044\032\117\112\103\114\097\100\101\115\032\097\110\100\032\110\101\119\032\101\118\101\110\116\032\109\101\099\104\097\110\105\099\115\032\114\101\113\117\105\114\101\032\103\097\109\101\045\115\101\114\118\101\114\032\115\117\112\112\111\114\116\032\097\110\100\032\097\114\101\032\110\111\116\032\109\111\100\105\102\105\101\100\032\104\101\114\101\046\032\077\105\115\115\105\110\103\032\118\097\108\117\101\115\032\115\116\097\121\032\045\045\046",
11, _n06f55647211.muted, UDim2.fromOffset(0, _n6520ae49775.settingY), UDim2.new(1, -12, 0, 132))
local _n4f1081713d0 = _n6520ae49775.pages.Users
_n6520ae49775.userTitle = _n3c3b92bebac(_n4f1081713d0, _nc921dac722b.DisplayName .. "\032\032\040\064" .. _nc921dac722b.Name .. "\041", 16, _n06f55647211.mint, UDim2.new(), UDim2.new(1, 0, 0, 35))
_n6520ae49775.userStatus = _n3c3b92bebac(_n4f1081713d0, "", 12, _n06f55647211.muted, UDim2.fromOffset(0, 40), UDim2.new(1, 0, 0, 70))
_n6520ae49775.sharePresence = _n836aceee785(_n4f1081713d0, "\083\072\065\082\069\032\077\089\032\078\065\077\069\058\032\079\070\070", UDim2.fromOffset(0, 115), UDim2.new(1, 0, 0, 44), function()
_ne31c6f549ea.setPresence(not _ne31c6f549ea.presenceEnabled)
end)
_n6520ae49775.usersList = _ned48510ce93(_n4f1081713d0)
_n6520ae49775.usersList.Position, _n6520ae49775.usersList.Size = UDim2.fromOffset(0, 171), UDim2.new(1, 0, 1, -171)
_n87f97b61fb7("\085\073\076\105\115\116\076\097\121\111\117\116", _n6520ae49775.usersList, {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder})
function _ne31c6f549ea.show()
_ne31c6f549ea.hidden, _ne31c6f549ea.minimized = false, false
_n6520ae49775.window.Visible, _n6520ae49775.launcher.Visible = true, false
_ne31c6f549ea.layout()
end
function _ne31c6f549ea.switchTab(_n6f03dcf27a3)
_ne31c6f549ea.tab, _ne31c6f549ea.page, _ne31c6f549ea.dirty, _ne31c6f549ea.logDirty = _n6f03dcf27a3, 1, true, true
for _nf5fb17d9ed8, _nf8179db128a in pairs(_n6520ae49775.pages) do _nf8179db128a.Visible = _nf5fb17d9ed8 == _n6f03dcf27a3 end
for _nea875447645, _nbc0f32b488c in pairs(_n6520ae49775.tabButtons) do
_nbc0f32b488c.BackgroundColor3 = _nea875447645 == _n6f03dcf27a3 and _n06f55647211.mint or _n06f55647211.panel
_nbc0f32b488c.TextColor3 = _nea875447645 == _n6f03dcf27a3 and _n06f55647211.bg or _n06f55647211.muted
end
if _n6520ae49775.catalogs[_n6f03dcf27a3] then _n6520ae49775.catalogs[_n6f03dcf27a3].search.Text = _ne31c6f549ea.query end
end
function _ne31c6f549ea.layout(_n206c9c6558d)
local _n67c909bbd90 = _n6520ae49775.root.AbsoluteSize
if _n67c909bbd90.X < 1 or _n67c909bbd90.Y < 1 then return end
local _nb9e3b4d55ab = math.min(_n6520ae49775.userSize and _n6520ae49775.userSize.X or (_n6520ae49775.large and 1010 or 790), _n67c909bbd90.X - 16)
local _nc45e199aae6 = math.min(_n6520ae49775.userSize and _n6520ae49775.userSize.Y or 650, _n67c909bbd90.Y - 16)
_nb9e3b4d55ab, _nc45e199aae6 = math.max(280, _nb9e3b4d55ab), math.max(230, _nc45e199aae6)
_n6520ae49775.logicalSize = Vector2.new(_nb9e3b4d55ab, _nc45e199aae6)
_n6520ae49775.window.Size = UDim2.fromOffset(_nb9e3b4d55ab, _ne31c6f549ea.minimized and 60 or _nc45e199aae6)
if _n206c9c6558d then _n6520ae49775.window.Position = UDim2.fromOffset(math.max(8, (_n67c909bbd90.X - _nb9e3b4d55ab) / 2), math.max(8, (_n67c909bbd90.Y - _nc45e199aae6) / 2)) end
local _ne2d073a0ef1 = _n6520ae49775.window.Position
_n6520ae49775.window.Position = UDim2.fromOffset(math.clamp(_ne2d073a0ef1.X.Offset, 0, math.max(0, _n67c909bbd90.X - _nb9e3b4d55ab)),
math.clamp(_ne2d073a0ef1.Y.Offset, 0, math.max(0, _n67c909bbd90.Y - (_ne31c6f549ea.minimized and 60 or _nc45e199aae6))))
_n6520ae49775.body.Visible, _n6520ae49775.tabs.Visible, _n6520ae49775.footer.Visible, _n6520ae49775.resize.Visible = not _ne31c6f549ea.minimized, not _ne31c6f549ea.minimized, not _ne31c6f549ea.minimized, not _ne31c6f549ea.minimized
_n6520ae49775.titlebar.Size = UDim2.new(1, -144, 0, 59)
local _n08082364644 = math.max(66, (_nb9e3b4d55ab - 28) / #_n6520ae49775.tabNames)
for _n2200fd7ea58, _ncfa68f0aae3 in ipairs(_n6520ae49775.tabNames) do
_n6520ae49775.tabButtons[_ncfa68f0aae3].Position = UDim2.fromOffset((_n2200fd7ea58 - 1) * _n08082364644, 0)
_n6520ae49775.tabButtons[_ncfa68f0aae3].Size = UDim2.fromOffset(_n08082364644 - 4, 40)
end
_n6520ae49775.tabs.CanvasSize = UDim2.fromOffset(_n08082364644 * #_n6520ae49775.tabNames, 0)
_n6520ae49775.toast.Size = UDim2.fromOffset(math.min(360, _n67c909bbd90.X - 20), 54)
_n6520ae49775.toast.Position = UDim2.new(0.5, -_n6520ae49775.toast.Size.X.Offset / 2, 0, 8)
_n6520ae49775.hud.Size = UDim2.fromOffset(math.min(340, _n67c909bbd90.X - 20), 65)
_n6520ae49775.hud.Position = UDim2.new(0.5, -_n6520ae49775.hud.Size.X.Offset / 2, 1, -77)
for _n1f736707968, _n832f026b111 in pairs(_n6520ae49775.catalogs) do
local _ndb354f108a0 = _nb9e3b4d55ab - 41
local _n7fb0a571af3 = math.max(1, math.floor((_ndb354f108a0 + 10) / 230))
_n832f026b111.grid.CellSize = UDim2.fromOffset(math.floor((_ndb354f108a0 - (_n7fb0a571af3 - 1) * 10) / _n7fb0a571af3), 223)
end
_ne31c6f549ea.dirty = true
end
local _n74eefd63b8d
local function _n27645c77a6a(_n01c01c4d13e, _n076695b9fd3)
if _n01c01c4d13e.UserInputType == Enum.UserInputType.MouseButton1 or _n01c01c4d13e.UserInputType == Enum.UserInputType.Touch then
_n74eefd63b8d = {kind = _n076695b9fd3, origin = _n01c01c4d13e.Position, position = _n6520ae49775.window.Position,
size = _n6520ae49775.logicalSize, touch = _n01c01c4d13e.UserInputType == Enum.UserInputType.Touch and _n01c01c4d13e or nil}
end
end
_ne31c6f549ea.connect(_n6520ae49775.titlebar.InputBegan, function(_n623ec8f6ed9) _n27645c77a6a(_n623ec8f6ed9, "\100\114\097\103") end)
_ne31c6f549ea.connect(_n6520ae49775.resize.InputBegan, function(_ne94a48591d3) _n27645c77a6a(_ne94a48591d3, "\114\101\115\105\122\101") end)
_ne31c6f549ea.connect(_n571b1bd5f27.InputChanged, function(_nc8d00e9b962)
if not _n74eefd63b8d then return end
if not ((_n74eefd63b8d.touch and _nc8d00e9b962 == _n74eefd63b8d.touch) or (not _n74eefd63b8d.touch and _nc8d00e9b962.UserInputType == Enum.UserInputType.MouseMovement)) then return end
local _ne20ed3c7b8c = _nc8d00e9b962.Position - _n74eefd63b8d.origin
if _n74eefd63b8d.kind == "\100\114\097\103" then _n6520ae49775.window.Position = UDim2.fromOffset(_n74eefd63b8d.position.X.Offset + _ne20ed3c7b8c.X, _n74eefd63b8d.position.Y.Offset + _ne20ed3c7b8c.Y)
else _n6520ae49775.userSize = Vector2.new(math.max(350, _n74eefd63b8d.size.X + _ne20ed3c7b8c.X), math.max(340, _n74eefd63b8d.size.Y + _ne20ed3c7b8c.Y)) end
_ne31c6f549ea.layout()
end)
_ne31c6f549ea.connect(_n571b1bd5f27.InputEnded, function(_n58b376c06bc)
if _n74eefd63b8d and (_n58b376c06bc == _n74eefd63b8d.touch or _n58b376c06bc.UserInputType == Enum.UserInputType.MouseButton1) then _n74eefd63b8d = nil end
end)
_ne31c6f549ea.connect(_n571b1bd5f27.InputBegan, function(_n6f073799e59, _neb521876b72)
if _neb521876b72 or _n571b1bd5f27:GetFocusedTextBox() then return end
if _n6f073799e59.KeyCode == Enum.KeyCode.RightShift then
if _ne31c6f549ea.hidden then _ne31c6f549ea.show() else _ne31c6f549ea.stop("\087\105\110\100\111\119\032\099\108\111\115\101\100"); _ne31c6f549ea.setSpeedEnabled(false); _ne31c6f549ea.hidden = true; _n6520ae49775.window.Visible = false; _n6520ae49775.launcher.Visible = true end
end
end)
_ne31c6f549ea.connect(_n6520ae49775.root:GetPropertyChangedSignal("\065\098\115\111\108\117\116\101\083\105\122\101"), function() _ne31c6f549ea.layout() end)
_ne31c6f549ea.connect(_n6520ae49775.gui.Destroying, function()
_ne31c6f549ea.alive = false; _ne31c6f549ea.stop("\085\110\108\111\097\100\101\100"); _ne31c6f549ea.setSpeedEnabled(false)
_ne31c6f549ea.antiAfk = false
if _ne31c6f549ea.presenceEnabled then _ne31c6f549ea.setPresence(false) end
_ne31c6f549ea.clearPresenceTags()
for _n9ff03b8e4d0, _nfd938fed598 in ipairs(_ne31c6f549ea.connections) do _nfd938fed598:Disconnect() end
_n6520ae49775.blur:Destroy()
end)
function _ne31c6f549ea.renderCatalog()
local _nd136313ca86 = _n6520ae49775.catalogs[_ne31c6f549ea.tab]
if not _nd136313ca86 then return end
local _n6545e4ab55c = {}
local _na65182c0a64, _n4c4f6338c04 = _ne31c6f549ea.character()
for _n5d0ce1770ee, _n9ad75e1ee73 in ipairs(_ne31c6f549ea.tab == "\080\101\116\115" and _ne31c6f549ea.pets or _ne31c6f549ea.tab == "\079\119\110\101\100" and _ne31c6f549ea.owned or _ne31c6f549ea.rows) do
local _n38dd8b01837 = _n9ad75e1ee73.record
_n9ad75e1ee73.distance = _n4c4f6338c04 and typeof(_n38dd8b01837.BottomCFrame) == "\067\070\114\097\109\101" and (_n38dd8b01837.BottomCFrame.Position - _n4c4f6338c04.Position).Magnitude or nil
local _nce02368810a = string.find(string.lower(_n9ad75e1ee73.name .. "\032" .. _n9ad75e1ee73.rarity .. "\032" .. _n9ad75e1ee73.mutations .. "\032" .. _n9ad75e1ee73.uid), string.lower(_ne31c6f549ea.query), 1, true)
if _nce02368810a and (_ne31c6f549ea.filter == "\065\108\108" or _ne31c6f549ea.filter == "\082\097\114\101" and _n9ad75e1ee73.rare
or _ne31c6f549ea.filter == "\077\117\116\097\116\101\100" and _n9ad75e1ee73.mutations ~= "" or _ne31c6f549ea.filter == "\065\118\097\105\108\097\098\108\101" and (_n9ad75e1ee73.owned or _ne31c6f549ea.valid(_n38dd8b01837, false))) then
table.insert(_n6545e4ab55c, _n9ad75e1ee73)
end
end
table.sort(_n6545e4ab55c, function(_n2a962ea618d, _n8658efc1d44)
local _ne70d068bfa7, _n7a78f1f84f0
if _ne31c6f549ea.sort == "\072\101\097\118\105\101\115\116" then _ne70d068bfa7, _n7a78f1f84f0 = -(_n2a962ea618d.weight or -math.huge), -(_n8658efc1d44.weight or -math.huge)
elseif _ne31c6f549ea.sort == "\072\105\103\104\101\115\116\032\118\097\108\117\101" then _ne70d068bfa7, _n7a78f1f84f0 = -(_n2a962ea618d.value or -math.huge), -(_n8658efc1d44.value or -math.huge)
elseif _ne31c6f549ea.sort == "\078\097\109\101" then _ne70d068bfa7, _n7a78f1f84f0 = _n2a962ea618d.name, _n8658efc1d44.name
else _ne70d068bfa7, _n7a78f1f84f0 = _n2a962ea618d.distance or math.huge, _n8658efc1d44.distance or math.huge end
if _ne70d068bfa7 == _n7a78f1f84f0 then return _n2a962ea618d.uid < _n8658efc1d44.uid end
return _ne70d068bfa7 < _n7a78f1f84f0
end)
local _nce1e1f7ca10 = math.max(1, math.ceil(#_n6545e4ab55c / 30))
_ne31c6f549ea.page = math.clamp(_ne31c6f549ea.page or 1, 1, _nce1e1f7ca10)
_nd136313ca86.filter.Text, _nd136313ca86.sort.Text = "\070\105\108\116\101\114\058\032" .. _ne31c6f549ea.filter, "\083\111\114\116\058\032" .. _ne31c6f549ea.sort
_nd136313ca86.count.Text = string.format("\037\100\032\037\115\032\032\047\032\032\112\097\103\101\032\037\100\032\111\102\032\037\100", #_n6545e4ab55c, _ne31c6f549ea.tab == "\080\101\116\115" and "\112\101\116\115" or "\101\103\103\115", _ne31c6f549ea.page, _nce1e1f7ca10)
_nd136313ca86.empty.Visible = #_n6545e4ab55c == 0
_nd136313ca86.empty.Text = not _ne31c6f549ea.ready and _ne31c6f549ea.status or _ne31c6f549ea.tab == "\080\101\116\115" and "\078\111\032\105\110\118\101\110\116\111\114\121\032\112\101\116\115\032\097\118\097\105\108\097\098\108\101\046\032\080\108\097\099\101\100\032\112\101\116\115\032\097\114\101\032\110\111\116\032\105\110\099\108\117\100\101\100\046"
or "\078\111\032\101\103\103\115\032\109\097\116\099\104\046\032\084\114\121\032\097\110\111\116\104\101\114\032\102\105\108\116\101\114\032\111\114\032\119\097\105\116\032\102\111\114\032\110\101\119\032\115\112\097\119\110\115\046"
for _n06a7b84a544, _n01c33cab4fe in ipairs(_nd136313ca86.list:GetChildren()) do if _n01c33cab4fe:IsA("\071\117\105\079\098\106\101\099\116") then _n01c33cab4fe:Destroy() end end
for _nb2824f945eb = (_ne31c6f549ea.page - 1) * 30 + 1, math.min(#_n6545e4ab55c, _ne31c6f549ea.page * 30) do
local _n2737181aa9d = _n6545e4ab55c[_nb2824f945eb]
local _n70d4c26b0e8 = _n836aceee785(_nd136313ca86.list, "", UDim2.new(), UDim2.fromOffset(220, 223), function()
if _n2737181aa9d.owned then _ne31c6f549ea.notify(_n2737181aa9d.name .. "\032\047\032" .. _n2737181aa9d.uid); return end
_ne31c6f549ea.targetOverride = _n2737181aa9d.uid; _ne31c6f549ea.target = _n2737181aa9d; _ne31c6f549ea.switchTab("\070\097\114\109")
_ne31c6f549ea.notify("\080\105\110\110\101\100\032" .. _n2737181aa9d.name .. "\046\032\083\101\108\101\099\116\032\097\032\109\111\100\101\032\116\111\032\099\111\108\108\101\099\116\046")
end)
_n70d4c26b0e8.LayoutOrder = _nb2824f945eb
_n3c3b92bebac(_n70d4c26b0e8, string.upper(_n2737181aa9d.rarity), 10, _n2737181aa9d.color, UDim2.fromOffset(12, 8), UDim2.new(1, -24, 0, 19)).Font = Enum.Font.GothamBold
_n87f97b61fb7("\073\109\097\103\101\076\097\098\101\108", _n70d4c26b0e8, {Image = _n2737181aa9d.icon, BackgroundTransparency = 1,
Size = UDim2.fromOffset(82, 82), Position = UDim2.new(0.5, -41, 0, 28), ScaleType = Enum.ScaleType.Fit})
_n3c3b92bebac(_n70d4c26b0e8, _n2737181aa9d.name, 14, _n06f55647211.ink, UDim2.fromOffset(12, 110), UDim2.new(1, -24, 0, 36)).Font = Enum.Font.GothamBold
_n3c3b92bebac(_n70d4c26b0e8, _ne31c6f549ea.number(_n2737181aa9d.weight) .. "\032\107\103\032\032\124\032\032" .. _ne31c6f549ea.number(_n2737181aa9d.value), 13, _n06f55647211.mint,
UDim2.fromOffset(12, 149), UDim2.new(1, -24, 0, 20))
_n3c3b92bebac(_n70d4c26b0e8, "\083\101\108\108\032\101\115\116\105\109\097\116\101\032\032\047\032\032\115\099\097\108\101\032" .. _ne31c6f549ea.number(_n2737181aa9d.scale, 2), 10, _n06f55647211.muted,
UDim2.fromOffset(12, 171), UDim2.new(1, -24, 0, 17))
local _nbedb99ab0df = _n2737181aa9d.mutations ~= "" and _n2737181aa9d.mutations or (_n2737181aa9d.owned and "\079\119\110\101\100" or tostring(_n2737181aa9d.record.State))
_n3c3b92bebac(_n70d4c26b0e8, _nbedb99ab0df, 10, _n06f55647211.gold, UDim2.fromOffset(12, 190), UDim2.new(1, -24, 0, 26))
end
end
function _ne31c6f549ea.renderLog()
for _nee0041c052a, _n4ac8950a0b8 in ipairs(_n6520ae49775.alertsList:GetChildren()) do if _n4ac8950a0b8:IsA("\071\117\105\079\098\106\101\099\116") then _n4ac8950a0b8:Destroy() end end
for _n7ba32681d78, _n3887f7130a9 in ipairs(_ne31c6f549ea.log) do
local _n32932b2096d = _ncd52347aa93(_n6520ae49775.alertsList, UDim2.new(1, -8, 0, 83))
_n32932b2096d.LayoutOrder = _n7ba32681d78
_n3c3b92bebac(_n32932b2096d, _n3887f7130a9.at, 10, _n06f55647211.muted, UDim2.fromOffset(13, 8), UDim2.new(1, -26, 0, 17))
_n3c3b92bebac(_n32932b2096d, _n3887f7130a9.text, 12, _n3887f7130a9.kind == "\101\114\114\111\114" and _n06f55647211.red or _n3887f7130a9.kind == "\103\111\108\100" and _n06f55647211.gold or _n06f55647211.ink,
UDim2.fromOffset(13, 29), UDim2.new(1, -26, 0, 46))
end
end
function _ne31c6f549ea.updateUI()
if _ne31c6f549ea.presenceEnabled and os.clock() >= (_ne31c6f549ea.nextPresenceBeat or 0) then
_ne31c6f549ea.nextPresenceBeat = os.clock() + 30
pcall(function() _ne31c6f549ea.presenceRemote:FireServer(true) end)
end
_ne31c6f549ea.applySpeed()
_n6520ae49775.speedToggle.Text = _ne31c6f549ea.speedEnabled and "\079\078" or "\079\070\070"
_n6520ae49775.speedToggle.BackgroundColor3 = _ne31c6f549ea.speedEnabled and _n06f55647211.mint or _n06f55647211.panel
_n6520ae49775.speedToggle.TextColor3 = _ne31c6f549ea.speedEnabled and _n06f55647211.bg or _n06f55647211.ink
if _n571b1bd5f27:GetFocusedTextBox() ~= _n6520ae49775.speedInput then _n6520ae49775.speedInput.Text = tostring(_ne31c6f549ea.speedValue) end
local _n58764a3de54 = (_ne31c6f549ea.speedValue - _ne31c6f549ea.speedMinimum) / (_ne31c6f549ea.speedMaximum - _ne31c6f549ea.speedMinimum)
_n6520ae49775.speedFill.Size = UDim2.fromScale(_n58764a3de54, 1)
_n6520ae49775.speedKnob.Position = UDim2.new(_n58764a3de54, -10, 0.5, -10)
_n6520ae49775.afkToggle.Text = _ne31c6f549ea.antiAfk and "\079\078" or "\079\070\070"
_n6520ae49775.userStatus.Text = _ne31c6f549ea.presenceStatus .. "\010\083\104\097\114\105\110\103\032\105\115\032\111\112\116\045\105\110\059\032\110\097\109\101\115\032\097\114\101\032\118\105\115\105\098\108\101\032\111\110\108\121\032\116\111\032\114\101\103\105\115\116\101\114\101\100\032\117\115\101\114\115\046"
_n6520ae49775.sharePresence.Text = _ne31c6f549ea.presenceEnabled and "\083\072\065\082\069\032\077\089\032\078\065\077\069\058\032\079\078" or "\083\072\065\082\069\032\077\089\032\078\065\077\069\058\032\079\070\070"
if _ne31c6f549ea.presenceDirty then
_ne31c6f549ea.presenceDirty = false
for _n782cd9c73e7, _n6a486ec43c9 in ipairs(_n6520ae49775.usersList:GetChildren()) do if _n6a486ec43c9:IsA("\071\117\105\079\098\106\101\099\116") then _n6a486ec43c9:Destroy() end end
for _nb1106523147, _nd8af2d63dd0 in ipairs(_ne31c6f549ea.presenceUsers) do
local _nd301f128ad6 = _n3c3b92bebac(_n6520ae49775.usersList, _nd8af2d63dd0.DisplayName .. "\032\032\040\064" .. _nd8af2d63dd0.Name .. "\041", 13, _n06f55647211.mint, nil, UDim2.new(1, -8, 0, 48))
_nd301f128ad6.LayoutOrder = _nb1106523147
end
end
local _nc0a84245982 = {}
if _ne31c6f549ea.presenceEnabled then
for _nf53530c29b2, _na8410b08e47 in ipairs(_ne31c6f549ea.presenceUsers) do
_nc0a84245982[_na8410b08e47.UserId] = true
local _n6cc42cfb125 = _n5020aee301c:GetPlayerByUserId(_na8410b08e47.UserId)
local _n2101b1bba6a = _n6cc42cfb125 and _n6cc42cfb125.Character and _n6cc42cfb125.Character:FindFirstChild("\072\101\097\100")
local _n7ed66a5c881 = _ne31c6f549ea.presenceTags[_na8410b08e47.UserId]
if _n2101b1bba6a and (not _n7ed66a5c881 or _n7ed66a5c881.Adornee ~= _n2101b1bba6a) then
if _n7ed66a5c881 then _n7ed66a5c881:Destroy() end
_n7ed66a5c881 = _n87f97b61fb7("\066\105\108\108\098\111\097\114\100\071\117\105", _n6520ae49775.gui, {Name = "\078\065\067\075\075\089\083\072\079\080\085\115\101\114", Adornee = _n2101b1bba6a,
Size = UDim2.fromOffset(190, 42), StudsOffset = Vector3.new(0, 3, 0), AlwaysOnTop = true, MaxDistance = 150})
local _nd8db6624252 = _n3c3b92bebac(_n7ed66a5c881, "\078\065\067\075\075\089\083\072\079\080\010\064" .. _na8410b08e47.Name, 12, _n06f55647211.mint, nil, UDim2.fromScale(1, 1))
_nd8db6624252.TextXAlignment = Enum.TextXAlignment.Center
_ne31c6f549ea.presenceTags[_na8410b08e47.UserId] = _n7ed66a5c881
elseif not _n2101b1bba6a and _n7ed66a5c881 then _n7ed66a5c881:Destroy(); _ne31c6f549ea.presenceTags[_na8410b08e47.UserId] = nil end
end
end
for _n0f8ed352fb7, _n28acaa3dac8 in pairs(_ne31c6f549ea.presenceTags) do if not _nc0a84245982[_n0f8ed352fb7] then _n28acaa3dac8:Destroy(); _ne31c6f549ea.presenceTags[_n0f8ed352fb7] = nil end end
_n6520ae49775.footer.Text = _ne31c6f549ea.phase .. "\032\032\047\032\032" .. _ne31c6f549ea.status
if _ne31c6f549ea.toastUntil and os.clock() > _ne31c6f549ea.toastUntil then _n6520ae49775.toast.Visible = false end
_n6520ae49775.blur.Enabled = _ne31c6f549ea.blurEnabled and not _ne31c6f549ea.hidden and not _ne31c6f549ea.minimized and _ne31c6f549ea.mode == "\083\116\111\112\112\101\100"
_n6520ae49775.blur.Size = _n6520ae49775.blur.Enabled and 7 or 0
local _nce99e1c7247, _n4809bb20735 = _ne31c6f549ea.character()
local _na1efde3ab7b = _nce99e1c7247 and _nce99e1c7247.WalkSpeed
local _n09116d3ca96 = _n4809bb20735 and Vector3.new(_n4809bb20735.AssemblyLinearVelocity.X, 0, _n4809bb20735.AssemblyLinearVelocity.Z).Magnitude
_n6520ae49775.statLabels[1].Text, _n6520ae49775.statLabels[2].Text, _n6520ae49775.statLabels[3].Text = tostring(_ne31c6f549ea.rewards), tostring(_ne31c6f549ea.failures), _ne31c6f549ea.number(_na1efde3ab7b)
local _ncb9b13ceda5 = _ne31c6f549ea.target
if _ncb9b13ceda5 then
_n6520ae49775.heroName.Text, _n6520ae49775.heroImage.Image = _ncb9b13ceda5.name, _ncb9b13ceda5.icon
local _nf1a6d5baef6 = _n4809bb20735 and typeof(_ncb9b13ceda5.record.BottomCFrame) == "\067\070\114\097\109\101" and (_ncb9b13ceda5.record.BottomCFrame.Position - _n4809bb20735.Position).Magnitude
_n6520ae49775.heroDetails.Text = _ncb9b13ceda5.rarity .. "\032\032\047\032\032" .. _ne31c6f549ea.number(_ncb9b13ceda5.weight) .. "\032\107\103\010\083\101\108\108\032" .. _ne31c6f549ea.number(_ncb9b13ceda5.value) .. "\032\032\047\032\032" .. _ne31c6f549ea.number(_nf1a6d5baef6) .. "\032\115\116\117\100\115"
end
local _n893ff37dbd6 = _ne31c6f549ea.eventActive() and "\069\086\069\078\084\032\076\073\086\069" or "\069\086\069\078\084\032\079\070\070"
_n6520ae49775.progressLabel.Text = _ne31c6f549ea.phase .. "\032\032\047\032\032" .. _n893ff37dbd6 .. "\032\032\047\032\032" .. math.floor((os.clock() - _ne31c6f549ea.started) / 60) .. "\109"
_n6520ae49775.progress.Size = UDim2.fromScale(_ne31c6f549ea.phase == "\080\073\067\075\085\080" and _ne31c6f549ea.progress or 0, 1)
for _n0b34ce96023, _n17228ac971a in pairs(_n6520ae49775.modeButtons) do _n17228ac971a.BackgroundColor3 = _ne31c6f549ea.mode == _n0b34ce96023 and Color3.fromRGB(44, 68, 62) or _n06f55647211.panel end
local _n06ec8a484e4 = _ne31c6f549ea.carry and _ne31c6f549ea.carry.IsCarrying
local _ndd1f21f191d = _n06ec8a484e4 and (_ne31c6f549ea.metadata["\070\058" .. tostring(_ne31c6f549ea.carry.Uid)]
or (_ne31c6f549ea.target and _ne31c6f549ea.target.uid == _ne31c6f549ea.carry.Uid and _ne31c6f549ea.target))
local _nb84e9c563bc = _ndd1f21f191d and _ndd1f21f191d.weight
local _ne434ad2a5c4 = _ne31c6f549ea.carry and _ne31c6f549ea.carry.SpeedMultiplier
_n6520ae49775.carryText.Text = (_n06ec8a484e4 and (_ndd1f21f191d and _ndd1f21f191d.name or tostring(_ne31c6f549ea.carry.Uid or "\069\103\103")) or "\078\111\032\101\103\103\032\104\101\108\100")
.. "\010\087\101\105\103\104\116\032" .. _ne31c6f549ea.number(_nb84e9c563bc) .. "\032\107\103\032\032\047\032\032\083\112\101\101\100\032\102\097\099\116\111\114\032" .. _ne31c6f549ea.number(_ne434ad2a5c4, 2)
.. "\010\087\097\108\107\083\112\101\101\100\032" .. _ne31c6f549ea.number(_na1efde3ab7b) .. "\032\032\047\032\032\065\099\116\117\097\108\032" .. _ne31c6f549ea.number(_n09116d3ca96) .. "\032\115\116\117\100\115\047\115"
_n6520ae49775.hud.Visible = _n06ec8a484e4 or (_ne31c6f549ea.minimized and (_ne31c6f549ea.mode ~= "\083\116\111\112\112\101\100" or _ne31c6f549ea.speedEnabled))
_n6520ae49775.hudText.Text = (_n06ec8a484e4 and "\067\065\082\082\089\073\078\071" or _ne31c6f549ea.mode) .. "\032\032\047\032\032" .. _ne31c6f549ea.number(_nb84e9c563bc) .. "\032\107\103\010" .. _ne31c6f549ea.phase .. "\032\032\124\032\032" .. _ne31c6f549ea.number(_na1efde3ab7b) .. "\032\115\116\117\100\115\047\115"
if _ne31c6f549ea.dirty and not _ne31c6f549ea.hidden and not _ne31c6f549ea.minimized and _n6520ae49775.catalogs[_ne31c6f549ea.tab] then _ne31c6f549ea.renderCatalog(); _ne31c6f549ea.dirty = false end
if _ne31c6f549ea.logDirty and _ne31c6f549ea.tab == "\065\108\101\114\116\115" then _ne31c6f549ea.renderLog(); _ne31c6f549ea.logDirty = false end
end
_ne31c6f549ea.switchTab("\070\097\114\109")
task.defer(function() if _ne31c6f549ea.alive then _ne31c6f549ea.layout(true) end end)
end
function _ne31c6f549ea.boot()
local _n238207eb43c, _n52a09c3f25a = pcall(function()
_ne31c6f549ea.EggState = require(_n88615e67a04.Client.EggState)
_ne31c6f549ea.Identity = require(_n88615e67a04.Shared.Util.AreaEggSlotIdentity)
_ne31c6f549ea.Types = require(_n88615e67a04.Shared.Types.AreaEggs)
_ne31c6f549ea.Records = require(_n88615e67a04.Shared.Util.EggRecords)
_ne31c6f549ea.Assets = require(_n88615e67a04.Data.Assets)
if not _ne31c6f549ea.alive then return end
_ne31c6f549ea.connect(_ne31c6f549ea.EggState.CarryChanged, function(_nf89f9525fb2)
_ne31c6f549ea.carry = _nf89f9525fb2
_ne31c6f549ea.carryingUid = _nf89f9525fb2.IsCarrying and _nf89f9525fb2.Uid or nil
end)
_ne31c6f549ea.connect(_ne31c6f549ea.EggState.FieldClaimed, function(_nddb82f863ee)
_ne31c6f549ea.rewards += 1
_ne31c6f549ea.notify("\083\101\114\118\101\114\032\114\101\119\097\114\100\058\032" .. tostring(_nddb82f863ee.DisplayName or _nddb82f863ee.AssetCategory or "\069\103\103"), "\103\111\108\100")
end)
for _n190833b3af6, _nad37ac0333a in ipairs({_ne31c6f549ea.EggState.FieldRefreshed, _ne31c6f549ea.EggState.FieldShifted,
_ne31c6f549ea.EggState.FieldGone, _ne31c6f549ea.EggState.SnapshotRefreshed}) do
_ne31c6f549ea.connect(_nad37ac0333a, function() _ne31c6f549ea.needsRefresh = true end)
end
_ne31c6f549ea.status = "\083\121\110\099\104\114\111\110\105\122\105\110\103\032\108\105\118\101\032\101\103\103\115\046\046\046"
local _n2cdbdb5697e, _nfa96428f626 = _ne31c6f549ea.rpc(function() return _ne31c6f549ea.EggState.SyncFieldEggs() end)
if not _n2cdbdb5697e then error(_nfa96428f626) end
local _na2938e7f2e1, _n2e0ac0beb58 = _ne31c6f549ea.rpc(function() return _ne31c6f549ea.EggState.SyncOwnedEggs() end)
if not _na2938e7f2e1 then error(_n2e0ac0beb58) end
if not _ne31c6f549ea.alive then return end
_ne31c6f549ea.ready = true
_ne31c6f549ea.refreshData()
_ne31c6f549ea.phase, _ne31c6f549ea.status = "\073\068\076\069", "\082\101\097\100\121\046\032\080\105\099\107\032\097\032\109\111\100\101\032\111\114\032\098\114\111\119\115\101\032\121\111\117\114\032\101\103\103\115\046"
_ne31c6f549ea.notify("\067\111\110\110\101\099\116\101\100\032\116\111\032\108\105\118\101\032\101\103\103\032\100\097\116\097")
task.spawn(function()
_ne31c6f549ea.Save = _ne31c6f549ea.safe(require, _n88615e67a04.Shared.Save)
_ne31c6f549ea.AssetItems = _ne31c6f549ea.safe(require, _n88615e67a04.Shared.Util.AssetItems)
if _ne31c6f549ea.alive then _ne31c6f549ea.needsRefresh = true end
end)
end)
if not _n238207eb43c and _ne31c6f549ea.alive then _ne31c6f549ea.status = "\076\111\097\100\032\102\097\105\108\101\100\058\032" .. tostring(_n52a09c3f25a); _ne31c6f549ea.phase = "\069\082\082\079\082"; _ne31c6f549ea.notify(_ne31c6f549ea.status, "\101\114\114\111\114") end
end
_ne31c6f549ea.buildUI()
_ne31c6f549ea.connect(_nc921dac722b.Idled, _ne31c6f549ea.onIdle)
_ne31c6f549ea.connectPresence()
task.spawn(_ne31c6f549ea.boot)
task.delay(18, function()
if _ne31c6f549ea.alive and not _ne31c6f549ea.ready and _ne31c6f549ea.phase ~= "\069\082\082\079\082" then
_ne31c6f549ea.status = "\077\111\100\117\108\101\032\108\111\097\100\105\110\103\032\105\115\032\115\108\111\119\046\032\067\104\101\099\107\032\116\104\101\032\099\108\105\101\110\116\032\099\111\110\115\111\108\101\032\105\102\032\105\116\032\100\111\101\115\032\110\111\116\032\102\105\110\105\115\104\046"
end
end)
task.spawn(function()
while _ne31c6f549ea.alive do
local _nc5af3cb8082, _na98e45a31ad = pcall(function()
if _ne31c6f549ea.ready and (_ne31c6f549ea.needsRefresh or os.clock() - _ne31c6f549ea.refreshAt > 2) then
_ne31c6f549ea.needsRefresh = false; _ne31c6f549ea.refreshData()
end
_ne31c6f549ea.updateUI()
end)
if not _nc5af3cb8082 then _ne31c6f549ea.status = "\085\073\032\117\112\100\097\116\101\032\101\114\114\111\114\058\032" .. tostring(_na98e45a31ad) end
task.wait(0.2)
end
end)
