-- This file was generated using Luraph Obfuscator v11.5 by memcorrupt.

local lIlI1IIi1iIIl1lllill1 = assert local IiI11iIlliI1IIilii1 = select local liIi1iliIilllill1I1 = tonumber local lIlli1lI1IliIlllIil1l = unpack local lI1IllI1iiIII1llli1 = pcall local lII1iIliIl1iliIllii = setfenv local lIl1IliI111IllI1liiii = setmetatable local i11ilI1IilililIiIII = type local lIll1IIi1I1I1iiIIii11 = getfenv local llI1l1iIIiI11i1iiIi = tostring local lIII1l11I1i1il1l1ll = error local ilIiIliI1IiiIIlll1l = string.sub local Il11lli1iilI11iIii1 = string.byte local lll1i1iiIIl1Ii1Ilii = string.char local il1iI1lIlIiI11Ii1Ii = string.rep local lIllIill11l1l1I11II = string.gsub local lIiiiI11IiiiIII11iI = string.match local il1liiIIIII11iiilii = 1 local function lIli1IlIIIlI1iil1IIIl(IiIIillii1I1lIi1iII, I1ilI1lIi11lIlI1li1) local lIli1liI1l1ll11iI11 IiIIillii1I1lIi1iII = lIllIill11l1l1I11II(ilIiIliI1IiiIIlll1l(IiIIillii1I1lIi1iII, 5), "..", function(iI1lIl1I111ll1lliiI) if Il11lli1iilI11iIii1(iI1lIl1I111ll1lliiI, 2) == 71 then lIli1liI1l1ll11iI11 = liIi1iliIilllill1I1(ilIiIliI1IiiIIlll1l(iI1lIl1I111ll1lliiI, 1, 1)) return "" else local l1iiIlIiii1Ili1Ii1I = lll1i1iiIIl1Ii1Ilii(liIi1iliIilllill1I1(iI1lIl1I111ll1lliiI, 16)) if lIli1liI1l1ll11iI11 then local ili11l1iIiiIiilIi1l = il1iI1lIlIiI11Ii1Ii(l1iiIlIiii1Ili1Ii1I, lIli1liI1l1ll11iI11) lIli1liI1l1ll11iI11 = nil return ili11l1iIiiIiilIi1l else return l1iiIlIiii1Ili1Ii1I end end end) local function ili1l1IlIilIII1I11i() local lIlIlil11iil11IliIII1 = Il11lli1iilI11iIii1(IiIIillii1I1lIi1iII, il1liiIIIII11iiilii, il1liiIIIII11iiilii) il1liiIIIII11iiilii = il1liiIIIII11iiilii + 1 return lIlIlil11iil11IliIII1 end local function lIl11i11llIlIIilIIl() local lIlIlil11iil11IliIII1, l1iiIlIiii1Ili1Ii1I, ili11l1iIiiIiilIi1l, I11iliiIII1IilIiII1 = Il11lli1iilI11iIii1(IiIIillii1I1lIi1iII, il1liiIIIII11iiilii, il1liiIIIII11iiilii + 3) il1liiIIIII11iiilii = il1liiIIIII11iiilii + 4 return I11iliiIII1IilIiII1 * 16777216 + ili11l1iIiiIiilIi1l * 65536 + l1iiIlIiii1Ili1Ii1I * 256 + lIlIlil11iil11IliIII1 end local function lIl11lI1iiiiIi1I1lI11(i1lii111i1Ii1Ili1Ii, iI1liI1Ii11l11i11l1, lIll1lIllili1Ill1Ii) if lIll1lIllili1Ill1Ii then local liiil1Ii1Ii1i111lIi, iill1lIlili11ilili1 = 0, 0 for Ill1iIIllI1IIIilili = iI1liI1Ii11l11i11l1, lIll1lIllili1Ill1Ii do liiil1Ii1Ii1i111lIi = liiil1Ii1Ii1i111lIi + 2 ^ iill1lIlili11ilili1 * lIl11lI1iiiiIi1I1lI11(i1lii111i1Ii1Ili1Ii, Ill1iIIllI1IIIilili) iill1lIlili11ilili1 = iill1lIlili11ilili1 + 1 end return liiil1Ii1Ii1i111lIi else local iliii1ilil1lllII1Il = 2 ^ (iI1liI1Ii11l11i11l1 - 1) return iliii1ilil1lllII1Il <= i1lii111i1Ii1Ili1Ii % (iliii1ilil1lllII1Il + iliii1ilil1lllII1Il) and 1 or 0 end end local function lIlIIiIlIiiIIIIIi1iIl() local lIlIlil11iil11IliIII1, l1iiIlIiii1Ili1Ii1I = lIl11i11llIlIIilIIl(), lIl11i11llIlIIilIIl() if lIlIlil11iil11IliIII1 == 0 and l1iiIlIiii1Ili1Ii1I == 0 then return 0 end return (-2 * lIl11lI1iiiiIi1I1lI11(l1iiIlIiii1Ili1Ii1I, 32) + 1) * 2 ^ (lIl11lI1iiiiIi1I1lI11(l1iiIlIiii1Ili1Ii1I, 21, 31) - 1023) * ((lIl11lI1iiiiIi1I1lI11(l1iiIlIiii1Ili1Ii1I, 1, 20) * 4294967296 + lIlIlil11iil11IliIII1) / 4503599627370496 + 1) end local function llii1IlI1I11liilili(ii1iiIil1lIlIilI11i) local iI1lilIII11lilI1iII = { Il11lli1iilI11iIii1(IiIIillii1I1lIi1iII, il1liiIIIII11iiilii, il1liiIIIII11iiilii + 3) } il1liiIIIII11iiilii = il1liiIIIII11iiilii + 4 local lIllilil1l1Ilil1Ili1i = { nil, nil, nil, nil, nil, nil, nil, nil } for Ill1iIIllI1IIIilili = 1, 8 do lIllilil1l1Ilil1Ili1i[Ill1iIIllI1IIIilili] = lIl11lI1iiiiIi1I1lI11(ii1iiIil1lIlIilI11i, Ill1iIIllI1IIIilili) end local lIlIilI111illI1Ii1iii = "" for Ill1iIIllI1IIIilili = 1, 4 do local liiil1Ii1Ii1i111lIi, iill1lIlili11ilili1 = 0, 0 for lIl11iili1iIIIIiii11I = 1, 8 do local lIl1I1I1li1l1IIllilIl = lIl11lI1iiiiIi1I1lI11(iI1lilIII11lilI1iII[Ill1iIIllI1IIIilili], lIl11iili1iIIIIiii11I) if lIllilil1l1Ilil1Ili1i[lIl11iili1iIIIIiii11I] == 1 then lIl1I1I1li1l1IIllilIl = lIl1I1I1li1l1IIllilIl == 1 and 0 or 1 end liiil1Ii1Ii1i111lIi = liiil1Ii1Ii1i111lIi + 2 ^ iill1lIlili11ilili1 * lIl1I1I1li1l1IIllilIl iill1lIlili11ilili1 = iill1lIlili11ilili1 + 1 end lIlIilI111illI1Ii1iii = lIlIilI111illI1Ii1iii .. lIlIilI111illI1Ii1iii.char(liiil1Ii1Ii1i111lIi) end local lIlIlil11iil11IliIII1, l1iiIlIiii1Ili1Ii1I, ili11l1iIiiIiilIi1l, I11iliiIII1IilIiII1 = Il11lli1iilI11iIii1(lIlIilI111illI1Ii1iii, 1, 4) return I11iliiIII1IilIiII1 * 16777216 + ili11l1iIiiIiilIi1l * 65536 + l1iiIlIiii1Ili1Ii1I * 256 + lIlIlil11iil11IliIII1 end local function ilIilll1l11I1lliIi1(ii1iiIil1lIlIilI11i) local lIlllIIi1iili1IilIliI = lIl11i11llIlIIilIIl() il1liiIIIII11iiilii = il1liiIIIII11iiilii + lIlllIIi1iili1IilIliI local lIllilil1l1Ilil1Ili1i = { nil, nil, nil, nil, nil, nil, nil, nil } for Ill1iIIllI1IIIilili = 1, 8 do lIllilil1l1Ilil1Ili1i[Ill1iIIllI1IIIilili] = lIl11lI1iiiiIi1I1lI11(ii1iiIil1lIlIilI11i, Ill1iIIllI1IIIilili) end local lIlIilI111illI1Ii1iii = "" for Ill1iIIllI1IIIilili = 1, lIlllIIi1iili1IilIliI do local liiil1Ii1Ii1i111lIi, iill1lIlili11ilili1 = 0, 0 for lIl11iili1iIIIIiii11I = 1, 8 do local lIl1I1I1li1l1IIllilIl = lIl11lI1iiiiIi1I1lI11(Il11lli1iilI11iIii1(IiIIillii1I1lIi1iII, il1liiIIIII11iiilii - lIlllIIi1iili1IilIliI + Ill1iIIllI1IIIilili - 1), lIl11iili1iIIIIiii11I) if lIllilil1l1Ilil1Ili1i[lIl11iili1iIIIIiii11I] == 1 then lIl1I1I1li1l1IIllilIl = lIl1I1I1li1l1IIllilIl == 1 and 0 or 1 end liiil1Ii1Ii1i111lIi = liiil1Ii1Ii1i111lIi + 2 ^ iill1lIlili11ilili1 * lIl1I1I1li1l1IIllilIl iill1lIlili11ilili1 = iill1lIlili11ilili1 + 1 end lIlIilI111illI1Ii1iii = lIlIilI111illI1Ii1iii .. lIlIilI111illI1Ii1iii.char(liiil1Ii1Ii1i111lIi) end return lIlIilI111illI1Ii1iii end local lIlIiii1Il11111iil1il = ili1l1IlIilIII1I11i() local ii1Iili1l1il1il1liI = ili1l1IlIilIII1I11i() local function iliIiiIl11IiiIi1lIi() local ii1II11iIl11l1IIIIi = { [48709] = {}, [117584] = {}, [92562] = {}, [91310] = {} } local lIlIiiiIll1liii11l1I1 = #{2889} ili1l1IlIilIII1I11i() local IIIiI1Ii11li1lii1Il = lIl11i11llIlIIilIIl() for Ill1iIIllI1IIIilili = lIlIiiiIll1liii11l1I1, IIIiI1Ii11li1lii1Il do ii1II11iIl11l1IIIIi[117584][Ill1iIIllI1IIIilili] = lIl11i11llIlIIilIIl() end ili1l1IlIilIII1I11i() ii1II11iIl11l1IIIIi[105899] = ili1l1IlIilIII1I11i() ili1l1IlIilIII1I11i() lIl11i11llIlIIilIIl() ii1II11iIl11l1IIIIi[66576] = ili1l1IlIilIII1I11i() lIl11i11llIlIIilIIl() local IIIiI1Ii11li1lii1Il = lIl11i11llIlIIilIIl() for Ill1iIIllI1IIIilili = lIlIiiiIll1liii11l1I1, IIIiI1Ii11li1lii1Il do ii1II11iIl11l1IIIIi[48709][Ill1iIIllI1IIIilili - lIlIiiiIll1liii11l1I1] = iliIiiIl11IiiIi1lIi() end local IIIiI1Ii11li1lii1Il = lIl11i11llIlIIilIIl() - (#{ 2622, 4727, 44, 4615, 1362, 5226, 1358, 6964, 6295, 5023, 3279, 4352, 2726, 4046, 4398, 6050, 1082, 543, 4795, 4232 } + 133693) for Ill1iIIllI1IIIilili = lIlIiiiIll1liii11l1I1, IIIiI1Ii11li1lii1Il do local lIlIii1111Ilil1iilllI = {} local Iiil1IiiIIIl1lIlilI = llii1IlI1I11liilili(ii1Iili1l1il1il1liI) lIlIii1111Ilil1iilllI[114141] = lIl11lI1iiiiIi1I1lI11(Iiil1IiiIIIl1lIlilI, #{ 5454, 1229, 4106, 3514, 5568, 5609, 3050, 821, 2115, 6448 }, #{ 6195, 303, 3017, 6922, 162, 1000, 1586, 5289, 2414, 1383, 4336, 2346, 2831, 1283, 6866, 2846, 2671, 2048 }) lIlIii1111Ilil1iilllI[102033] = lIl11lI1iiiiIi1I1lI11(Iiil1IiiIIIl1lIlilI, #{6191}, #{ 3455, 4351, 4918, 2644, 5772, 3476, 4187, 2792, 5407, 2662, 2066, 2493, 5951, 3270, 6372, 6187, 4946, 1759 }) lIlIii1111Ilil1iilllI[32174] = lIl11lI1iiiiIi1I1lI11(Iiil1IiiIIIl1lIlilI, #{ 6126, 5286, 5998, 5111, 3106, 3115, 3119, 3857, 6967, 3106, 5525, 5871, 1108, 5718, 980, 3809, 3587, 3141, 5936, 5838, 999 } + 6, #{ 4837, 6057, 4659, 315, 647, 3118, 2737, 5062, 6565, 3092, 6900, 5545, 6000, 5838, 4692, 2438, 5019, 1224, 4022, 685, 748, 6657 } + 10) lIlIii1111Ilil1iilllI[118746] = lIl11lI1iiiiIi1I1lI11(Iiil1IiiIIIl1lIlilI, #{ 4007, 5611, 2343, 1060, 4000, 5442, 183, 3591, 920, 2705 }, #{ 6539, 959, 2359, 5542, 2533, 910, 4187, 1696, 4156, 3026, 1233, 1293, 1751, 6170, 6905, 6919, 2181, 2645 }) lIlIii1111Ilil1iilllI[36234] = lIl11lI1iiiiIi1I1lI11(Iiil1IiiIIIl1lIlilI, #{5768}, #{ 4458, 172, 6727, 2836, 922, 4856, 4848, 1952, 2806 }) lIlIii1111Ilil1iilllI[70524] = lIl11lI1iiiiIi1I1lI11(Iiil1IiiIIIl1lIlilI, #{ 611, 352, 4699, 327, 5541, 1834, 4816, 27, 5535, 6771, 4155, 6243, 2265, 461, 6529, 6571, 6857, 2048, 3746 }, #{ 4243, 460, 3116, 5570, 586, 4862, 6450, 1273, 3961, 5035, 1505, 1407, 5239, 5442, 4953, 4889, 2278, 3139, 2538, 5128, 6861, 1655, 1244 } + 3) lIlIii1111Ilil1iilllI[45808] = lIl11lI1iiiiIi1I1lI11(Iiil1IiiIIIl1lIlilI, #{781}, #{ 4593, 3888, 5131, 3146, 6359, 5821, 2865, 4328, 4360, 5873, 1708, 1579, 194, 1727, 1819, 1951, 6916, 4968 }) lIlIii1111Ilil1iilllI[4472] = lIl11lI1iiiiIi1I1lI11(Iiil1IiiIIIl1lIlilI, #{6191}, #{ 3455, 4351, 4918, 2644, 5772, 3476, 4187, 2792, 5407, 2662, 2066, 2493, 5951, 3270, 6372, 6187, 4946, 1759 }) ii1II11iIl11l1IIIIi[91310][Ill1iIIllI1IIIilili] = lIlIii1111Ilil1iilllI end local IIIiI1Ii11li1lii1Il = lIl11i11llIlIIilIIl() - (#{ 5771, 3945, 2569, 4683, 2454, 6280, 5930, 6599, 1537, 6816, 1857, 6760, 3920, 6202, 5867, 1629, 5117, 2312, 3840, 5804 } + 133723) for Ill1iIIllI1IIIilili = lIlIiiiIll1liii11l1I1, IIIiI1Ii11li1lii1Il do local ilIlllliiilli11il1i = {} local i11ilI1IilililIiIII = ili1l1IlIilIII1I11i() if i11ilI1IilililIiIII == #{ 3457, 3210, 6744, 5271, 1889, 2950, 3212, 1690, 2944, 3249, 2954, 5269, 6527, 3675, 4083, 1119, 653, 6528, 2279, 5747, 3039, 6880, 371 } + 161 then ilIlllliiilli11il1i[111688] = ilIilll1l11I1lliIi1(lIlIiii1Il11111iil1il) end if i11ilI1IilililIiIII == #{ 1066, 1447, 2729, 806, 2061, 4839, 4627, 6456, 261, 472, 676, 914, 1698, 208, 6721, 2791, 3873, 5950, 5776, 4962, 1989, 254 } + 136 then ilIlllliiilli11il1i[111688] = ilIilll1l11I1lliIi1(lIlIiii1Il11111iil1il) end if i11ilI1IilililIiIII == #{ 3945, 3246, 941, 3237, 5144, 581, 3392, 2471, 2123, 558, 5085, 906, 6340, 4881, 2559, 623 } then ilIlllliiilli11il1i[111688] = lIlIIiIlIiiIIIIIi1iIl() end if i11ilI1IilililIiIII == #{ 2015, 6955, 3941, 1639, 4488, 3281, 1914, 648, 889, 6181, 6901, 6402, 4922, 4829, 1191, 5464, 5957, 4513, 1117, 1266, 4383 } + 156 then ilIlllliiilli11il1i[111688] = #{ 5846, 5488, 6280, 37, 4779, 1512, 2705, 4974, 340, 5640, 1021, 1169, 5931, 2426, 1843, 3277, 6064, 476, 293, 2750, 3702 } + 116566 == #{ 5846, 5488, 6280, 37, 4779, 1512, 2705, 4974, 340, 5640, 1021, 1169, 5931, 2426, 1843, 3277, 6064, 476, 293, 2750, 3702 } + 116566 end if i11ilI1IilililIiIII == #{ 1099, 6114, 3162, 1946, 2538, 6004, 6880, 2173, 5741, 6204, 3190, 5919, 3053, 671, 5673, 5692, 5350, 5571, 1571, 5959, 4730 } + 60 then ilIlllliiilli11il1i[111688] = lIlIIiIlIiiIIIIIi1iIl() end if i11ilI1IilililIiIII == #{ 3631, 61, 1029, 576, 2648, 4996, 1875, 5627, 4216, 6889, 3315, 3712, 4622, 4859, 5421, 4446, 4067, 5930, 1576, 4668 } + 23 then ilIlllliiilli11il1i[111688] = lIl11i11llIlIIilIIl() end if i11ilI1IilililIiIII == #{ 3412, 1374, 654, 1045, 2632, 1554, 4921, 5188, 3593, 797, 5352, 3586, 2344, 1153, 2163, 1730, 896, 2280, 3181, 2049, 4420 } + 231 then ilIlllliiilli11il1i[111688] = #{ 5393, 3576, 5696, 307, 3035, 4292, 3482, 1460, 2386, 5856, 5730, 3708, 3657, 6910, 3699, 3746, 476, 3678, 3806, 5571, 3082, 4170, 6746, 5124 } + 131541 == #{ 3846, 174, 959, 1406, 3939, 4943, 3130, 887, 6850, 5013, 6225, 71, 6538, 3259, 2183, 2910, 4366, 2725, 6781, 3546, 5640, 3712, 4513 } + 25067 end if i11ilI1IilililIiIII == #{ 3513, 4328, 1497, 3393, 1965, 273, 2445, 5740, 3708, 6885, 1610, 1823, 1465, 3946, 2654, 6038, 4781, 4965, 1939, 4108, 730, 1413, 6051 } + 2 then ilIlllliiilli11il1i[111688] = ili1l1IlIilIII1I11i() end if i11ilI1IilililIiIII == #{ 4655, 5728, 2763, 1700, 2621, 2178, 4360, 1369, 2845, 5097, 1165, 3834, 5090, 4007, 3117, 5809, 3072, 2874, 4722, 997, 6512 } + 126 then ilIlllliiilli11il1i[111688] = lIlIIiIlIiiIIIIIi1iIl() + lIlIIiIlIiiIIIIIi1iIl() end ii1II11iIl11l1IIIIi[92562][Ill1iIIllI1IIIilili - lIlIiiiIll1liii11l1I1] = ilIlllliiilli11il1i end lIl11i11llIlIIilIIl() ii1II11iIl11l1IIIIi[54857] = ili1l1IlIilIII1I11i() ili1l1IlIilIII1I11i() lIl11i11llIlIIilIIl() return ii1II11iIl11l1IIIIi end local function l1ilIiIi1ll1lIilIIl(ii1II11iIl11l1IIIIi, I1ilI1lIi11lIlI1li1, I1ll1I1iiliIi1II1iI) local ll11iiIliliIIIiI1li, llI1I1lIII1l1lillli = -1, 7 local illilIll1l1iillIi1i = ii1II11iIl11l1IIIIi[91310] local lIl1IIIIIi1li1lII1lIl = lIl1IliI111IllI1liiii({}, { __index = function(lIlIlI11Ii1Ili1IiI1lI, ll1i1l1I11IIIIi1lI1) local lIlIilI111illI1Ii1iii = ii1II11iIl11l1IIIIi[92562][ll1i1l1I11IIIIi1lI1] if ilIiIliI1IiiIIlll1l(i11ilI1IilililIiIII(lIlIilI111illI1Ii1iii[111688]), 1, 1) == "s" then return { [111688] = ilIiIliI1IiiIIlll1l(lIlIilI111illI1Ii1iii[111688], 3) } end return lIlIilI111illI1Ii1iii end }) local iill11II1ili1llIlII = 105899 local l1Ill1i1IliliIl111i = ii1II11iIl11l1IIIIi[48709] local iii1l1Ii1lIill1I1li = 111688 local lIlIiIiIii11Il11llIli = ii1II11iIl11l1IIIIi[66576] local IlIi11I1ill1iiiIi1l = 32174 local i1IliIiiIlil1iI1l1l = ii1II11iIl11l1IIIIi[117584] local lIliilIllIl1IIil11lII = 36234 local function li11IlI1I1llI1i111l(...) local iIIIIi1liIiiIliIili = 0 local Iil11i1IIi11I1IlIiI = { lIlli1lI1IliIlllIil1l({}, 1, ii1II11iIl11l1IIIIi[54857]) } local il11ili11lliiIllIii = 1 local lil1illII1iiIililil = {} local li1iIIIllilli11lIII = {} local l1iIlIII11I11ilIllI = 1 local I1ilI1lIi11lIlI1li1 = lIll1IIi1I1I1iiIIii11() local i1i1l1IlillilI1l1I1 = { ... } local lIlllill1IiIilIi1iiii = {} local iiliIiIii11Ii1lllIl = #i1i1l1IlillilI1l1I1 - 1 for Ill1iIIllI1IIIilili = 0, iiliIiIii11Ii1lllIl do if lIlIiIiIii11Il11llIli >= Ill1iIIllI1IIIilili + 1 then Iil11i1IIi11I1IlIiI[Ill1iIIllI1IIIilili] = i1i1l1IlillilI1l1I1[Ill1iIIllI1IIIilili + 1] end lIlllill1IiIilIi1iiii[Ill1iIIllI1IIIilili] = i1i1l1IlillilI1l1I1[Ill1iIIllI1IIIilili + 1] end local function liI111i1l1liilil1Ii(...) local ili11l1iIiiIiilIi1l = IiI11iIlliI1IIilii1("#", ...) local lIlIlI11Ii1Ili1IiI1lI = { ... } return ili11l1iIiiIiilIi1l, lIlIlI11Ii1Ili1IiI1lI end local liil11iII1Il1iIIIiI = #{ 4261, 5788, 1380, 2812, 2128, 68, 5865, 1427, 2785, 6538, 2902, 40, 381, 2109, 1241, 2342, 2666, 4639, 4601, 5336, 1727, 4226, 3446 } + 131048 local lIlil1IiliiiIIIl1ilIi local IiillIiI1Iii1illilI = { nil, nil, function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local ii1iiIil1lIlIilI11i if I11I1Iili1IiI1IliIl == 100000 then ii1iiIil1lIlIilI11i = Iil11i1IIi11I1IlIiI[251] else ii1iiIil1lIlIilI11i = lIl1IIIIIi1li1lII1lIl[I11I1Iili1IiI1IliIl][iii1l1Ii1lIill1I1li] end I1ilI1lIi11lIlI1li1[ii1iiIil1lIlIilI11i] = Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] end, function(li1iIl1l1iii111l11i) local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] if liIlIi1iIIiIililliI == 213 then return lIlil1IiliiiIIIl1ilIi[13]({ [70524] = (i11liiI1ililii1I111 - 76) % 256, [36234] = (lilII1IlilIllli11lI - 76) % 256, [45808] = 0 }) end if liIlIi1iIIiIililliI == 242 then return lIlil1IiliiiIIIl1ilIi[9]({ [70524] = (i11liiI1ililii1I111 - 208) % 256, [118746] = (lilII1IlilIllli11lI - 208) % 256, [45808] = 0 }) end for Ill1iIIllI1IIIilili = i11liiI1ililii1I111, lilII1IlilIllli11lI do Iil11i1IIi11I1IlIiI[Ill1iIIllI1IIIilili] = nil end end, nil, nil, function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I) local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] if liIlIi1iIIiIililliI > 255 then liIlIi1iIIiIililliI = lIl1IIIIIi1li1lII1lIl[liIlIi1iIIiIililliI - 256][iii1l1Ii1lIill1I1li] else liIlIi1iIIiIililliI = Iil11i1IIi11I1IlIiI[liIlIi1iIIiIililliI] end Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = Iil11i1IIi11I1IlIiI[lilII1IlilIllli11lI][liIlIi1iIIiIililliI] end, nil, function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] lilII1IlilIllli11lI = Iil11i1IIi11I1IlIiI[lilII1IlilIllli11lI] if liIlIi1iIIiIililliI > 255 then liIlIi1iIIiIililliI = lIl1IIIIIi1li1lII1lIl[liIlIi1iIIiIililliI - 256][iii1l1Ii1lIill1I1li] else liIlIi1iIIiIililliI = Iil11i1IIi11I1IlIiI[liIlIi1iIIiIililliI] end Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 1] = lilII1IlilIllli11lI Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = lilII1IlilIllli11lI[liIlIi1iIIiIililliI] end, nil, nil, function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil, l1lIi1iII1IIlllIlli, iliilIIilIiIiliiIiI) local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local iilIiII1l11iliIlIiI = Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 2] local il1liiIIIII11iiilii = Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] + iilIiII1l11iliIlIiI Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = il1liiIIIII11iiilii if iilIiII1l11iliIlIiI > 0 then if il1liiIIIII11iiilii <= Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 1] then il11ili11lliiIllIii = il11ili11lliiIllIii + lIl11I1lilII1iiililll Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 3] = il1liiIIIII11iiilii end elseif il1liiIIIII11iiilii >= Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 1] then il11ili11lliiIllIii = il11ili11lliiIllIii + lIl11I1lilII1iiililll Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 3] = il1liiIIIII11iiilii end end, nil, nil, nil, nil, function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = lIl1IIIIIi1li1lII1lIl[I11I1Iili1IiI1IliIl][iii1l1Ii1lIill1I1li] end, function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local lIl1i1lll1Illll1Iilil = i11liiI1ililii1I111 + 2 local lIll1i1ll11IiIIliliil = { Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111](Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 1], Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 2]) } for Ill1iIIllI1IIIilili = 1, liIlIi1iIIiIililliI do Iil11i1IIi11I1IlIiI[lIl1i1lll1Illll1Iilil + Ill1iIIllI1IIIilili] = lIll1i1ll11IiIIliliil[Ill1iIIllI1IIIilili] end if Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 3] ~= nil then Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 2] = Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 3] else il11ili11lliiIllIii = il11ili11lliiIllIii + 1 end end, nil, function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil, l1lIi1iII1IIlllIlli) local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local lI1lIlI11l1ii1iIII1, lll1IIlIll1lli1lIlI, lI1IlI1Iil1IIiii1II if lilII1IlilIllli11lI == 1 then return true end if lilII1IlilIllli11lI == 0 then lI1lIlI11l1ii1iIII1 = iIIIIi1liIiiIliIili else lI1lIlI11l1ii1iIII1 = i11liiI1ililii1I111 + lilII1IlilIllli11lI - 2 end lI1IlI1Iil1IIiii1II = {} lll1IIlIll1lli1lIlI = 0 for Ill1iIIllI1IIIilili = i11liiI1ililii1I111, lI1lIlI11l1ii1iIII1 do lll1IIlIll1lli1lIlI = lll1IIlIll1lli1lIlI + 1 lI1IlI1Iil1IIiii1II[lll1IIlIll1lli1lIlI] = Iil11i1IIi11I1IlIiI[Ill1iIIllI1IIIilili] end return true, lI1IlI1Iil1IIiii1II, lll1IIlIll1lli1lIlI end, nil, nil } IiillIiI1Iii1illilI[19] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = lilII1IlilIllli11lI ~= 0 if liIlIi1iIIiIililliI ~= 0 then il11ili11lliiIllIii = il11ili11lliiIllIii + 1 end end IiillIiI1Iii1illilI[5] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil, l1lIi1iII1IIlllIlli) local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] if liIlIi1iIIiIililliI == 239 then return lIlil1IiliiiIIIl1ilIi[6]({ [70524] = (i11liiI1ililii1I111 - 178) % 256, [118746] = (lilII1IlilIllli11lI - 178) % 256, [45808] = 0 }) end Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = I1ll1I1iiliIi1II1iI[lilII1IlilIllli11lI] end IiillIiI1Iii1illilI[16] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = lIlI1IIi1iIIl1lllill1(liIi1iliIilllill1I1(Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111]), "`for` initial value must be a number") Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 1] = lIlI1IIi1iIIl1lllill1(liIi1iliIilllill1I1(Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 1]), "`for` limit value must be a number") Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 2] = lIlI1IIi1iIIl1lllill1(liIi1iliIilllill1I1(Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 2]), "`for` step value must be a number") Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] - Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111 + 2] il11ili11lliiIllIii = il11ili11lliiIllIii + lIl11I1lilII1iiililll end IiillIiI1Iii1illilI[21] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local ii1iiIil1lIlIilI11i if I11I1Iili1IiI1IliIl == 100000 then ii1iiIil1lIlIilI11i = Iil11i1IIi11I1IlIiI[251] else ii1iiIil1lIlIilI11i = lIl1IIIIIi1li1lII1lIl[I11I1Iili1IiI1IliIl][iii1l1Ii1lIill1I1li] end Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = I1ilI1lIi11lIlI1li1[ii1iiIil1lIlIilI11i] end IiillIiI1Iii1illilI[15] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I) local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local i1i1l1IlillilI1l1I1, Ii1iiIliI1liiii1lll, lI1lIlI11l1ii1iIII1, lll1IIlIll1lli1lIlI i1i1l1IlillilI1l1I1 = {} if lilII1IlilIllli11lI ~= 1 then if lilII1IlilIllli11lI ~= 0 then lI1lIlI11l1ii1iIII1 = i11liiI1ililii1I111 + lilII1IlilIllli11lI - 1 else lI1lIlI11l1ii1iIII1 = iIIIIi1liIiiIliIili end lll1IIlIll1lli1lIlI = 0 for Ill1iIIllI1IIIilili = i11liiI1ililii1I111 + 1, lI1lIlI11l1ii1iIII1 do lll1IIlIll1lli1lIlI = lll1IIlIll1lli1lIlI + 1 i1i1l1IlillilI1l1I1[lll1IIlIll1lli1lIlI] = Iil11i1IIi11I1IlIiI[Ill1iIIllI1IIIilili] end lI1lIlI11l1ii1iIII1, Ii1iiIliI1liiii1lll = liI111i1l1liilil1Ii(Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111](lIlli1lI1IliIlllIil1l(i1i1l1IlillilI1l1I1, 1, lI1lIlI11l1ii1iIII1 - i11liiI1ililii1I111))) else lI1lIlI11l1ii1iIII1, Ii1iiIliI1liiii1lll = liI111i1l1liilil1Ii(Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111]()) end if liIlIi1iIIiIililliI ~= 1 then if liIlIi1iIIiIililliI ~= 0 then lI1lIlI11l1ii1iIII1 = i11liiI1ililii1I111 + liIlIi1iIIiIililliI - 2 else lI1lIlI11l1ii1iIII1 = lI1lIlI11l1ii1iIII1 + i11liiI1ililii1I111 end lll1IIlIll1lli1lIlI = 0 for Ill1iIIllI1IIIilili = i11liiI1ililii1I111, lI1lIlI11l1ii1iIII1 do lll1IIlIll1lli1lIlI = lll1IIlIll1lli1lIlI + 1 Iil11i1IIi11I1IlIiI[Ill1iIIllI1IIIilili] = Ii1iiIliI1liiii1lll[lll1IIlIll1lli1lIlI] end end iIIIIi1liIiiIliIili = lI1lIlI11l1ii1iIII1 - 1 end IiillIiI1Iii1illilI[13] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I) local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] il11ili11lliiIllIii = il11ili11lliiIllIii + lIl11I1lilII1iiililll end IiillIiI1Iii1illilI[10] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] if not not Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] == (liIlIi1iIIiIililliI == 0) then il11ili11lliiIllIii = il11ili11lliiIllIii + 1 end end IiillIiI1Iii1illilI[22] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local IlilI1I1iili11li1ll = l1Ill1i1IliliIl111i[I11I1Iili1IiI1IliIl] local lIll1ili1iII1IiliIiiI = {} local Iil1l1IlilIili111il = lIl1IliI111IllI1liiii({}, { __index = function(lIlIlI11Ii1Ili1IiI1lI, ll1i1l1I11IIIIi1lI1) local I11l1illilill11iI1I = lIll1ili1iII1IiliIiiI[ll1i1l1I11IIIIi1lI1] return I11l1illilill11iI1I[1][I11l1illilill11iI1I[2]] end, __newindex = function(lIlIlI11Ii1Ili1IiI1lI, ll1i1l1I11IIIIi1lI1, l111iIiilll1liilIIi) local I11l1illilill11iI1I = lIll1ili1iII1IiliIiiI[ll1i1l1I11IIIIi1lI1] I11l1illilill11iI1I[1][I11l1illilill11iI1I[2]] = l111iIiilll1liilIIi end }) for Ill1iIIllI1IIIilili = 1, IlilI1I1iili11li1ll[iill11II1ili1llIlII] do local lIl1I1IIi1iliIilI1I1l = illilIll1l1iillIi1i[il11ili11lliiIllIii] if lIl1I1IIi1iliIilI1I1l[IlIi11I1ill1iiiIi1l] == ll11iiIliliIIIiI1li then lIll1ili1iII1IiliIiiI[Ill1iIIllI1IIIilili - 1] = { Iil11i1IIi11I1IlIiI, lIl1I1IIi1iliIilI1I1l[lIliilIllIl1IIil11lII] } elseif lIl1I1IIi1iliIilI1I1l[IlIi11I1ill1iiiIi1l] == llI1I1lIII1l1lillli then lIll1ili1iII1IiliIiiI[Ill1iIIllI1IIIilili - 1] = { I1ll1I1iiliIi1II1iI, lIl1I1IIi1iliIilI1I1l[lIliilIllIl1IIil11lII] } end il11ili11lliiIllIii = il11ili11lliiIllIii + 1 end if IlilI1I1iili11li1ll[iill11II1ili1llIlII] > 0 then lil1illII1iiIililil[#lil1illII1iiIililil + 1] = lIll1ili1iII1IiliIiiI end local lIllllli1IiI1lIll1l1l = l1ilIiIi1ll1lIilIIl(IlilI1I1iili11li1ll, I1ilI1lIi11lIlI1li1, Iil1l1IlilIili111il) Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = lIllllli1IiI1lIll1l1l end IiillIiI1Iii1illilI[0] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I) local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] if lilII1IlilIllli11lI > 255 then lilII1IlilIllli11lI = lIl1IIIIIi1li1lII1lIl[lilII1IlilIllli11lI - 256][iii1l1Ii1lIill1I1li] else lilII1IlilIllli11lI = Iil11i1IIi11I1IlIiI[lilII1IlilIllli11lI] end if liIlIi1iIIiIililliI > 255 then liIlIi1iIIiIililliI = lIl1IIIIIi1li1lII1lIl[liIlIi1iIIiIililliI - 256][iii1l1Ii1lIill1I1li] else liIlIi1iIIiIililliI = Iil11i1IIi11I1IlIiI[liIlIi1iIIiIililliI] end Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111][lilII1IlilIllli11lI] = liIlIi1iIIiIililliI end IiillIiI1Iii1illilI[14] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI i11liiI1ililii1I111 = i11liiI1ililii1I111 ~= 0 if lilII1IlilIllli11lI > 255 then lilII1IlilIllli11lI = lIl1IIIIIi1li1lII1lIl[lilII1IlilIllli11lI - 256][iii1l1Ii1lIill1I1li] else lilII1IlilIllli11lI = Iil11i1IIi11I1IlIiI[lilII1IlilIllli11lI] end if liIlIi1iIIiIililliI > 255 then liIlIi1iIIiIililliI = lIl1IIIIIi1li1lII1lIl[liIlIi1iIIiIililliI - 256][iii1l1Ii1lIill1I1li] else liIlIi1iIIiIililliI = Iil11i1IIi11I1IlIiI[liIlIi1iIIiIililliI] end if lilII1IlilIllli11lI < liIlIi1iIIiIililliI ~= i11liiI1ililii1I111 then il11ili11lliiIllIii = il11ili11lliiIllIii + 1 end end IiillIiI1Iii1illilI[6] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] if liIlIi1iIIiIililliI == 142 then return lIlil1IiliiiIIIl1ilIi[21]({ [70524] = (i11liiI1ililii1I111 - 129) % 256, [36234] = (lilII1IlilIllli11lI - 129) % 256, [45808] = 0 }) end Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = not Iil11i1IIi11I1IlIiI[lilII1IlilIllli11lI] end IiillIiI1Iii1illilI[1] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI if lilII1IlilIllli11lI > 255 then lilII1IlilIllli11lI = lIl1IIIIIi1li1lII1lIl[lilII1IlilIllli11lI - 256][iii1l1Ii1lIill1I1li] else lilII1IlilIllli11lI = Iil11i1IIi11I1IlIiI[lilII1IlilIllli11lI] end if liIlIi1iIIiIililliI > 255 then liIlIi1iIIiIililliI = lIl1IIIIIi1li1lII1lIl[liIlIi1iIIiIililliI - 256][iii1l1Ii1lIill1I1li] else liIlIi1iIIiIililliI = Iil11i1IIi11I1IlIiI[liIlIi1iIIiIililliI] end Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = lilII1IlilIllli11lI ^ liIlIi1iIIiIililliI end IiillIiI1Iii1illilI[11] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I, i1il1Illiiil1iIiiil) local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = #Iil11i1IIi11I1IlIiI[lilII1IlilIllli11lI] end IiillIiI1Iii1illilI[2] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I) local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] if lilII1IlilIllli11lI > 255 then lilII1IlilIllli11lI = lIl1IIIIIi1li1lII1lIl[lilII1IlilIllli11lI - 256][iii1l1Ii1lIill1I1li] else lilII1IlilIllli11lI = Iil11i1IIi11I1IlIiI[lilII1IlilIllli11lI] end if liIlIi1iIIiIililliI > 255 then liIlIi1iIIiIililliI = lIl1IIIIIi1li1lII1lIl[liIlIi1iIIiIililliI - 256][iii1l1Ii1lIill1I1li] else liIlIi1iIIiIililliI = Iil11i1IIi11I1IlIiI[liIlIi1iIIiIililliI] end Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] = lilII1IlilIllli11lI % liIlIi1iIIiIililliI end IiillIiI1Iii1illilI[8] = function(li1iIl1l1iii111l11i, IiliiII1IiII1ilii1I) local I11I1Iili1IiI1IliIl = li1iIl1l1iii111l11i[45808] local i11liiI1ililii1I111 = li1iIl1l1iii111l11i[70524] local lilII1IlilIllli11lI = li1iIl1l1iii111l11i[36234] local lIl11I1lilII1iiililll = li1iIl1l1iii111l11i[45808] - liil11iII1Il1iIIIiI local liIlIi1iIIiIililliI = li1iIl1l1iii111l11i[118746] I1ll1I1iiliIi1II1iI[lilII1IlilIllli11lI] = Iil11i1IIi11I1IlIiI[i11liiI1ililii1I111] end lIlil1IiliiiIIIl1ilIi = { IiillIiI1Iii1illilI[14], IiillIiI1Iii1illilI[17], IiillIiI1Iii1illilI[15], IiillIiI1Iii1illilI[3], IiillIiI1Iii1illilI[16], IiillIiI1Iii1illilI[10], IiillIiI1Iii1illilI[8], IiillIiI1Iii1illilI[5], IiillIiI1Iii1illilI[18], IiillIiI1Iii1illilI[13], IiillIiI1Iii1illilI[11], IiillIiI1Iii1illilI[22], IiillIiI1Iii1illilI[20], IiillIiI1Iii1illilI[2], IiillIiI1Iii1illilI[6], IiillIiI1Iii1illilI[7], IiillIiI1Iii1illilI[21], IiillIiI1Iii1illilI[12], IiillIiI1Iii1illilI[19], IiillIiI1Iii1illilI[9], IiillIiI1Iii1illilI[4], IiillIiI1Iii1illilI[0], IiillIiI1Iii1illilI[1] } local function lll1IIlIll1lli1lIlI() while true do local li1iIl1l1iii111l11i = illilIll1l1iillIi1i[il11ili11lliiIllIii] il11ili11lliiIllIii = il11ili11lliiIllIii + 1 local ll1il1111Ilii1lIiiI, lIlIilI111illI1Ii1iii, lIli1111Iii1i1l1l1I = lIlil1IiliiiIIIl1ilIi[li1iIl1l1iii111l11i[32174] + 1](li1iIl1l1iii111l11i) if ll1il1111Ilii1lIiiI then return lIlIilI111illI1Ii1iii, lIli1111Iii1i1l1l1I end end end local lIlllllllllIiI1Il1liI, lIlIilI111illI1Ii1iii, lIli1111Iii1i1l1l1I = lI1IllI1iiIII1llli1(lll1IIlIll1lli1lIlI) if lIlllllllllIiI1Il1liI then if lIlIilI111illI1Ii1iii and lIli1111Iii1i1l1l1I > 0 then return lIlli1lI1IliIlllIil1l(lIlIilI111illI1Ii1iii, 1, lIli1111Iii1i1l1l1I) end else local lI1i1I1llilIIl111Ii = lIllIill11l1l1I11II("Luraph Script:" .. (i1IliIiiIlil1iI1l1l[il11ili11lliiIllIii - 1] or "") .. ": " .. llI1l1iIIiI11i1iiIi(lIlIilI111illI1Ii1iii), "[^:]+:%d*: ", function(iI1lIl1I111ll1lliiI) if not lIiiiI11IiiiIII11iI(iI1lIl1I111ll1lliiI, "Luraph Script:%d") then return "" end end) lIII1l11I1i1il1l1ll(lI1i1I1llilIIl111Ii, 0) end end lII1iIliIl1iliIllii(li11IlI1I1llI1i111l, I1ilI1lIi11lIlI1li1) return li11IlI1I1llI1i111l end local iIlIIiI1i1ll11iil1l = iliIiiIl11IiiIi1lIi() return l1ilIiIi1ll1lIilIIl(iIlIIiI1i1ll11iil1l, I1ilI1lIi11lIlI1li1)() end lIli1IlIIIlI1iil1IIIl("LPH|550BB34G00E10051EF38872F00232G2D2C013G005F429G006G00019G002G00019G002G00013G00029G002G00029G002G00029G002G00023G00033G00033G00033G00033G00049G002G00043G00049G002G00043G00043G00059G002G00059G002G00059G002G00059G002G00053G00053G00069G002G00069G002G00069G002G00069G002G00063G00059G002G00063G00033G000A3G0061006C68676A0F00383AD84B4G009C0A02000A0B092F3G0B270D2G0B4B3G0B4B2G0B092F0D2G0B4B0B2G09372G0B092F0D2G0B4B090C095F3G0B4B2G0B092F0D2G0B4B0B2G09372G0B092F0D2G0B4B0B0309372G0B092F0D2G0B4B0900095F0D2G0B0F0C0B2G0F0D0B030F2C0B091B2G0B1B4B2G0B092F0D0B1B4B0F2G1947030B130F2G0B092FBD0A1B5B080F1B2G030B1B07010B1B4B2G0B092F0D0B1B4B030B1F4B2G0B092F0D0B1F4B0E2G1D472G0B092FB3171231090B1F032G0B092F6F0A1B5B0B031B03070B092F2G0B2F4B2G0B092F0D0B2F4B020D2D372G0B092F0D0B2F4B02012D372G0B092F0D0B2F4B02132D472G0B092F271722312G092F03D9EF5A582G0B092F2G0B092FE5F40A2FDDF40A4F46A13A5A4330070AB370D323D5236D43979D8F53B636901DF6D0A33C22E5E70C25B49410C4D59E147D0A0200B8063G002G5532343830B8133G002G55073025393C363421303106213A27343230B8063G002G551B343830B80C3G002G55B7D5DAB7D5DAB7D5DB75B8083G002G55113039302130B80D3G002G5575B7D5DAB7D5DAB7D5DB75106G00F03F105G00508440B8093G002G550539342C302726B80C3G002G55123021063027233C3630B8073G002G5525343C2726B80C3G002G551230210539342C302726B80C3G002G55133C2730063027233027B8023G002G55E14AD8350BEED92C2F73580A02002G0B092F0A2G0B273G0B273G0B073G0B4B0A2G0B033G0B3B700A0200105G00E49440FDFC185200F73E054C38", lIll1IIi1I1I1iiIIii11())