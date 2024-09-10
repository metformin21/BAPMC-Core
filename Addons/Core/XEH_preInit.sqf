/*
License GPL-2.0
*/
private _VS_core_settings = [
    [
		"VS_core_debug",
		"CHECKBOX",
		["Enable Debug", "Tick enable Viking Studios debug messages to appear in RPT and systemChat"],
		["Viking Studios Common", "Development"],
		false
	],
	[
		"VS_core_arsenal_objects",
		"EDITBOX",
		["Arsenal Objects", "Classnames, separated by commas and without double quotations, of objects that are spawnable by ""Add Filtered Arsenal"" module"],
		["Viking Studios Zeus", "Modules"],
		"C_supplyCrate_F,B_Slingload_01_Ammo_F"
	],
	[
		"VS_core_respawn_timer",
		"SLIDER",
		["Respawn Timer (seconds)", "Number of seconds player waves need to wait before respawn (0 -> 600 (10 minutes))"],
		["Viking Studios Zeus", "Respawn"],
		[1, 600, 5, 0],
		1,
		{
			setPlayerRespawnTime _this;
		}
	],
	[
		"VS_core_map_volume",
		"SLIDER",
		["Map Volume", "Volume to set when in a vehicle and looking at the map (so that you don't have to listen to loud as fuck helicopter rotors)"],
		"Viking Studios Common",
		[0, 1, 0.20, 2]
	],
	[
		"VS_core_arsenal_whitelist_mission",
		"EDITBOX",
		["Mission", "Mission specific equipment whitelist"],
		["Viking Studios Arsenal", "Arsenal Whitelists"],
		"[]",
		1,
		{
			// One day this will re-init all arsenals that have this filter set
		},
		true
	],
	[
        "VS_core_arsenal_whitelist_Standard",
        "EDITBOX",
        ["Standard", "Default equipment whitelist"],
        ["Viking Studios Arsenal", "Arsenal Whitelists"],
        "['ItemMap','ItemGPS','TFAR_anprc152','ItemCompass','ACE_Altimeter','ItemWatch','optic_Yorris','optic_Aco','optic_MRCO','optic_ERCO_blk_F','ACE_elasticBandage','ACE_packingBandage','ACE_adenosine','ACE_epinephrine','ACE_morphine','ACE_tourniquet','ACE_EarPlugs','ACE_EntrenchingTool','ACE_IR_Strobe_Item','ACE_Flashlight_XL50','ACE_MapTools','ACE_SpraypaintBlue','ACE_SpraypaintGreen','ACE_SpraypaintRed','ACE_SpraypaintBlack','ACE_wirecutter','ACE_CableTie','Chemlight_blue','Chemlight_green','ACE_Chemlight_IR','Chemlight_red','SmokeShell','acex_intelitems_notepad','ACE_HuntIR_M203','tsp_lockpick','optic_ACO_grn','optic_Aco','ACE_quikclot','cup_arifle_hk_m27','cup_arifle_hk_m27_vfg','CUP_30Rnd_556x45_Stanag_Mk16_black','CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red','CUP_H_Ger_M92_Black','CUP_H_Ger_M92_Black_GG','CUP_H_Ger_M92_Black_GG_CB','CUP_H_Ger_M92_Black_GG_CF','VSM_LBT1961_Black','VSM_balaclava2_Black','VSM_Balaclava2_black_glasses','VSM_Balaclava2_black_Goggles','VSM_balaclava_Black','VSM_Balaclava_black_glasses','VSM_Balaclava_black_Goggles','G_Spectacles','CUP_G_TK_RoundGlasses','CUP_G_PMC_RadioHeadset','CUP_Beard_Black','CUP_Beard_Blonde','CUP_Beard_Brown','fsob_Beard01_Brown','fsob_Beard01_Dark','fsob_Beard01_Light','fsob_Beard02_Brown','fsob_Beard02_Dark','fsob_Beard02_Light','fsob_Beard03_Brown','fsob_Beard03_Dark','fsob_Beard03_Light','CUP_HandGrenade_M67','tsp_breach_popper_mag','kat_Carbonate','kat_chestSeal','kat_Painkiller','CUP_hgun_Glock17_blk','rhsusf_mag_17Rnd_9x19_JHP','muzzle_snds_H','ACE_muzzle_mzls_L','Laserbatteries','CUP_optic_VortexRazor_UH1_Black','sma_spitfire_01_black','sma_spitfire_01_sc_black','SMA_MICRO_T2_LM','SMA_MICRO_T2','SMA_ELCAN_SPECTER','SMA_ELCAN_SPECTER_RDS','SMA_ELCAN_SPECTER_ARDRDS','rhsusf_acc_premier','rhsusf_acc_premier_mrds','rhsusf_acc_premier_anpvs27','CUP_optic_SB_11_4x20_PM','CUP_optic_SB_3_12x50_PMII','RKSL_optic_PMII_525','RKSL_optic_PMII_312','RKSL_optic_PMII_312_sunshade','RKSL_optic_LDS','UK3CB_BAF_Kite','SMA_eotech','SMA_ANPEQ15_BLK','SMA_ANPEQ15_TOP_BLK','SMA_ANPEQ15_TOP_417BLK','SMA_SFPEQ_HK417TOP_BLK','SMA_SFPEQ_HKTOP_BLK','SMA_SFPEQ_MK18TOP_BLK','SMA_SFPEQ_SCARTOP_BLK','SMA_SFPEQ_ACRTOP_BLK_LIGHT','SMA_SFPEQ_ACRTOP_BLK','CUP_acc_ANPEQ_15_Flashlight_Black_L','CUP_acc_ANPEQ_15_Black','rhsusf_acc_anpeq15side_bk','ACE_muzzle_mzls_B','muzzle_snds_B','SMA_supp1BB_556','SMA_supp1b_556','SMA_FLASHHIDER1','UK3CB_underbarrel_acc_afg','rhsusf_acc_grip2','CUP_bipod_Harris_1A2_L_BLK','sma_mk18afg','sma_mk18_gl','sma_acrblk','sma_acrgl_b','sma_hk416afg','sma_hk416gl','sma_hk416vfg','sma_hk416customcqbvfgb','sma_hk416glcqb_b','sma_hk416customcqbafgb','sma_hk417_16in','sma_minimi_mk3_762tsb','sma_minimi_mk3_762tlb','rhs_weap_m32','rhsusf_weap_MP7A2','rhs_weap_m40a5','rhs_weap_XM2010','rhs_weap_XM2010_wd','rhs_weap_M107','cup_smg_p90_black','cup_smg_ps90_olive','cup_smg_mp5a5','CUP_smg_MP5A5_Rail','CUP_smg_MP5A5_Rail_AFG','CUP_smg_MP5A5_Rail_VFG','cup_smg_mp5sd6','cup_lmg_mg3','cup_lmg_mg3_rail','cup_arifle_hk_m27_ag36','cup_srifle_m110_kac_black','cup_srifle_m110_black','cup_sgun_m1014','cup_sgun_m1014_vfg','cup_sgun_m1014_solidstock','cup_sgun_m1014_entry','cup_sgun_m1014_entry_vfg','UK3CB_BAF_L129A1','uk3cb_baf_l128a1','uk3cb_baf_l119a1','uk3cb_baf_l119a1_cqb','UK3CB_BAF_L119A1_RIS','UK3CB_BAF_L119A1_UKUGL','uk3cb_baf_l118a1_covert_bl','uk3cb_baf_l118a1_covert','uk3cb_baf_l115a3','UK3CB_BAF_L115A3_BL','uk3cb_baf_l115a3_ghillie','uk3cb_baf_l115a3_bl_ghillie','uk3cb_baf_l7a2','CUP_smg_BallisticShield_MP7','CUP_8Rnd_12Gauge_Slug','1Rnd_SmokeOrange_Grenade_shell','rhs_mag_M397_HET','rhsusf_5Rnd_762x51_m993_Mag','UK3CB_BAF_762_200Rnd_T','1Rnd_SmokeGreen_Grenade_shell','UK3CB_BAF_762_L42A1_10Rnd_T','CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M','UK3CB_BAF_762_200Rnd','rhs_mag_M441_HE','rhsusf_5Rnd_300winmag_xm2010','CUP_8Rnd_12Gauge_HE','1Rnd_SmokeBlue_Grenade_shell','UK3CB_BAF_762_L42A1_20Rnd_T','1Rnd_Smoke_Grenade_shell','UK3CB_BAF_762_L42A1_10Rnd','CUP_20Rnd_762x51_B_M110','rhs_mag_M433_HEDP','UK3CB_BAF_762_100Rnd','rhsusf_mag_10Rnd_STD_50BMG_mk211','CUP_8Rnd_12Gauge_Pellets_No00_Buck','SMA_150Rnd_762_M80A1_Tracer','rhsusf_mag_10Rnd_STD_50BMG_M33','1Rnd_SmokeYellow_Grenade_shell','1Rnd_SmokeRed_Grenade_shell','1Rnd_SmokePurple_Grenade_shell','CUP_6Rnd_HE_M203','rhsusf_mag_17Rnd_9x19_FMJ','rhsusf_5Rnd_762x51_m118_special_Mag','CUP_20Rnd_TE1_Red_Tracer_762x51_M110','SMA_150Rnd_762_M80A1','rhsusf_mag_40Rnd_46x30_FMJ','rhsusf_mag_40Rnd_46x30_JHP','CUP_30Rnd_Red_Tracer_9x19_MP5','UK3CB_BAF_338_5Rnd','CUP_50Rnd_570x28_Red_Tracer_P90_M','UK3CB_BAF_762_L42A1_20Rnd','UK3CB_BAF_338_5Rnd_Tracer','50Rnd_570x28_SMG_03','UK3CB_BAF_762_100Rnd_T','UK3CB_BAF_12G_Slugs','rhsusf_mag_40Rnd_46x30_AP','CUP_30Rnd_9x19_MP5','UK3CB_BAF_12G_Pellets','rhsusf_5Rnd_762x51_m62_Mag','sma_mk16_black','sma_mk16_blackqcb','CUP_200Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M','CUP_200Rnd_TE1_LRT4_Red_Tracer_762x51_Belt_M','UK3CB_BAF_Silencer_L115A3','muzzle_snds_L','CUP_6Rnd_12Gauge_Pellets_No00_Buck','CUP_6Rnd_12Gauge_HE','CUP_6Rnd_12Gauge_Slug','UK3CB_BAF_Silencer_L85','UK3CB_BAF_SFFH','SMA_supp_762','sma_gemtech_one_blk','SMA_supp2b_556','CUP_muzzle_mfsup_Suppressor_M107_Black','CUP_muzzle_mfsup_Suppressor_M107_Grey','CUP_muzzle_snds_M110_black','rhsusf_acc_M2010S','CUP_muzzle_snds_G36_black','CUP_muzzle_snds_MP5','CUP_muzzle_fh_MP5','CUP_muzzle_snds_MP7','rhsusf_acc_rotex_mp7','muzzle_snds_570','VKN_B_OPS_Black_alt','PMCA_buttonup_uniform_b_b','PMCA_buttonup_uniform_r_b','PMCA_buttonup_uniform_o_b','PMCA_buttonup_uniform_t_b','PMCA_casual_uniform_b_b','PMCA_casual_uniform_j_b','PMCA_casual_uniform_t_b','CUP_I_B_PMC_Unit_20','CUP_I_B_PMC_Unit_17','CUP_I_B_PMC_Unit_13','CUP_I_B_PMC_Unit_14','CUP_I_B_PMC_Unit_3','CUP_I_B_PMC_Unit_7','CUP_I_B_PMC_Unit_11','CUP_I_B_PMC_Unit_42','CUP_I_B_PMC_Unit_24','PMCA_sweater_uniform_b_b','PMCA_sweater_uniform_g_b','PMCA_sweater_uniform_t_b','PMCA_sweater_uniform_o_b','PMCA_tanktop_uniform_b_b','PMCA_tanktop_uniform_g_b','PMCA_tanktop_uniform_o_b','PMCA_tanktop_uniform_t_b','PMCA_tee_uniform_b','PMCA_cargo_uniform_b_b','PMCA_cargo_uniform_b_g','PMCA_cargo_uniform_b_o','PMCA_cargo_uniform_b_t','Black_Crye_SS_Camo','Black_Black_SS_Camo','Multicam_black_casual_Camo','black_Crye_Camo','Black_Black_Camo','TRYK_U_B_PCUs','TRYK_U_B_PCUGs_BLK_R','TRYK_U_B_PCUGs_BLK','VKN_Shirt_Black_Jeans_Black','VKN_Shirt_Black_Jeans','VKN_Shirt_Black_Pants_Khaki','VKN_Black_Tshirt','VKN_CombatUniform_TshirtB_Green','VKN_CombatUniform_TshirtB_Multi','VKN_CombatUniform_TshirtB_Tan','VSM_OGA_tan_casual_Camo','VSM_OGA_OD_casual_Camo','VSM_OGA_grey_casual_Camo','VSM_Scorpion_casual_Camo','Multicam_Arid_Black_casual_Camo','VKN_CombatUniform_Black_Loki','VKN_CombatUniform_Tactical_Sweater_7','VSM_fasthelmet_black','VSM_highcutslick_black','VKN_B_OPS_Loki_alt','VKN_B_OPS_Black','VKN_B_OPS_Loki','dr_BLKfacp_op','dr_BLKlbt_op','dr_BLKpar_op','dr_BLKpar_br','dr_BLKlbt_br','dr_BLKfacp_br','BLK_MBSS_PACA','VKN_FAPC_Gunner_Black_Medical','VKN_RAV_Operator_Loki','VKN_RAV_Breacher_Loki','VKN_LBT6094_Operator_Loki','VKN_Kitbag_Black','VKN_Kitbag_Black_Medical','VKN_Black_Kitbag','VKN_v_blackops_rt_1523g','VKN_v_blackops_nicecomm2','VKN_v_loki_nicecomm2','Black_Backpack_kitbag','VSM_SkiMask_Black','VSM_Facemask_black_glasses','VSM_Facemask_black_Goggles','VSM_FaceMask_black','VSM_FaceMask_Ghost','VSM_beard_3_hair','VSM_beard_3','VSM_beard_2_hair','VSM_beard_2','VSM_beard_hair','VSM_balaclava_Black_Skull','CUP_G_ESS_BLK_Scarf_Blk_Beard','CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde','CUP_G_Beard_Shades_Black','CUP_G_Beard_Shades_Blonde','VKN_shemagh_Goggles_Black_Alt','VKN_shemagh_Goggles_Black','VKN_shemagh_black','VKN_shemagh_Black_Alt','VKN_Stealth_Balaclava_BLK','PB_Balaclava_black','G_Balaclava_blk','CUP_RUS_Balaclava_blk','G_Balaclava_Halloween_01','G_Balaclava_Skull1','G_Balaclava_Scarecrow_01','G_Balaclava_TI_blk_F','G_Balaclava_TI_G_blk_F','G_Balaclava_BlueStrips','kat_Armband_Kat_Goggles','CUP_FR_NeckScarf3','CUP_PMC_Facewrap_Skull','CUP_PMC_Facewrap_Smilie','CUP_PMC_Facewrap_Red','CUP_PMC_Facewrap_Tan','CUP_PMC_Facewrap_Tropical','CUP_PMC_Facewrap_Black','CUP_G_PMC_Facewrap_Black_Glasses_Ember','CUP_G_PMC_Facewrap_Black_Glasses_Dark','CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset','CUP_G_ESS_BLK_Facewrap_Black_GPS','CUP_G_ESS_RGR_Facewrap_Skull','CUP_G_ESS_BLK_Facewrap_Black','CUP_G_ESS_CBR_Facewrap_Red','CUP_G_ESS_RGR_Facewrap_Tropical','CUP_G_ESS_KHK_Facewrap_Tan','CUP_G_PMC_Facewrap_Tropical_Glasses_Ember','CUP_G_PMC_Facewrap_Tropical_Glasses_Dark','CUP_G_PMC_Facewrap_Tan_Glasses_Ember','CUP_G_PMC_Facewrap_Tan_Glasses_Dark','CUP_G_ESS_BLK_Scarf_Blk','CUP_G_ESS_BLK_Scarf_Face_Blk','CUP_G_ESS_BLK_Dark','CUP_G_ESS_BLK_Ember','CUP_G_ESS_BLK','G_Tactical_Black','G_Spectacles_Tinted','G_Balaclava_lowprofile','G_Lowprofile','G_Bandanna_shades','G_Shades_Black','G_Shades_Red','G_Shades_Green','G_Shades_Blue','G_Bandanna_beast','G_Bandanna_blk','G_Bandanna_BlueFlame1','G_Bandanna_BlueFlame2','G_Bandanna_CandySkull','G_Bandanna_OrangeFlame1','G_Bandanna_RedFlame1','G_Bandanna_Skull1','G_Bandanna_Skull2','G_Bandanna_Vampire_01','CUP_launch_FIM92Stinger','CUP_NVG_GPNVG_black','CUP_NVG_GPNVG_black_WP','Rangefinder','ACE_Chemlight_White','Chemlight_yellow','ACE_Chemlight_Orange','tsp_flashbang_m84','tsp_breach_linear_mag','kat_IV_16','kat_aatKit','kat_accuvac','kat_X_AED','kat_atropine','kat_amiodarone','kat_crossPanel','kat_plate','kat_BVM','kat_Caffeine','kat_clamp','ACE_DefusalKit','kat_EACA','kat_etomidate','kat_IO_FAST','kat_fentanyl','KAT_Empty_bloodIV_500','kat_flumazenil','kat_guedel','ACE_HuntIR_monitor','kat_ketamine','kat_larynx','kat_lidocaine','kat_lorazepam','ACE_Clacker','kat_suction','kat_nalbuphine','kat_naloxone','kat_nasal','kat_ncdKit','kat_nitroglycerin','kat_norepinephrine','kat_Penthrox','kat_Pervitin','kat_phenylephrine','kat_phenylephrineAuto','ACE_plasmaIV','ACE_plasmaIV_250','ACE_plasmaIV_500','kat_pocketBVM','kat_oxygenTank_150','ACE_surgicalKit','kat_stethoscope','ACE_SpareBarrel','kat_scalpel','ACE_salineIV_250','kat_retractor','kat_Pulseoximeter','ToolKit','kat_TXA','ACE_splint','ACE_VMM3','sma_mk17_16_black','sma_mk16_eglm_black','CUP_hgun_Colt1911','rhs_weap_rpg7','CUP_launch_M72A6','tsp_breach_linear_auto_mag','tsp_breach_popper_auto_mag','launch_MRAWS_green_F','launch_MRAWS_olive_F','launch_MRAWS_sand_F','MRAWS_HEAT_F','MRAWS_HEAT55_F','MRAWS_HE_F','optic_DMS','CUP_optic_LeupoldMk4_20x40_LRT','CUP_optic_LeupoldMk4_25x50_LRT','rhsusf_acc_M8541','rhsusf_acc_M8541_mrds','DemoCharge_Remote_Mag','ClaymoreDirectionalMine_Remote_Mag','APERSMineDispenser_Mag','CUP_Mine_M','rhs_acc_pgo7v3','CUP_launch_NLAW','cup_smg_mp7','cup_arifle_acr_dmr_blk_556','rhs_rpg7_OG7V_mag','rhs_rpg7_PG7VL_mag','rhs_rpg7_PG7V_mag','rhs_rpg7_PG7VM_mag','rhs_rpg7_PG7VR_mag','rhs_rpg7_PG7VS_mag','rhs_rpg7_TBG7V_mag','CUP_NVG_GPNVG_green','CUP_NVG_GPNVG_green_WP','CUP_NVG_GPNVG_tan','CUP_NVG_GPNVG_tan_WP','SmokeShellYellow','SmokeShellRed','SmokeShellPurple','SmokeShellOrange','SmokeShellGreen','SmokeShellBlue','rhs_mag_m18_red','rhs_mag_m18_purple','rhs_mag_m18_green','ACE_suture','UK3CB_BAF_Javelin_Slung_Tube','UK3CB_BAF_Javelin_CLU']",
        1,
        {
            // One day this will re-init all arsenals that have this filter set
        },
        true
    ]
];

{_x call CBA_Settings_fnc_init;} forEach _VS_core_settings;
CHVD_allowNoGrass = false;
