-------------------------------------------------
-- Regime Reward Database(s)
-------------------------------------------------

-- ------------------------------------
-- FoV rewards
-- ------------------------------------
function getFoVregimeReward(regimeid)
    local reward = {
       [1] = 270,
       [2] = 285,
       [3] = 300,
       [4] = 315,
       [5] = 330,
       [6] = 390,
       [7] = 475,
       [8] = 500,
       [9] = 525,
       [10] = 550,
       [11] = 540,
       [12] = 570,
       [13] = 600,
       [14] = 630,
       [15] = 670,
       [16] = 270,
       [17] = 285,
       [18] = 300,
       [19] = 315,
       [20] = 330,
       [21] = 540,
       [22] = 570,
       [23] = 600,
       [24] = 630,
       [25] = 690,
       [26] = 270,
       [27] = 285,
       [28] = 300,
       [29] = 315,
       [30] = 330,
       [31] = 450,
       [32] = 475,
       [33] = 500,
       [34] = 525,
       [35] = 550,
       [36] = 540,
       [37] = 570,
       [38] = 600,
       [39] = 630,
       [40] = 690,
       [41] = 630,
       [42] = 665,
       [43] = 700,
       [44] = 735,
       [45] = 770,
       [46] = 810,
       [47] = 855,
       [48] = 900,
       [49] = 945,
       [50] = 990,
       [51] = 900,
       [52] = 950,
       [53] = 1000,
       [54] = 1050,
       [55] = 1100,
       [56] = 330,
       [57] = 575,
       [58] = 480,
       [59] = 330,
       [60] = 660,
       [61] = 330,
       [62] = 575,
       [63] = 660,
       [64] = 270,
       [65] = 285,
       [66] = 300,
       [67] = 315,
       [68] = 330,
       [69] = 360,
       [70] = 420,
       [71] = 450,
       [72] = 630,
       [73] = 650,
       [74] = 700,
       [75] = 730,
       [76] = 270,
       [77] = 285,
       [78] = 300,
       [79] = 315,
       [80] = 330,
       [81] = 340,
       [82] = 360,
       [83] = 380,
       [84] = 400,
       [85] = 670,
       [86] = 710,
       [87] = 740,
       [88] = 800,
       [89] = 270,
       [90] = 285,
       [91] = 300,
       [92] = 315,
       [93] = 330,
       [94] = 315,
       [95] = 370,
       [96] = 475,
       [97] = 710,
       [98] = 710,
       [99] = 730,
       [100] = 770,
       [101] = 350,
       [102] = 400,
       [103] = 450,
       [104] = 1300,
       [105] = 1320,
       [106] = 1340,
       [107] = 1390,
       [108] = 1450,
       [109] = 810,
       [110] = 830,
       [111] = 870,
       [112] = 950,
       [113] = 970,
       [114] = 900,
       [115] = 940,
       [116] = 980,
       [117] = 1020,
       [118] = 1100,
       [119] = 1300,
       [120] = 1330,
       [121] = 1360,
       [122] = 1540,
       [123] = 1540,
       [124] = 820,
       [125] = 840,
       [126] = 860,
       [127] = 880,
       [128] = 920,
       [129] = 840,
       [130] = 880,
       [131] = 920,
       [132] = 940,
       [133] = 1000,
       [134] = 920,
       [135] = 980,
       [136] = 1020,
       [137] = 1080,
       [138] = 1140,
       [139] = 1220,
       [140] = 1260,
       [141] = 1300,
       [142] = 1450,
       [143] = 1500,
       [144] = 1550,
       [145] = 1600,
       [146] = 1600,
        
    }
    if reward[regimeid] then
        return reward[regimeid];
    else
        --print("Warning: Regime ID not found! Returning reward as 10.");
        return 10;
    end
    
end

-- ------------------------------------
-- Placeholder for Hunt Registry
-- ------------------------------------
-- function getHuntRegistryReward(registryid)
-- end

-----------------------------------
-- Fetch GoV base rewards
--
-- I know, its ugly but until the missing reward values are
-- corrected I'm not messing with it further (neither wiki had them all).
-- Once thats done maybe we can array this.
-----------------------------------
function getGoVregimeReward(regimeid) 
    local reward = {
        [602] = 270,
        [603] = 930,
        [605] = 860,
        [606] = 970,
        [607] = 2260,
        [608] = 2260,-- Missing data on wiki
        [609] = 2260,-- Missing data on wiki
        [610] = 1110,
        [611] = 1320,
        [612] = 1430,
        [613] = 2050,
        [615] = 2300,
        [616] = 1960,
        [617] = 1960,-- Missing data on wiki
        [618] = 1260,
        [619] = 1410,
        [620] = 1500,
        [621] = 1690,
        [622] = 1690,-- Missing info on 
        [623] = 2170,
        [624] = 2250,
        [625] = 2250,-- Missing info on wiki
        [626] = 90,
        [627] = 110,
        [628] = 1640,
        [629] = 1600,
        [630] = 1700,
        [631] = 380,
        [632] = 420,
        [633] = 610,
        [634] = 590,
        [635] = 864,
        [636] = 1520,
        [637] = 1690,
        [638] = 1720,
        [639] = 280,
        [640] = 350,
        [641] = 490,
        [642] = 1830,
        [643] = 1650,
        [644] = 1840,
        [645] = 1860,
        [646] = 2260,
        [647] = 250,
        [648] = 270,
        [649] = 610,
        [650] = 840,
        [651] = 1750,
        [652] = 1760,
        [653] = 1770,
        [654] = 1780,
        [655] = 730,
        [656] = 840,
        [657] = 800,
        [658] = 850,
        [659] = 950,
        [660] = 830,
        [661] = 1810,
        [662] = 1560,
        [663] = 340,
        [664] = 450,
        [665] = 540,
        [666] = 590,
        [667] = 650,
        [668] = 700,
        [669] = 1840,
        [670] = 1850,
        [671] = 950,
        [672] = 1030;
        [673] = 1300,
        [674] = 1340,
        [675] = 1330,
        [676] = 1470,
        [677] = 1890,
        [678] = 1890,-- Missing info on wiki
        [679] = 660,
        [680] = 800,
        [681] = 790,
        [682] = 1050
        [683] = 970,
        [684] = 1000,
        [685] = 1890,
        [686] = 2180,
        [687] = 1160,
        [688] = 1230,
        [689] = 1280,
        [690] = 1300,
        [691] = 1340,
        [692] = 1470
        [693] = 2190,
        [694] = 2220,
        [695] = 550,
        [696] = 700,
        [697] = 840,
        [698] = 920,
        [699] = 820,
        [700] = 840,
        [701] = 1530,
        [702] = 1830;
        [704] = 1160,
        [705] = 1240,
        [706] = 1310,
        [707] = 1330,
        [708] = 1270,
        [709] = 1840,
        [710] = 2220,
        [711] = 1180,
        [712] = 1240;
        [713] = 1310,
        [714] = 1310,
        [715] = 1340,
        [716] = 1470,
        [717] = 2060,
        [718] = 2250,
        [719] = 1470,
        [720] = 1720,
        [721] = 1760,
        [722] = 1770;
        [723] = 1830,
        [724] = 1900,
        [725] = 1640,
        [726] = 2040,
        [727] = 780,
        [728] = 870,
        [729] = 950,
        [730] = 980,
        [731] = 930,
        [733] = 1030,
        [734] = 2140,
        [735] = 1440,
        [736] = 1480,
        [737] = 1380,
        [738] = 1550,
        [739] = 1410,
        [740] = 1540,
        [741] = 1660,
        [743] = 2390,
        [744] = 1900,
        [745] = 1920,
        [746] = 2120,
        [747] = 2230,
        [748] = 2180,
        [749] = 2370,
        [750] = 2370,-- Missing data on wiki
        [751] = 1930,
        [753] = 2050,
        [754] = 2390,
        [755] = 1270,
        [756] = 1570,
        [757] = 1280,
        [758] = 1310,
        [759] = 1380,
        [760] = 1380,-- Missing info on wiki
        [761] = 1650,
        [762] = 1760;
        [763] = 1040,
        [764] = 1230,
        [765] = 1490,
        [766] = 1620,
        [767] = 1700,
        [768] = 1680,
        [769] = 1710,
        [770] = 2310,
        [771] = 1050,
        [772] = 1070;
        [773] = 1140,
        [774] = 1130,
        [775] = 1350,
        [776] = 1920,
        [778] = 900,
        [779] = 930,
        [780] = 980,
        [781] = 940,
        [783] = 1090,
        [784] = 1290,
        [785] = 1010,
        [787] = 1520,
        [789] = 1540,
        [790] = 1450,
        [791] = 1450,-- Missing data on wiki
        [792] = 1450,-- Missing data on wiki
        [793] = 1630;
        [794] = 1650,
        [795] = 1660,
        [796] = 1370,
        [797] = 1500,
        [798] = 1820,
        [799] = 1640,
        [800] = 550,
        [801] = 1690,
        [802] = 1640;
        [803] = 1790,
        [804] = 1040,
        [805] = 1050,
        [806] = 1180,
        [807] = 1190,
        [808] = 1220,
        [809] = 1470,
        [810] = 1480,
        [811] = 1500,
        [812] = 1310;
        [813] = 1360,
        [814] = 1230,
        [815] = 1480,
        [816] = 1470,
        [817] = 1360,
        [818] = 1570,
}
    return reward[regimeid];
end;

-- ------------------------------------
-- Placeholder for Dominion Regimes
-- ------------------------------------
-- function getDominionReward(regimeid)
-- end
