--[[
Phiên bản hiện tại : 2.8

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local v0 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
local v1 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\11\217\62\213\207\38\223\60\204\255\38", "\156\67\173\74\165"));
local v2 = v0.LocalPlayer;
local v3 = workspace.CurrentCamera;
local v4 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\0\160\76\19\178\21\67\38\161\64\21\185", "\38\84\215\41\118\220\70"));
local v5 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\101\5\39\0\215\94\6\55\6\205\85\4\52\27\253\85", "\158\48\118\66\114"));
local v6 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\153\49\30\5\118\183\237\162\39\21", "\155\203\68\112\86\19\197"));
local v7 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\117\201\55\238\84\125\247\223\83\212", "\152\38\189\86\156\32\24\133"));
local v8 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\200\64\162\67\242\100\162\84\234\94\164\67", "\38\156\55\199"));
local v9 = LUAOBFUSACTOR_DECRYPT_STR_0("\142\124\104\42\6\125\197\98\161\112\126\39\7\66\168\124\155\120\104\60\26\122\253\80\230\119\111\39\29", "\35\200\29\28\72\115\20\154");
local v10 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\60\140\225", "\84\121\223\177\191\237\76")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\121\255", "\161\219\54\169\192\90\48\80")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\71\1\40\106\74\5\38\66", "\69\41\34\96")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\202\218\8\13\63", "\75\220\163\183\106\98")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\179\135\50\215\22\155\130\58", "\185\98\218\235\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\50\33\204\203\167\219", "\202\171\92\71\134\190")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\209\41\141\45", "\232\73\161\76")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\146\215\68\124\19\182\214", "\126\219\185\34\61")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\232\109\98\123\114\247", "\135\108\174\62\18\30\23\147")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\132\236\41\196\17\162", "\167\214\137\74\171\120\206\83")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\191\255\53\90\244\162\160\245\43", "\199\235\144\82\61\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\31\190\35\19\37\177\34\1\2", "\75\103\118\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\103\64\43\155\17\210\90\116\29\183\25\197\91\104", "\126\167\52\16\116\217")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\237\29\16\191\135\17\243\223\42\41\147\160\24\242\203\43", "\156\168\78\64\224\212\121")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\34\221\149\241\52\230\170\217\9\239\168\203", "\174\103\142\197")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\27\111\7\22\86\247\65\32\90\57\41\74\240", "\152\54\72\63\88\69\62")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\247\222\99\214\251\230\72", "\60\180\164\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\95\23", "\114\56\62\101\73\71\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\218\235\251\157\231\218\198\180\221\222\197\181\202\211\193\187\226", "\164\216\137\187")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\213\1\141\147\237\14\230\227\48\191\133\241\7\221\244", "\107\178\134\81\210\198\158")]=false};
local function v11()
	if writefile then
		pcall(function()
			writefile(v9, v1:JSONEncode(v10));
		end);
	end
end
local function v12()
	if (readfile and isfile and isfile(v9)) then
		local v559, v560 = pcall(function()
			return v1:JSONDecode(readfile(v9));
		end);
		if (v559 and (type(v560) == LUAOBFUSACTOR_DECRYPT_STR_0("\44\15\128\202\175", "\202\88\110\226\166"))) then
			for v594, v595 in pairs(v560) do
				if (v10[v594] ~= nil) then
					v10[v594] = v595;
				end
			end
		end
	end
end
v12();
local v13 = Enum.KeyCode[v10.ToggleKey] or Enum.KeyCode.RightShift;
local v14 = false;
local v15 = true;
local v16 = v10.ESP;
local v17 = v10.TeamCheck;
local v18 = v10.Aimbot;
local v19 = v10.InfJump;
_G.sizeof = 55;
_G.AimOn = v10.Aimbot;
_G.TeamCheckOn = v10.TeamCheck;
_G.Aimpart = LUAOBFUSACTOR_DECRYPT_STR_0("\235\10\131\243", "\170\163\111\226\151");
_G.Sensitivity = 0.03;
_G.CircleSides = 64;
_G.CircleColor = Color3.fromRGB(255, 255, 255);
_G.CircleVisible = v10.FOV;
_G.fovTransparency = (v10.Aimbot and 1) or 0;
local v23 = nil;
local v24 = {};
local v25 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\23", "\73\113\80\210\88\46\87")]=Color3.fromRGB(16, 17, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\11\159", "\135\225\76\173\114")]=Color3.fromRGB(24, 26, 32),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\140\156\137", "\199\122\141\216\208\204\221")]=Color3.fromRGB(10, 12, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\242\34\212\93\196", "\150\205\189\112\144\24")]=Color3.fromRGB(45, 48, 58),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\161\135\120", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(240, 243, 250),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\58\63\231\137\88\175\249", "\230\180\127\103\179\214\28")]=Color3.fromRGB(160, 165, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\42\120\97\200\100\223\163\35\121", "\128\236\101\63\38\132\33")]=Color3.fromRGB(28, 30, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\134\54\99\154\206\240\131\135", "\175\204\201\113\36\214\139")]=Color3.fromRGB(20, 160, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\226\26\254", "\100\39\172\85\188")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\91\154\165\29\153", "\83\205\24\217\224")]=Color3.fromRGB(0, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\228\255\2\196\226", "\93\134\165\173")]=Color3.fromRGB(10, 12, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\222\238\241\31", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(180, 40, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\103\94\35", "\106\133\46\16")]=Color3.fromRGB(120, 100, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\8\90\200\127", "\32\56\64\19\156\58")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\228\202\97", "\224\58\168\133\54\58\146")]=Color3.fromRGB(0, 150, 255)};
local function v26(v253, v254)
	local v255 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\127\104\242\103\136\130\25", "\107\57\54\43\157\21\230\231"));
	v255.CornerRadius = UDim.new(0, v254 or 8);
	v255.Parent = v253;
end
local function v27(v258, v259, v260)
	local v261 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\162\34\225\171\211\196\222", "\175\187\235\113\149\217\188"));
	v261.Color = v259 or v25.BORDER;
	v261.Thickness = v260 or 1;
	v261.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	v261.Parent = v258;
end
local function v28(v267, v268, v269)
	local v270 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\189\128\65\230", "\24\92\207\225\44\131\25"));
	v270.Parent = v267;
	v270.BackgroundColor3 = v268 or v25.GLOW;
	v270.BackgroundTransparency = 0.6;
	v270.BorderSizePixel = 0;
	v270.Size = UDim2.new(1, v269 or 8, 1, v269 or 8);
	v270.Position = UDim2.new(-0.5, 0, -0.5, 0);
	v270.ZIndex = 0;
	local v278 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\250\155\67\9\115\78\193", "\29\43\179\216\44\123"));
	v278.CornerRadius = UDim.new(0, (v267:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\136\240\3\67\175\215\37\94", "\44\221\185\64")) and (v267:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\107\80\97\15\226\90", "\19\97\135\40\63")).CornerRadius.Offset + 2)) or 10);
	v278.Parent = v270;
	return v270;
end
local function v29(v281, v282, v283, v284, v285, v286)
	local v287 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\89\43\47\3\48\172\89\63", "\81\206\60\83\91\79"));
	v287.Parent = v281;
	v287.BackgroundTransparency = 1;
	v287.Position = v285 or UDim2.new(0, 0, 0, 0);
	v287.Size = v286 or UDim2.new(1, 0, 1, 0);
	v287.Font = Enum.Font.GothamBold;
	v287.Text = v282;
	v287.TextColor3 = v284 or v25.TEXT;
	v287.TextSize = v283 or 13;
	v287.TextXAlignment = Enum.TextXAlignment.Left;
	v287.TextWrapped = true;
	return v287;
end
local function v30(v300, v301, v302, v303)
	local v304 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\185\209\127\42", "\196\46\203\176\18\79\163\45"));
	v304.Parent = v300;
	v304.Position = v301 or UDim2.new(1, -45, 0.5, -10);
	v304.Size = UDim2.new(0, 40, 0, 20);
	v304.BackgroundColor3 = v25.TOGGLE_OFF;
	v304.BorderSizePixel = 0;
	v304.ClipsDescendants = true;
	v26(v304, 99);
	v27(v304, Color3.fromRGB(60, 65, 80), 1);
	local v312 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\48\127\19\33", "\143\216\66\30\126\68\155"));
	v312.Parent = v304;
	v312.Size = UDim2.new(0, 14, 0, 14);
	v312.Position = UDim2.new(0, 3, 0.5, -7);
	v312.BackgroundColor3 = v25.TEXT_DIM;
	v312.BorderSizePixel = 0;
	v26(v312, 99);
	local v319 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\205\21\223\231\182\195\245\165\198", "\129\202\168\109\171\165\195\183"));
	v319.Parent = v304;
	v319.Size = UDim2.new(1, 0, 1, 0);
	v319.BackgroundTransparency = 1;
	v319.Text = "";
	v319.ZIndex = 5;
	local v325 = v10[v302];
	if v325 then
		v304.BackgroundColor3 = v25.TOGGLE_ON;
		v312.Position = UDim2.new(0, 23, 0.5, -7);
		v312.BackgroundColor3 = v25.KNOB;
	end
	if v303 then
		v303(v325);
	end
	local function v326(v552)
		v325 = v552;
		v10[v302] = v325;
		v11();
		if v325 then
			v4:Create(v304, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\0\89\52\211\217\6\233\55\86\51\251\209\24\233\48\11", "\134\66\56\87\184\190\116")]=v25.TOGGLE_ON}):Play();
			v4:Create(v312, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\12\62\26\178\13\226\46\59", "\85\92\81\105\219\121\139\65")]=UDim2.new(0, 23, 0.5, -7),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\178\83\78\123\205\242\166\94\65\95\208\241\188\66\22", "\191\157\211\48\37\28")]=v25.KNOB}):Play();
		else
			v4:Create(v304, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\253\30\247\23\61\205\16\225\18\62\252\16\248\19\40\140", "\90\191\127\148\124")]=v25.TOGGLE_OFF}):Play();
			v4:Create(v312, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\72\136\61\30\108\142\33\25", "\119\24\231\78")]=UDim2.new(0, 3, 0.5, -7),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\44\166\65\219\82\30\151\35\161\105\211\76\30\144\126", "\113\226\77\197\42\188\32")]=v25.TEXT_DIM}):Play();
		end
		if v303 then
			v303(v325);
		end
	end
	v319.MouseButton1Click:Connect(function()
		v326(not v325);
	end);
	return v326;
end
local function v31(v327, v328, v329, v330, v331)
	local v332 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\4\245\184\63", "\213\90\118\148"));
	v332.Parent = v327;
	v332.BackgroundTransparency = 1;
	v332.Size = UDim2.new(1, 0, 0, 44);
	v332.ClipsDescendants = true;
	local v337 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\60\181\91\72", "\45\59\78\212\54"));
	v337.Parent = v332;
	v337.BackgroundColor3 = v25.BORDER;
	v337.BorderSizePixel = 0;
	v337.Position = UDim2.new(0, 0, 1, -1);
	v337.Size = UDim2.new(1, 0, 0, 1);
	local v344 = v29(v332, v328, 13, v25.TEXT, UDim2.new(0, 6, 0, 8), UDim2.new(0.7, 0, 0, 16));
	if v329 then
		local v566 = v29(v332, v329, 11, v25.TEXT_DIM, UDim2.new(0, 6, 0, 24), UDim2.new(0.7, 0, 0, 14));
	else
		v344.Position = UDim2.new(0, 6, 0, 14);
		v344.Size = UDim2.new(0.7, 0, 1, 0);
	end
	local v345 = v30(v332, UDim2.new(1, -48, 0.5, -10), v330, v331);
	return v345;
end
local function v32(v346, v347)
	local v348 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\68\130\134\131", "\144\112\54\227\235\230\78\205"));
	v348.Parent = v346;
	v348.BackgroundTransparency = 1;
	v348.Size = UDim2.new(1, 0, 0, 26);
	v348.ClipsDescendants = true;
	local v353 = v29(v348, v347, 11, v25.ACCENT, UDim2.new(0, 6, 0, 0), UDim2.new(1, -10, 1, 0));
	v353.TextXAlignment = Enum.TextXAlignment.Left;
	v353.Font = Enum.Font.Gotham;
	local v358 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\58\14\241\213", "\59\211\72\111\156\176"));
	v358.Parent = v348;
	v358.BackgroundColor3 = v25.BORDER;
	v358.BorderSizePixel = 0;
	v358.Position = UDim2.new(0, 0, 1, -1);
	v358.Size = UDim2.new(1, 0, 0, 1);
	return v348;
end
local function v33(v365, v366, v367)
	local v368 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\132\241\34\66\139\234\35\73\161\241\44\67\130", "\77\46\231\131"));
	v368.Parent = v365;
	v368.BackgroundTransparency = 1;
	v368.Position = UDim2.new(0, 10, 0, v366);
	v368.Size = UDim2.new(1, -20, 1, -(v366 + v367));
	v368.ScrollBarThickness = 4;
	v368.ScrollBarImageColor3 = v25.TEXT_DIM;
	v368.BorderSizePixel = 0;
	v368.CanvasSize = UDim2.new(0, 0, 0, 0);
	v368.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	v368.ScrollingDirection = Enum.ScrollingDirection.Y;
	v368.ClipsDescendants = true;
	local v383 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\125\154\73\169\64\154\65\163\91\163\84", "\32\218\52\214"));
	v383.Parent = v368;
	v383.SortOrder = Enum.SortOrder.LayoutOrder;
	v383.Padding = UDim.new(0, 4);
	v383.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	return v368;
end
local v34 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\20\35\173\244\190\98\79\71", "\58\46\119\81\200\145\208\37"));
v34.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\6\141\57\162", "\86\75\236\80\204\201\221");
v34.Parent = game.Players.LocalPlayer:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\66\77\118\156\251\153\85\84\126", "\235\18\33\23\229\158"));
v34.ResetOnSpawn = false;
v34.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v34.DisplayOrder = 9999;
local v41 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\191\217\175\124\187\195\190\92", "\219\48\218\161"));
v41.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\244\120\114\78", "\128\132\17\28\41\187\47");
v41.Parent = v34;
v41.BackgroundTransparency = 1;
v41.Position = UDim2.new(0.5, -250, 0.05, 0);
v41.Size = UDim2.new(0, 500, 0, 40);
v41.Font = Enum.Font.GothamBold;
v41.Text = "Hệ thống đã tải hoàn tất!";
v41.TextColor3 = Color3.fromRGB(255, 255, 255);
v41.TextSize = 16;
v41.TextTransparency = 1;
v27(v41, Color3.fromRGB(0, 0, 0), 2);
local v53 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\32\7\55\88", "\61\97\82\102\90"));
v53.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\128\33\170\79\194\69", "\105\204\78\203\43\167\55\126");
v53.Parent = v34;
v53.BackgroundColor3 = v25.BG;
v53.BorderSizePixel = 0;
v53.Position = UDim2.new(0.5, -130, 0.5, -50);
v53.Size = UDim2.new(0, 260, 0, 0);
v53.ClipsDescendants = true;
v26(v53, 10);
v27(v53, v25.BORDER, 1.2);
local v62 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\184\34\19\22", "\49\197\202\67\126\115\100\167"));
v62.Parent = v53;
v62.BackgroundColor3 = v25.TITLE;
v62.BorderSizePixel = 0;
v62.Size = UDim2.new(1, 0, 0, 32);
v26(v62, 10);
v27(v62, v25.BORDER, 1);
local v68 = v29(v62, LUAOBFUSACTOR_DECRYPT_STR_0("\22\114\242\11\175\98\30\1\9\145\113\192\116\103\119\125\254\29\162\99\119", "\62\87\59\191\73\224\54"), 12, v25.TEXT, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0));
v68.TextXAlignment = Enum.TextXAlignment.Center;
local v71 = v29(v53, "Đang tải cấu hình đã lưu...", 11, v25.TEXT_DIM, UDim2.new(0, 14, 0, 40), UDim2.new(1, -28, 0, 16));
v71.TextXAlignment = Enum.TextXAlignment.Left;
local v74 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\16\251\196\226", "\169\135\98\154"));
v74.Parent = v53;
v74.BackgroundColor3 = v25.BAR_BG;
v74.BorderSizePixel = 0;
v74.Position = UDim2.new(0, 14, 0, 64);
v74.Size = UDim2.new(1, -28, 0, 10);
v26(v74, 99);
local v81 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\101\37\89\248", "\168\171\23\68\52\157\83"));
v81.Parent = v74;
v81.BackgroundColor3 = v25.ACCENT;
v81.BorderSizePixel = 0;
v81.Size = UDim2.new(0, 0, 1, 0);
v26(v81, 99);
local v87 = v29(v53, LUAOBFUSACTOR_DECRYPT_STR_0("\164\52", "\231\148\17\149\205\69\77"), 11, v25.ACCENT, UDim2.new(0, 14, 0, 78), UDim2.new(1, -28, 0, 16));
v87.TextXAlignment = Enum.TextXAlignment.Right;
local v90 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\181\198\246\82", "\159\224\199\167\155\55"));
v90.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\213\242\47\219\244", "\178\151\147\92");
v90.Parent = v34;
v90.BackgroundColor3 = v25.BG;
v90.BackgroundTransparency = 0.1;
v90.BorderSizePixel = 0;
v90.Position = UDim2.new(0.5, -210, 0.5, -220);
v90.Size = UDim2.new(0, 420, 0, 440);
v90.Active = true;
v90.Draggable = true;
v90.Visible = false;
v26(v90, 10);
v27(v90, v25.BORDER, 1.2);
local v101 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\239\77\63\23", "\26\236\157\44\82\114\44"));
v101.Parent = v90;
v101.BackgroundColor3 = v25.TITLE;
v101.BackgroundTransparency = 0.5;
v101.BorderSizePixel = 0;
v101.Size = UDim2.new(1, 0, 0, 35);
v26(v101, 10);
v29(v101, "Aimbot V2.8 by Fatbui - Bấm Shift phải để ẩn menu", 14, v25.TEXT, UDim2.new(0, 12, 0, 0), UDim2.new(0.7, 0, 1, 0));
local v107 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\43\205\79\8\59\193\79\37\32", "\59\74\78\181"));
v107.Parent = v101;
v107.BackgroundColor3 = v25.MINI;
v107.BackgroundTransparency = 0.4;
v107.BorderSizePixel = 0;
v107.Position = UDim2.new(1, -48, 0.5, -10);
v107.Size = UDim2.new(0, 20, 0, 20);
v107.Text = "─";
v107.TextColor3 = v25.TEXT;
v107.Font = Enum.Font.GothamBold;
v26(v107, 4);
local v119 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\212\66\78\145\48\197\78\85\189", "\211\69\177\58\58"));
v119.Parent = v101;
v119.BackgroundColor3 = v25.CLOSE;
v119.BackgroundTransparency = 0.4;
v119.BorderSizePixel = 0;
v119.Position = UDim2.new(1, -26, 0.5, -10);
v119.Size = UDim2.new(0, 20, 0, 20);
v119.Text = "✕";
v119.TextColor3 = v25.TEXT;
v119.Font = Enum.Font.GothamBold;
v26(v119, 4);
local v130 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\247\120\248\236", "\171\215\133\25\149\137"));
v130.Parent = v90;
v130.BackgroundTransparency = 1;
v130.Position = UDim2.new(0, 0, 0, 35);
v130.Size = UDim2.new(1, 0, 0, 32);
local v135 = {"CƠ BẢN","VŨ KHÍ","CÀI ĐẶT ESP","KHÁC"};
local v136 = {};
local v137 = {};
for v390, v391 in ipairs(v135) do
	local v392 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\205\42\238\205\37\232\86\238\198", "\34\129\168\82\154\143\80\156"));
	v392.Parent = v130;
	v392.BackgroundColor3 = ((v390 == 1) and v25.ACCENT) or v25.BG2;
	v392.BackgroundTransparency = ((v390 == 1) and 0.3) or 0.8;
	v392.BorderSizePixel = 0;
	v392.Position = UDim2.new((v390 - 1) / 4, 2, 0, 4);
	v392.Size = UDim2.new(1 / 4, -4, 1, -8);
	v392.Text = v391;
	v392.TextColor3 = ((v390 == 1) and v25.KNOB) or v25.TEXT_DIM;
	v392.TextSize = 11;
	v392.Font = Enum.Font.GothamBold;
	v26(v392, 6);
	v136[v390] = v392;
	local v405 = v33(v90, 72, 12);
	v405.Visible = v390 == 1;
	v137[v390] = v405;
end
local function v138(v408)
	for v554, v555 in ipairs(v136) do
		if (v554 == v408) then
			v4:Create(v555, TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\167\179\48\0\79\92\134\144\188\55\63\90\79\135\150\162\50\25\77\64\138\156", "\233\229\210\83\107\40\46")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\71\42\194\38\206\78\61\196\86", "\101\161\34\82\182")]=v25.KNOB}):Play();
			v555.BackgroundColor3 = v25.ACCENT;
		else
			v4:Create(v555, TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\202\12\90\245\220\240\141\59\230\9\109\236\218\236\145\62\233\31\92\240\216\251", "\78\136\109\57\158\187\130\226")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\58\225\229\29\48\245\254\44\108", "\145\94\95\153")]=v25.TEXT_DIM}):Play();
			v555.BackgroundColor3 = v25.BG2;
		end
		v137[v554].Visible = v554 == v408;
	end
end
for v409, v410 in ipairs(v136) do
	v410.MouseButton1Click:Connect(function()
		v138(v409);
	end);
end
local v139 = {};
v139.ESP = function(v411)
	v16 = v411;
end;
v139.FOV = function(v412)
	_G.CircleVisible = v412;
end;
v139.TeamCheck = function(v413)
	v17 = v413;
	_G.TeamCheckOn = v413;
end;
v139.InfJump = function(v414)
	v19 = v414;
end;
local v144;
v139.Speed = function(v415)
	if v415 then
		_G.WS = LUAOBFUSACTOR_DECRYPT_STR_0("\172\157\68", "\215\157\173\116\181\46");
		local v569 = v2.Character and v2.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\29\161\134\243\212\58\189\143", "\186\85\212\235\146"));
		if v569 then
			v144 = v569:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\245\128\26\245\10\254\93\199\133", "\56\162\225\118\158\89\142")):Connect(function()
				v569.WalkSpeed = _G.WS;
			end);
			v569.WalkSpeed = _G.WS;
		end
	else
		if v144 then
			v144:Disconnect();
		end
		local v570 = v2.Character and v2.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\116\16\205\174\44\215\85\1", "\184\60\101\160\207\66"));
		if v570 then
			v570.WalkSpeed = 16;
		end
	end
end;
v2.CharacterAdded:Connect(function(v416)
	if v10.Speed then
		local v571 = v416:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\151\113\189\63\141\117\184", "\220\81\226\28"), 5);
		if v571 then
			v144 = v571:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\36\212\142\240\217\215\22\208\134", "\167\115\181\226\155\138")):Connect(function()
				v571.WalkSpeed = _G.WS;
			end);
			v571.WalkSpeed = _G.WS;
		end
	end
end);
v139.Aimbot = function(v417)
	v18 = v417;
	if v417 then
		_G.fovTransparency = 1;
	else
		_G.fovTransparency = 0;
	end
end;
local v147 = false;
v139.SilentAim = function(v418)
	v147 = v418;
	if v418 then
		coroutine.resume(coroutine.create(function()
			while v147 do
				for v598, v599 in pairs(v0:GetPlayers()) do
					if ((v599.Name ~= v2.Name) and v599.Character) then
						pcall(function()
							v599.Character.RightUpperLeg.CanCollide = false;
							v599.Character.RightUpperLeg.Transparency = 10;
							v599.Character.RightUpperLeg.Size = Vector3.new(13, 13, 13);
							v599.Character.LeftUpperLeg.CanCollide = false;
							v599.Character.LeftUpperLeg.Transparency = 10;
							v599.Character.LeftUpperLeg.Size = Vector3.new(13, 13, 13);
							v599.Character.HeadHB.CanCollide = false;
							v599.Character.HeadHB.Transparency = 10;
							v599.Character.HeadHB.Size = Vector3.new(13, 13, 13);
							v599.Character.HumanoidRootPart.CanCollide = false;
							v599.Character.HumanoidRootPart.Transparency = 10;
							v599.Character.HumanoidRootPart.Size = Vector3.new(13, 13, 13);
						end);
					end
				end
				wait(1);
			end
		end));
	end
end;
local v149 = false;
v139.InfAmmo = function(v419)
	v149 = v419;
	if v419 then
		coroutine.resume(coroutine.create(function()
			while v149 do
				wait();
				pcall(function()
					v2.PlayerGui.GUI.Client.Variables.ammocount.Value = 999;
					v2.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999;
				end);
			end
		end));
	end
end;
local v151 = false;
v139.FFSpeed = function(v420)
	v151 = v420;
	if v420 then
		coroutine.resume(coroutine.create(function()
			while v151 do
				wait(5);
				for v602, v603 in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
					if (v603.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\195\55\243\83", "\166\130\66\135\60\27\17")) then
						v603.Value = true;
					end
					if (v603.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\98\67\220\112\2\69\94\203", "\80\36\42\174\21")) then
						v603.Value = 0.02;
					end
				end
			end
		end));
	end
end;
local v153 = false;
v139.Recoil = function(v421)
	v153 = v421;
	if v421 then
		coroutine.resume(coroutine.create(function()
			while v153 do
				wait(5);
				for v604, v605 in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
					if (v605.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\124\21\52\117\71\28\20\117\64\4\37\117\66", "\26\46\112\87")) then
						v605.Value = 0;
					end
					if (v605.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\148\34\179\71\175\173\64\181\189", "\212\217\67\203\20\223\223\37")) then
						v605.Value = 0;
					end
				end
			end
		end));
	end
end;
local v155 = v137[1];
v32(v155, "THỊ GIÁC");
v24.ESP = v31(v155, "ESP người chơi", "Hiện hộp bao quanh mục tiêu", LUAOBFUSACTOR_DECRYPT_STR_0("\159\190\152", "\178\218\237\200"), v139.ESP);
v31(v155, "Hiện FOV", "Hiển thị vòng tròn ngắm fov", LUAOBFUSACTOR_DECRYPT_STR_0("\144\154\208", "\176\214\213\134"), v139.FOV);
v31(v155, "Kiểm tra nhóm", "Bỏ qua không quét đồng đội", LUAOBFUSACTOR_DECRYPT_STR_0("\192\168\183\217\139\94\92\247\166", "\57\148\205\214\180\200\54"), v139.TeamCheck);
v32(v155, "AIMBOT KÍCH HOẠT");
v24.Aimbot = v31(v155, "Aimbot mặc định", "Giữ Chuột Phải để khóa mục tiêu", LUAOBFUSACTOR_DECRYPT_STR_0("\51\244\56\54\121\6", "\22\114\157\85\84"), v139.Aimbot);
v31(v155, LUAOBFUSACTOR_DECRYPT_STR_0("\247\194\31\193\83\226\232\229\194\30", "\200\164\171\115\164\61\150"), "Đạn tự tìm mục tiêu gần nhất", LUAOBFUSACTOR_DECRYPT_STR_0("\141\253\15\64\141\170\213\10\72", "\227\222\148\99\37"), v139.SilentAim);
v32(v155, "DI CHUYỂN");
v31(v155, "Nhảy vô hạn", "Bỏ giới hạn nhảy liên tục", LUAOBFUSACTOR_DECRYPT_STR_0("\26\92\84\220\236\62\66", "\153\83\50\50\150"), v139.InfJump);
v31(v155, "Siêu tốc độ", "Gia tăng tốc độ chạy WalkSpeed", LUAOBFUSACTOR_DECRYPT_STR_0("\110\102\118\25\119", "\45\61\22\19\124\19\203"), v139.Speed);
local v158 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\0\12\248\7", "\217\161\114\109\149\98\16"), v155);
v158.BackgroundTransparency = 1;
v158.Size = UDim2.new(1, 0, 0, 15);
local v161 = v137[2];
v32(v161, "TINH CHỈNH VŨ KHÍ TẤN CÔNG");
v31(v161, "Băng đạn vô hạn", "Không bao giờ hết đạn khi bắn", LUAOBFUSACTOR_DECRYPT_STR_0("\59\46\62\93\177\121\29", "\20\114\64\88\28\220"), v139.InfAmmo);
v31(v161, "Tốc độ xả đạn", "Tối đa hóa FireRate của súng", LUAOBFUSACTOR_DECRYPT_STR_0("\23\39\225\164\253\213\185", "\221\81\97\178\212\152\176"), v139.FFSpeed);
v31(v161, "Loại bỏ độ giật", "Giảm độ lệch tâm và chống giật", LUAOBFUSACTOR_DECRYPT_STR_0("\255\226\30\244\19\193", "\122\173\135\125\155"), v139.Recoil);
local v162 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\211\1\180\58", "\168\228\161\96\217\95\81"), v161);
v162.BackgroundTransparency = 1;
v162.Size = UDim2.new(1, 0, 0, 15);
local v165 = v137[3];
v32(v165, "HIỂN THỊ BOX");
local v166 = v31(v165, LUAOBFUSACTOR_DECRYPT_STR_0("\249\222\59\82\43\94\213\214\110\126\32\79", "\55\187\177\78\60\79"), "Khung bao quanh mục tiêu", LUAOBFUSACTOR_DECRYPT_STR_0("\8\253\111\212\100\192\149\35\202\86\229\65\205\143\53", "\224\77\174\63\139\38\175"), function(v422)
	v10.ESP_Boundingbox = v422;
	v11();
end);
v32(v165, "THÔNG TIN TRÊN BOX");
local v167 = v31(v165, "Tên người chơi", "Hiển thị tên trên đầu box", LUAOBFUSACTOR_DECRYPT_STR_0("\161\114\104\17\183\73\87\57\138\64\85\43", "\78\228\33\56"), function(v424)
	v10.ESP_Showname = v424;
	v11();
end);
local v168 = v31(v165, "Khoảng cách", "Hiển thị số to và đổi màu theo khoảng cách", LUAOBFUSACTOR_DECRYPT_STR_0("\235\77\130\60\182\198\113\165\7\140\221\106\179\13\134\203", "\229\174\30\210\99"), function(v426)
	v10.ESP_Showdistance = v426;
	v11();
end);
local v169 = v31(v165, "Thanh máu & số máu", "Hiển thị sức khỏe", LUAOBFUSACTOR_DECRYPT_STR_0("\62\222\182\110\222\53\54\12\229\131\80\225\41\49", "\89\123\141\230\49\141\93"), function(v428)
	v10.ESP_Showhealth = v428;
	v11();
end);
local v170 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\247\1\21", "\42\147\17\150\108\112"));
v170.Parent = v165;
v170.BackgroundTransparency = 1;
v170.Size = UDim2.new(1, 0, 0, 44);
v170.ClipsDescendants = true;
local v175 = v29(v170, "Kiểu hiển thị máu", 13, v25.TEXT, UDim2.new(0, 6, 0, 8), UDim2.new(0.6, 0, 0, 16));
local v176 = v29(v170, LUAOBFUSACTOR_DECRYPT_STR_0("\59\163\53\107\167\167\79\132\44\109\167\167\79\132\34\107\239", "\136\111\198\77\31\135"), 11, v25.TEXT_DIM, UDim2.new(0, 6, 0, 24), UDim2.new(0.6, 0, 0, 14));
local v177 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\12\191\66\159\241\3\189\13\7", "\201\98\105\199\54\221\132\119"));
v177.Parent = v170;
v177.Size = UDim2.new(0, 110, 0, 26);
v177.Position = UDim2.new(1, -120, 0.5, -13);
v177.BackgroundColor3 = v25.BG2;
v177.Text = v10.ESP_b_ht or LUAOBFUSACTOR_DECRYPT_STR_0("\155\13\145", "\204\217\108\227\65\98\85");
v177.TextColor3 = v25.ACCENT;
v177.Font = Enum.Font.GothamBold;
v177.TextSize = 12;
v26(v177, 6);
v27(v177, v25.BORDER, 1);
v177.MouseButton1Click:Connect(function()
	local v430 = v10.ESP_b_ht;
	local v431;
	if (v430 == LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241", "\160\62\163\149\133\76")) then
		v431 = LUAOBFUSACTOR_DECRYPT_STR_0("\244\161\31", "\163\182\192\109\79");
	elseif (v430 == LUAOBFUSACTOR_DECRYPT_STR_0("\22\39\18", "\149\84\70\96\160")) then
		v431 = LUAOBFUSACTOR_DECRYPT_STR_0("\26\9\25\229", "\141\88\102\109");
	else
		v431 = LUAOBFUSACTOR_DECRYPT_STR_0("\135\86\210\100", "\161\211\51\170\16\122\93\53");
	end
	v10.ESP_b_ht = v431;
	v177.Text = v431;
	v11();
end);
v32(v165, "LỌC VÀ MÀU SẮC");
local v187 = v31(v165, "Hiển thị đồng đội", "Hiện cả đồng đội", LUAOBFUSACTOR_DECRYPT_STR_0("\222\157\130\23\222\160\179\42\247\154\183\41\246\141\186\45\248\165", "\72\155\206\210"), function(v434)
	v10.ESP_EnablTeamCheck = v434;
	v11();
end);
local v188 = v31(v165, "Màu theo Team", "Dùng màu của team", LUAOBFUSACTOR_DECRYPT_STR_0("\99\73\100\49\6\85\127\96\11\50\75\89\91\2\60\84", "\83\38\26\52\110"), function(v436)
	v10.ESP_UseTeamColor = v436;
	v11();
end);
local v189 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\5\38\75\93", "\38\56\119\71"), v165);
v189.BackgroundTransparency = 1;
v189.Size = UDim2.new(1, 0, 0, 15);
local v192 = v137[4];
v32(v192, "THÔNG TIN SCRIPT");
local v193 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\253\89\219\32", "\54\147\143\56\182\69"), v192);
v193.BackgroundTransparency = 1;
v193.Size = UDim2.new(1, 0, 0, 130);
v193.ClipsDescendants = false;
local v197 = v29(v193, LUAOBFUSACTOR_DECRYPT_STR_0("\241\148\246\9\221\207\193\219\72\209\194\132\241\68\214\221", "\191\182\225\159\41"), 14, v25.TEXT, UDim2.new(0, 6, 0, 6), UDim2.new(1, -12, 0, 20));
v197.TextXAlignment = Enum.TextXAlignment.Center;
v197.TextColor3 = v25.ACCENT;
local v200 = v29(v193, LUAOBFUSACTOR_DECRYPT_STR_0("\24\17\58\92\155\147\130\41\11\104\101\131\134\214\31\68\121\7", "\162\75\114\72\53\235\231"), 14, v25.TEXT, UDim2.new(0, 6, 0, 30), UDim2.new(1, -12, 0, 20));
v200.TextXAlignment = Enum.TextXAlignment.Center;
v200.TextColor3 = v25.ACCENT;
local v203 = v29(v193, "Script free, liên hệ chủ kênh qua", 13, v25.TEXT_DIM, UDim2.new(0, 6, 0, 58), UDim2.new(1, -12, 0, 22));
v203.TextXAlignment = Enum.TextXAlignment.Center;
local v205 = v29(v193, LUAOBFUSACTOR_DECRYPT_STR_0("\181\51\81\246\70\0\137\124\100\250\70\1\148\53\71\234\3\82\221", "\98\236\92\36\130\51"), 16, v25.TEXT, UDim2.new(0, 6, 0, 82), UDim2.new(1, -12, 0, 22));
v205.TextXAlignment = Enum.TextXAlignment.Center;
v205.TextColor3 = Color3.fromRGB(255, 200, 0);
local v208 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\11\13\183\64", "\80\196\121\108\218\37\200\213"), v192);
v208.BackgroundTransparency = 1;
v208.Size = UDim2.new(1, 0, 0, 15);
v32(v192, "CẤU HÌNH PHÍM TẮT MENU");
local v211 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\97\3\114\78", "\234\96\19\98\31\43\110"));
v211.Parent = v192;
v211.BackgroundTransparency = 1;
v211.Size = UDim2.new(1, 0, 0, 48);
v211.ClipsDescendants = true;
v29(v211, "Phím kích hoạt Menu", 13, v25.TEXT, UDim2.new(0, 6, 0, 8), UDim2.new(0.5, 0, 0, 16));
v29(v211, "Bấm vào nút để đổi hotkey", 11, v25.TEXT_DIM, UDim2.new(0, 6, 0, 24), UDim2.new(0.5, 0, 0, 14));
v23 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\26\74\211\142\103\159\18\16\92", "\235\102\127\50\167\204\18"));
v23.Parent = v211;
v23.Position = UDim2.new(1, -120, 0.5, -13);
v23.Size = UDim2.new(0, 110, 0, 26);
v23.BackgroundColor3 = v25.BG2;
v23.Text = v13.Name;
v23.TextColor3 = v25.ACCENT;
v23.Font = Enum.Font.GothamBold;
v23.TextSize = 12;
v26(v23, 6);
v27(v23, v25.BORDER, 1);
v23.MouseButton1Click:Connect(function()
	v14 = true;
	v23.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\30\239\187", "\78\48\193\149\67\36");
	v23.TextColor3 = v25.WHITE;
end);
v32(v192, "HOTKEYS HỖ TRỢ BÊN NGOÀI");
local v225 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\12\129\21\68", "\33\80\126\224\120"), v192);
v225.BackgroundTransparency = 1;
v225.Size = UDim2.new(1, 0, 0, 25);
v29(v225, "[ F1 ] - Bật/Tắt Aimbot nhanh", 12, v25.TEXT_DIM, UDim2.new(0, 6, 0, 6), UDim2.new(0.9, 0, 1, 0));
local v228 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\186\2\201\89", "\60\140\200\99\164"), v192);
v228.BackgroundTransparency = 1;
v228.Size = UDim2.new(1, 0, 0, 25);
v29(v228, "[ F2 ] - Bật/Tắt ESP nhanh", 12, v25.TEXT_DIM, UDim2.new(0, 6, 0, 6), UDim2.new(0.9, 0, 1, 0));
local v231 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\161\230\5\43\167", "\194\231\148\100\70"), v192);
v231.BackgroundTransparency = 1;
v231.Size = UDim2.new(1, 0, 0, 15);
local function v234(v441)
	v41.Text = v441;
	v4:Create(v41, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\73\217\183\194\218\71\66\210\179\247\218\67\66\194\186", "\168\38\44\161\195\150")]=0}):Play();
	task.spawn(function()
		wait(2);
		v4:Create(v41, TweenInfo.new(0.5), {[LUAOBFUSACTOR_DECRYPT_STR_0("\180\249\154\98\4\250\183\24\147\236\131\100\53\230\181\15", "\118\224\156\226\22\80\136\214")]=1}):Play();
	end);
end
v5.InputBegan:Connect(function(v443, v444)
	if v14 then
		if (v443.UserInputType == Enum.UserInputType.Keyboard) then
			if ((v443.KeyCode ~= Enum.KeyCode.Unknown) and (v443.KeyCode ~= Enum.KeyCode.Escape)) then
				v13 = v443.KeyCode;
				v10.ToggleKey = v13.Name;
				v11();
				v14 = false;
				v23.Text = v13.Name;
				v23.TextColor3 = v25.ACCENT;
				v234("Phím kích hoạt menu đã đổi thành: " .. v13.Name);
			end
		end
		return;
	end
	if v444 then
		return;
	end
	if (v443.KeyCode == Enum.KeyCode.F1) then
		if v24.Aimbot then
			v24.Aimbot(not v10.Aimbot);
			v234(LUAOBFUSACTOR_DECRYPT_STR_0("\99\231\84\130\77\250\3\192", "\224\34\142\57") .. ((v10.Aimbot and "ĐÃ BẬT") or "ĐÃ TẮT"));
		end
	elseif (v443.KeyCode == Enum.KeyCode.F2) then
		if v24.ESP then
			v24.ESP(not v10.ESP);
			v234(LUAOBFUSACTOR_DECRYPT_STR_0("\251\148\245\135\51", "\110\190\199\165\189\19\145\61") .. ((v10.ESP and "ĐÃ BẬT") or "ĐÃ TẮT"));
		end
	elseif (v443.KeyCode == v13) then
		v15 = not v15;
		v90.Visible = v15;
		v234("Bấm " .. v13.Name .. " để ẩn/hiện giao diện");
	end
end);
v119.MouseButton1Click:Connect(function()
	v34:Destroy();
end);
v107.MouseButton1Click:Connect(function()
	v90.Visible = false;
	v15 = false;
	v234("Bấm " .. v13.Name .. " để hiện lại giao diện");
end);
v5.JumpRequest:Connect(function()
	if (v19 and v2.Character and v2.Character:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\242\254\122\233\133\200\211\239", "\167\186\139\23\136\235"))) then
		v2.Character:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\50\160\133\12\20\186\129\9", "\109\122\213\232")):ChangeState(LUAOBFUSACTOR_DECRYPT_STR_0("\196\226\175\32\231\249\165", "\80\142\151\194"));
	end
end);
local v235 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\201\123\72\6\212", "\44\99\166\23"), game.Workspace);
v235.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\127\255\44\55\39\183", "\196\28\151\73\86\83");
local v237 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\12\37\20\135\74", "\22\147\99\73\112\226\56\120"), v235);
v237.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\189\102\242", "\237\216\21\130\149");
function AddBox(v446)
	local v447 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\160\71\83\83\178\198\95\144\74\120\74\185", "\62\226\46\63\63\208\169"), v237);
	v447.Name = v446.Name;
	v447.AlwaysOnTop = true;
	v447.Size = UDim2.new(4, 0, 5.4, 0);
	v447.ClipsDescendants = false;
	local v453 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\11\84\142\26", "\62\133\121\53\227\127\109\79"), v447);
	v453.Size = UDim2.new(1, 0, 1, 0);
	v453.BorderSizePixel = 0;
	v453.BackgroundTransparency = 1;
	local v457 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\6\51\248\211", "\194\112\116\82\149\182\206"), v453);
	v457.BorderSizePixel = 0;
	v457.Size = UDim2.new(0, 1, 1, 0);
	local v460 = v457:Clone();
	v460.Parent = v453;
	v460.Size = UDim2.new(0, -1, 1, 0);
	v460.Position = UDim2.new(1, 0, 0, 0);
	local v464 = v457:Clone();
	v464.Parent = v453;
	v464.Size = UDim2.new(1, 0, 0, 1);
	local v467 = v457:Clone();
	v467.Parent = v453;
	v467.Size = UDim2.new(1, 0, 0, -1);
	v467.Position = UDim2.new(0, 0, 1, 0);
	local v471 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\161\64\20\194\237\15\43\172\107\13\201", "\110\89\200\44\120\160\130"), v447);
	v471.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\165\194\70\67\97\77", "\45\203\163\43\38\35\42\91");
	v471.Size = UDim2.new(3, 0, 0, 32);
	v471.StudsOffset = Vector3.new(0, 2.5, 0);
	v471.AlwaysOnTop = true;
	v471.ClipsDescendants = false;
	local v477 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55\171\168\86\215\137", "\52\178\229\188\67\231\201"), v471);
	v477.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\47\64\93\1\251\93\33\36\77", "\67\65\33\48\100\151\60");
	v477.BackgroundTransparency = 1;
	v477.TextStrokeTransparency = 0;
	v477.TextXAlignment = Enum.TextXAlignment.Center;
	v477.Size = UDim2.new(1, 0, 1, 0);
	v477.Text = v446.Name;
	v477.TextSize = 20;
	v477.Font = Enum.Font.GothamBold;
	v477.TextColor3 = Color3.fromRGB(255, 255, 255);
	local v489 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\238\162\212\241\208\230\188\220\212\202\238", "\147\191\135\206\184"), v447);
	v489.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\141\38\160\206", "\210\228\72\198\161\184\51");
	v489.Size = UDim2.new(3, 0, 0, 60);
	v489.StudsOffset = Vector3.new(3.6, -3, 0);
	v489.AlwaysOnTop = true;
	v489.ClipsDescendants = false;
	local v495 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\76\235\4\95\207\52\76\255", "\174\86\41\147\112\19"), v489);
	v495.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\95\9\158\31\36\1\18\174\87\1\143\14\41", "\203\59\96\237\107\69\111\113");
	v495.BackgroundTransparency = 1;
	v495.TextStrokeTransparency = 0;
	v495.TextXAlignment = Enum.TextXAlignment.Left;
	v495.Size = UDim2.new(0, 120, 0, 24);
	v495.Position = UDim2.new(0, 0, 0, 0);
	v495.Text = "";
	v495.TextSize = 20;
	v495.Font = Enum.Font.GothamBold;
	local v506 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\19\180\245\29\241\213\33\26", "\183\68\118\204\129\81\144"), v489);
	v506.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\6\168\113\232\31\138\2\172\114\225\7", "\226\110\205\16\132\107");
	v506.BackgroundTransparency = 1;
	v506.TextStrokeTransparency = 0;
	v506.TextXAlignment = Enum.TextXAlignment.Left;
	v506.Size = UDim2.new(0, 120, 0, 24);
	v506.Position = UDim2.new(0, 0, 0, 26);
	v506.Text = "";
	v506.TextSize = 16;
	v506.Font = Enum.Font.Gotham;
	local v517 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\202\236\213\67\228\194\242\221\102\254\202", "\33\139\163\128\185"), v447);
	v517.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\81\87\22\214\82\89\8\202\95", "\190\55\56\100");
	v517.Size = UDim2.new(5, 0, 6, 0);
	v517.AlwaysOnTop = true;
	v517.ClipsDescendants = false;
	local v522 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\112\189\61\19\22", "\147\54\207\92\126\115\131"), v517);
	v522.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\5\52\52\113\25\118\15\48\39", "\30\109\81\85\29\109");
	v522.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	v522.BorderColor3 = Color3.fromRGB(0, 0, 0);
	v522.Size = UDim2.new(0.04, 0, 0.9, 0);
	v522.Position = UDim2.new(0, 0, 0.05, 0);
	local v528 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\99\85\187\51", "\156\159\17\52\214\86\190"), v522);
	v528.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\172\238\175", "\220\206\143\221");
	v528.BorderSizePixel = 0;
	v528.BackgroundColor3 = Color3.fromRGB(94, 255, 69);
	v528.AnchorPoint = Vector2.new(0, 1);
	v528.Position = UDim2.new(0, 0, 1, 0);
	v528.Size = UDim2.new(1, 0, 1, 0);
	local v535 = coroutine.create(function()
		while task.wait(0.1) do
			if (v446.Character and v446.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\174\104\32\22\214\195\219\130\79\34\24\204\252\211\148\105", "\178\230\29\77\119\184\172")) and v446.Character.Humanoid and (v446.Character.Humanoid.Health > 0)) then
				v447.Adornee = v446.Character.HumanoidRootPart;
				v471.Adornee = v446.Character.HumanoidRootPart;
				v489.Adornee = v446.Character.HumanoidRootPart;
				v517.Adornee = v446.Character.HumanoidRootPart;
				if v16 then
					local v613 = true;
					if not v10.ESP_EnablTeamCheck then
						if (v446.Team == v2.Team) then
							v613 = false;
						end
					end
					if v613 then
						v447.Enabled = true;
						v471.Enabled = true;
						v489.Enabled = true;
						v517.Enabled = true;
					else
						v447.Enabled = false;
						v471.Enabled = false;
						v489.Enabled = false;
						v517.Enabled = false;
					end
					v453.Visible = v10.ESP_Boundingbox;
					if v10.ESP_Showhealth then
						local v649 = v446.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\221\171\7\26\121\247\252\186", "\152\149\222\106\123\23"));
						if v649 then
							v506.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\245\35\247\79\161\213\124\182", "\213\189\70\150\35") .. math.floor(v649.Health);
							v528.Size = UDim2.new(1, 0, v649.Health / v649.MaxHealth, 0);
						end
						local v650 = v10.ESP_b_ht;
						if (v650 == LUAOBFUSACTOR_DECRYPT_STR_0("\123\80\108\28", "\104\47\53\20")) then
							v522.Visible = false;
							v506.Visible = true;
						elseif (v650 == LUAOBFUSACTOR_DECRYPT_STR_0("\129\77\147", "\111\195\44\225\124\220")) then
							v506.Visible = false;
							v522.Visible = true;
						else
							v506.Visible = true;
							v522.Visible = true;
						end
					else
						v506.Visible = false;
						v522.Visible = false;
					end
					v477.Visible = v10.ESP_Showname;
					if (v10.ESP_Showdistance and v2.Character and v2.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\240\83\13\114\165\164\209\66\50\124\164\191\232\71\18\103", "\203\184\38\96\19\203"))) then
						local v653 = (v2.Character.HumanoidRootPart.Position - v446.Character.HumanoidRootPart.Position).magnitude;
						v495.Visible = true;
						v495.Text = "📏 " .. string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\124\61\41\71", "\174\89\19\25\33"), v653) .. "m";
						local v656 = math.clamp(v653 / 150, 0, 1);
						local v657 = Color3.new(1 - (v656 * 0.5), 1 - (v656 * 0.8), 1 - v656);
						v495.TextColor3 = v657;
					else
						v495.Visible = false;
					end
					if v10.ESP_UseTeamColor then
						local v660 = v446.TeamColor.Color;
						v457.BackgroundColor3 = v660;
						v460.BackgroundColor3 = v660;
						v464.BackgroundColor3 = v660;
						v467.BackgroundColor3 = v660;
						v506.TextColor3 = v660;
						v477.TextColor3 = v660;
					else
						local v667 = Color3.fromRGB(255, 255, 255);
						v457.BackgroundColor3 = v667;
						v460.BackgroundColor3 = v667;
						v464.BackgroundColor3 = v667;
						v467.BackgroundColor3 = v667;
						v506.TextColor3 = v667;
						v477.TextColor3 = v667;
					end
				else
					v447.Enabled = false;
					v471.Enabled = false;
					v489.Enabled = false;
					v517.Enabled = false;
				end
			else
				v447.Enabled = false;
				v471.Enabled = false;
				v489.Enabled = false;
				v517.Enabled = false;
				v447.Adornee = nil;
				v471.Adornee = nil;
				v489.Adornee = nil;
				v517.Adornee = nil;
			end
			if not v0:FindFirstChild(v446.Name) then
				local v593 = v237:FindFirstChild(v446.Name);
				if v593 then
					v593:Destroy();
				end
				coroutine.yield();
			end
		end
	end);
	coroutine.resume(v535);
end
for v536, v537 in next, v0:GetPlayers() do
	if (v537 ~= v2) then
		AddBox(v537);
	end
end
v0.PlayerAdded:Connect(function(v538)
	if (v538 ~= v2) then
		AddBox(v538);
	end
end);
local v239 = false;
local v240 = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\27\64\77\251\130", "\107\79\114\50\46\151\231"));
v240.Position = Vector2.new(v3.ViewportSize.X / 2, v3.ViewportSize.Y / 2);
v240.Radius = _G.sizeof;
v240.Color = _G.CircleColor;
v240.Visible = _G.CircleVisible;
v240.NumSides = _G.CircleSides;
v240.Filled = false;
v240.Transparency = _G.fovTransparency;
v240.Thickness = 0;
local function v249()
	local v539 = nil;
	local v540 = _G.sizeof;
	for v557, v558 in next, v0:GetChildren() do
		if (v558.Name ~= v2.Name) then
			if (_G.TeamCheckOn == true) then
				if (v558.Team ~= v2.Team) then
					if (v558.Character and v558.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\17\179\184\40\132\54\190\196\11\169\186\61\186\56\165\212", "\160\89\198\213\73\234\89\215")) and v558.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\100\185\255\203\71\120\176", "\165\40\17\212\158")) and (v558.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\205\204\5\50\40\234\208\12", "\70\133\185\104\83")).Health ~= 0)) then
						local v674 = v3:WorldToScreenPoint(v558.Character.HumanoidRootPart.Position);
						local v675 = (Vector2.new(v5:GetMouseLocation().X, v5:GetMouseLocation().Y) - Vector2.new(v674.X, v674.Y)).Magnitude;
						if (v675 < v540) then
							v539 = v558;
						end
					end
				end
			elseif (v558.Character and v558.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\44\80\73\43\199\11\76\64\24\198\11\81\116\43\219\16", "\169\100\37\36\74")) and v558.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\40\146\175\81\14\136\171\84", "\48\96\231\194")) and (v558.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\224\79\3\44\23\215\166\135", "\227\168\58\110\77\121\184\207")).Health ~= 0)) then
				local v627 = v3:WorldToScreenPoint(v558.Character.HumanoidRootPart.Position);
				local v628 = (Vector2.new(v5:GetMouseLocation().X, v5:GetMouseLocation().Y) - Vector2.new(v627.X, v627.Y)).Magnitude;
				if (v628 < v540) then
					v539 = v558;
				end
			end
		end
	end
	return v539;
end
v5.InputBegan:Connect(function(v541)
	if (v541.UserInputType == Enum.UserInputType.MouseButton2) then
		v239 = true;
	end
end);
v5.InputEnded:Connect(function(v542)
	if (v542.UserInputType == Enum.UserInputType.MouseButton2) then
		v239 = false;
	end
end);
v6.RenderStepped:Connect(function()
	v240.Position = Vector2.new(v5:GetMouseLocation().X, v5:GetMouseLocation().Y);
	v240.Radius = _G.sizeof;
	v240.Color = _G.CircleColor;
	v240.Visible = _G.CircleVisible;
	v240.NumSides = _G.CircleSides;
	v240.Filled = false;
	v240.Transparency = _G.fovTransparency;
	v240.Thickness = 0;
	if ((v239 == true) and (v18 == true)) then
		local v572 = v249();
		if (v572 and v572.Character and v572.Character:FindFirstChild(_G.Aimpart)) then
			v4:Create(v3, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\88\26\173\65\188\222", "\197\27\92\223\32\209\187\17")]=CFrame.new(v3.CFrame.Position, v572.Character[_G.Aimpart].Position)}):Play();
		end
	end
end);
v4:Create(v53, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\86\217\254", "\155\99\63\163")]=UDim2.new(0, 260, 0, 100)}):Play();
wait(0.7);
local v250 = 0;
local function v251()
	if (v250 >= 100) then
		return;
	end
	v250 = v250 + math.random(2, 6);
	if (v250 > 100) then
		v250 = 100;
	end
	v4:Create(v81, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\177\216\187\136", "\228\226\177\193\237\217")]=UDim2.new(v250 / 100, 0, 1, 0)}):Play();
	v87.Text = v250 .. "%";
	if (v250 < 100) then
		wait(0.07);
		v251();
	end
end
v251();
wait(1.8);
v4:Create(v53, TweenInfo.new(0.4), {[LUAOBFUSACTOR_DECRYPT_STR_0("\22\177\32\237\51\162\44\243\58\180\23\244\53\190\48\246\53\162\38\232\55\169", "\134\84\208\67")]=1}):Play();
wait(0.4);
v53.Visible = false;
v90.Visible = true;
v90.BackgroundTransparency = 1;
v4:Create(v90, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\49\173\133\87\20\190\137\73\29\168\178\78\18\162\149\76\18\190\131\82\16\181", "\60\115\204\230")]=0.1}):Play();
