--[[
	IDs grabbed from https://wow.tools API, Use the following python snippet to write a Lua table:

	#!/usr/bin/env python
	#-*- coding: utf-8 -*-

	import sys
	import json

	if len (sys.argv) != 2 :
	  print "Usage: {} file.json".format(sys.argv[0])
	  sys.exit (1)

	file = sys.argv[1]

	with open(file) as f:
	  d = json.load(f)

	for id in d['data']:
	  print "{}, -- {}".format(id[0], id[1])

	# vim: set sw=2 tw=80 :

]]--

local turtles = {
	1938801, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_01_f.ogg
	2005934, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_02_f.ogg
	2005935, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_03_f.ogg
	2005936, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_04_f.ogg
	2005937, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_05_f.ogg
	2005938, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_06_f.ogg
	2005939, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_07_f.ogg
	2005940, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_08_f.ogg
	2005941, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_09_f.ogg
	2005942, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_10_f.ogg
	2005943, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_11_f.ogg
	2005944, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_12_f.ogg
	2005945, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_13_f.ogg
	2005946, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_14_f.ogg
	2005947, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_15_f.ogg
	2005948, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_16_f.ogg
	2005949, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_17_f.ogg
	2005950, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_18_f.ogg
	2005951, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_19_f.ogg
	2005952, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_20_f.ogg
	2005953, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_21_f.ogg
	2005954, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_22_f.ogg
	2005955, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_23_f.ogg
	2005956, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_24_f.ogg
	2005957, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_25_f.ogg
	2005958, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_26_f.ogg
	2005959, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_27_f.ogg
	2005960, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_28_f.ogg
	2005961, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_29_f.ogg
	2005962, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_30_f.ogg
	2015888, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_31_f.ogg
	2015889, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_32_f.ogg
	2015890, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_33_f.ogg
	2015891, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_34_f.ogg
	2030667, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_35_f.ogg
	2030691, -- sound/creature/scrollsage_nola/vo_801_scrollsage_nola_36_f.ogg
	2765666, -- sound/creature/scrollsage_nola/vo_815_scrollsage_nola_01_f.ogg
	2765667, -- sound/creature/scrollsage_nola/vo_815_scrollsage_nola_02_f.ogg
	2765668, -- sound/creature/scrollsage_nola/vo_815_scrollsage_nola_03_f.ogg
	2765669, -- sound/creature/scrollsage_nola/vo_815_scrollsage_nola_04_f.ogg
	2765670, -- sound/creature/scrollsage_nola/vo_815_scrollsage_nola_05_f.ogg
	2765671, -- sound/creature/scrollsage_nola/vo_815_scrollsage_nola_06_f.ogg
	2765672, -- sound/creature/scrollsage_nola/vo_815_scrollsage_nola_07_f.ogg
	2765673, -- sound/creature/scrollsage_nola/vo_815_scrollsage_nola_08_f.ogg
	
	2006030, -- sound/creature/collector_kojo/vo_801_collector_kojo_01_m.ogg
	2006031, -- sound/creature/collector_kojo/vo_801_collector_kojo_02_m.ogg
	2006032, -- sound/creature/collector_kojo/vo_801_collector_kojo_03_m.ogg
	2006033, -- sound/creature/collector_kojo/vo_801_collector_kojo_04_m.ogg
	2006034, -- sound/creature/collector_kojo/vo_801_collector_kojo_05_m.ogg
	2006035, -- sound/creature/collector_kojo/vo_801_collector_kojo_06_m.ogg
	2006036, -- sound/creature/collector_kojo/vo_801_collector_kojo_07_m.ogg
	2006037, -- sound/creature/collector_kojo/vo_801_collector_kojo_08_m.ogg
	2006038, -- sound/creature/collector_kojo/vo_801_collector_kojo_09_m.ogg
	2006039, -- sound/creature/collector_kojo/vo_801_collector_kojo_10_m.ogg
	2006040, -- sound/creature/collector_kojo/vo_801_collector_kojo_11_m.ogg
	2006041, -- sound/creature/collector_kojo/vo_801_collector_kojo_12_m.ogg
	2006042, -- sound/creature/collector_kojo/vo_801_collector_kojo_13_m.ogg
	2006043, -- sound/creature/collector_kojo/vo_801_collector_kojo_14_m.ogg
	2006044, -- sound/creature/collector_kojo/vo_801_collector_kojo_15_m.ogg
	2006045, -- sound/creature/collector_kojo/vo_801_collector_kojo_16_m.ogg
	2006046, -- sound/creature/collector_kojo/vo_801_collector_kojo_17_m.ogg
	2006047, -- sound/creature/collector_kojo/vo_801_collector_kojo_18_m.ogg
	2006048, -- sound/creature/collector_kojo/vo_801_collector_kojo_19_m.ogg
	2006049, -- sound/creature/collector_kojo/vo_801_collector_kojo_20_m.ogg
	2006050, -- sound/creature/collector_kojo/vo_801_collector_kojo_21_m.ogg
	2006051, -- sound/creature/collector_kojo/vo_801_collector_kojo_22_m.ogg
	2006052, -- sound/creature/collector_kojo/vo_801_collector_kojo_23_m.ogg
	2006053, -- sound/creature/collector_kojo/vo_801_collector_kojo_24_m.ogg
	2006054, -- sound/creature/collector_kojo/vo_801_collector_kojo_25_m.ogg
	2006055, -- sound/creature/collector_kojo/vo_801_collector_kojo_26_m.ogg
	2015900, -- sound/creature/collector_kojo/vo_801_collector_kojo_27_m.ogg
	2015901, -- sound/creature/collector_kojo/vo_801_collector_kojo_28_m.ogg
	2015902, -- sound/creature/collector_kojo/vo_801_collector_kojo_29_m.ogg
	2015903, -- sound/creature/collector_kojo/vo_801_collector_kojo_30_m.ogg
	
	2006255, -- sound/creature/toki/vo_801_toki_01_m.ogg
	2006256, -- sound/creature/toki/vo_801_toki_02_m.ogg
	2006257, -- sound/creature/toki/vo_801_toki_03_m.ogg
	2006258, -- sound/creature/toki/vo_801_toki_04_m.ogg
	2006259, -- sound/creature/toki/vo_801_toki_05_m.ogg
	2006260, -- sound/creature/toki/vo_801_toki_06_m.ogg
	2006261, -- sound/creature/toki/vo_801_toki_07_m.ogg
	2006262, -- sound/creature/toki/vo_801_toki_08_m.ogg
	2006263, -- sound/creature/toki/vo_801_toki_09_m.ogg
	2006264, -- sound/creature/toki/vo_801_toki_10_m.ogg
	2006265, -- sound/creature/toki/vo_801_toki_11_m.ogg
	2006266, -- sound/creature/toki/vo_801_toki_12_m.ogg
	2006267, -- sound/creature/toki/vo_801_toki_13_m.ogg
	2006268, -- sound/creature/toki/vo_801_toki_14_m.ogg
	2006269, -- sound/creature/toki/vo_801_toki_15_m.ogg
	2006270, -- sound/creature/toki/vo_801_toki_16_m.ogg
	2006271, -- sound/creature/toki/vo_801_toki_17_m.ogg
	2006272, -- sound/creature/toki/vo_801_toki_18_m.ogg
	2006273, -- sound/creature/toki/vo_801_toki_19_m.ogg
	2006274, -- sound/creature/toki/vo_801_toki_20_m.ogg
	2006275, -- sound/creature/toki/vo_801_toki_21_m.ogg
	2016217, -- sound/creature/toki/vo_801_toki_22_m.ogg
	2016218, -- sound/creature/toki/vo_801_toki_23_m.ogg
	2016219, -- sound/creature/toki/vo_801_toki_24_m.ogg
	2016220, -- sound/creature/toki/vo_801_toki_25_m.ogg
	2016221, -- sound/creature/toki/vo_801_toki_26_m.ogg
	2016222, -- sound/creature/toki/vo_801_toki_27_m.ogg
	2029422, -- sound/creature/toki/vo_801_toki_28_m.ogg
	2029423, -- sound/creature/toki/vo_801_toki_29_m.ogg
	2029424, -- sound/creature/toki/vo_801_toki_30_m.ogg
	2029425, -- sound/creature/toki/vo_801_toki_31_m.ogg
	2029426, -- sound/creature/toki/vo_801_toki_32_m.ogg
	2029427, -- sound/creature/toki/vo_801_toki_33_m.ogg
	2029428, -- sound/creature/toki/vo_801_toki_34_m.ogg
	2029429, -- sound/creature/toki/vo_801_toki_35_m.ogg
	2029430, -- sound/creature/toki/vo_801_toki_36_m.ogg
	2029431, -- sound/creature/toki/vo_801_toki_37_m.ogg
	2029432, -- sound/creature/toki/vo_801_toki_38_m.ogg
	2029433, -- sound/creature/toki/vo_801_toki_39_m.ogg
	2029434, -- sound/creature/toki/vo_801_toki_40_m.ogg
	2029435, -- sound/creature/toki/vo_801_toki_41_m.ogg
	2029436, -- sound/creature/toki/vo_801_toki_42_m.ogg
	2030694, -- sound/creature/toki/vo_801_toki_43_m.ogg
	2030695, -- sound/creature/toki/vo_801_toki_44_m.ogg
	2100913, -- sound/creature/toki/vo_801_toki_45_m.ogg
	2100914, -- sound/creature/toki/vo_801_toki_46_m.ogg
	2100915, -- sound/creature/toki/vo_801_toki_47_m.ogg
	2100916, -- sound/creature/toki/vo_801_toki_48_m.ogg
	2100917, -- sound/creature/toki/vo_801_toki_49_m.ogg
	2100918, -- sound/creature/toki/vo_801_toki_50_m.ogg
	2100919, -- sound/creature/toki/vo_801_toki_51_m.ogg
	2100920, -- sound/creature/toki/vo_801_toki_52_m.ogg
	2100921, -- sound/creature/toki/vo_801_toki_53_m.ogg
	2100922, -- sound/creature/toki/vo_801_toki_54_m.ogg
	2100923, -- sound/creature/toki/vo_801_toki_55_m.ogg
	2100924, -- sound/creature/toki/vo_801_toki_56_m.ogg
	2100925, -- sound/creature/toki/vo_801_toki_57_m.ogg
	2100926, -- sound/creature/toki/vo_801_toki_58_m.ogg
	2100927, -- sound/creature/toki/vo_801_toki_59_m.ogg
	2399713, -- sound/creature/toki/vo_81_toki_01_m.ogg
	2399714, -- sound/creature/toki/vo_81_toki_02_m.ogg
	2399715, -- sound/creature/toki/vo_81_toki_03_m.ogg
	2399716, -- sound/creature/toki/vo_81_toki_04_m.ogg
	2399717, -- sound/creature/toki/vo_81_toki_05_m.ogg
	2399718, -- sound/creature/toki/vo_81_toki_06_m.ogg
	2399719, -- sound/creature/toki/vo_81_toki_07_m.ogg
	2399720, -- sound/creature/toki/vo_81_toki_08_m.ogg
	2399721, -- sound/creature/toki/vo_81_toki_09_m.ogg
	2399722, -- sound/creature/toki/vo_81_toki_10_m.ogg
	2399723, -- sound/creature/toki/vo_81_toki_11_m.ogg
	2399724, -- sound/creature/toki/vo_81_toki_12_m.ogg
	2403488, -- sound/creature/toki/vo_81_toki_13_m.ogg
	2403489, -- sound/creature/toki/vo_81_toki_14_m.ogg
	2403490, -- sound/creature/toki/vo_81_toki_15_m.ogg
	2403491, -- sound/creature/toki/vo_81_toki_16_m.ogg
	2403492, -- sound/creature/toki/vo_81_toki_17_m.ogg
	2403493, -- sound/creature/toki/vo_81_toki_18_m.ogg
	2403494, -- sound/creature/toki/vo_81_toki_19_m.ogg
	2403495, -- sound/creature/toki/vo_81_toki_20_m.ogg
	2403496, -- sound/creature/toki/vo_81_toki_21_m.ogg
	2403497, -- sound/creature/toki/vo_81_toki_22_m.ogg
	2403498, -- sound/creature/toki/vo_81_toki_23_m.ogg
	2403499, -- sound/creature/toki/vo_81_toki_24_m.ogg
	2403500, -- sound/creature/toki/vo_81_toki_25_m.ogg
	2403501, -- sound/creature/toki/vo_81_toki_26_m.ogg
	2403502, -- sound/creature/toki/vo_81_toki_27_m.ogg
	2403503, -- sound/creature/toki/vo_81_toki_28_m.ogg
	2403546, -- sound/creature/toki/vo_81_toki_29_m.ogg
	2403547, -- sound/creature/toki/vo_81_toki_30_m.ogg
	2403548, -- sound/creature/toki/vo_81_toki_31_m.ogg
	2403549, -- sound/creature/toki/vo_81_toki_32_m.ogg
	2403550, -- sound/creature/toki/vo_81_toki_33_m.ogg
	2403551, -- sound/creature/toki/vo_81_toki_34_m.ogg
	2403552, -- sound/creature/toki/vo_81_toki_35_m.ogg
	2403553, -- sound/creature/toki/vo_81_toki_36_m.ogg
	2403554, -- sound/creature/toki/vo_81_toki_37_m.ogg
	2403555, -- sound/creature/toki/vo_81_toki_38_m.ogg
}

local name = ...

local frame = CreateFrame("Frame", "ShutUpTurtles")

frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function(f, event, addon)
	if addon ~= name then return end
	f:UnregisterEvent(event)

	for i,k in pairs(turtles) do
		MuteSoundFile(k)
	end
end)