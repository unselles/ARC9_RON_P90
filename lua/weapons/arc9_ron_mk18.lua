AddCSLuaFile()

SWEP.Base					= "arc9_base"

SWEP.Spawnable				= true
SWEP.Category				= "ARC9 - Ready or Not"
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName				= "MK18 MOD0"
SWEP.TrueName				= "MK18"

SWEP.Class					= "Assault Rifle"
SWEP.Trivia = {
	Manufacturer	= "Colt Defense",
	Calibre			= "5.56x45 NATO",
	Mechanism		= "Open Bolt",
	Country			= "USA",
	Year			= 1999
}
if ARC9:UseTrueNames() then
	SWEP.PrintName				= SWEP.TrueName
	SWEP.Trivia.Manufacturer	= "	Colt Defense, Daniel Defense"
end

SWEP.Credits = {
	Author	= "Unselles",
}

SWEP.Description				= [[A homegrown American icon commonly found in SWAT teams nationwide, the MK18 eschews raw firepower in favor of top handling, low recoil, and familiarity.]]


SWEP.ViewModel				= "models/weapons/arc9/mk18.mdl"
SWEP.WorldModel				= "models/weapons/arc9/mk18.mdl"
SWEP.ViewModelFOVBase		= 70

SWEP.Slot					= 2
SWEP.Crosshair				= false

SWEP.MirrorVMWM				= true
SWEP.WorldModelOffset = {
	Pos				= Vector(-8, 2, -6),
	Ang				= Angle(-5, 0, 180),
	Scale				= 1
}

SWEP.DefaultBodygroups		= "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax				= 40 -- Damage done at point blank range
SWEP.DamageMin				= 20 -- Damage done at maximum range

SWEP.DamageRand				= 0 -- Damage varies randomly per shot by this fraction. 0.1				= +- 10% damage per shot.

SWEP.RangeMin				= 15 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax				= 50 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration			= 30 -- Units of wood that can be penetrated by this gun.

SWEP.PhysBulletMuzzleVelocity	= 715 / ARC9.HUToM

-------------------------- MAGAZINE

SWEP.Ammo						= "pistol" -- What ammo type this gun uses.
SWEP.ChamberSize				= 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize					= 30 -- Self-explanatory.
SWEP.SupplyLimit				= 4 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit		= 2 -- Amount of reserve UBGL magazines you can take.

SWEP.DropMagazineModel				= 0 -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
	"weapons/arc9_ud/common/rifle_magdrop_1.ogg",
}	-- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount				= 1 -- Amount of mags to drop.
SWEP.DropMagazineTime				= 1

-------------------------- FIREMODES

SWEP.RPM				= 700
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
	{ Mode = -1, PoseParam = 2 },
	{ Mode = 1, PoseParam = 1 }
}

-------------------------- MELEE

SWEP.Bash						= false
SWEP.PrimaryBash				= false

SWEP.BashDamage					= 50
SWEP.BashLungeRange				= 128
SWEP.BashRange					= 64
SWEP.PreBashTime				= 0.25
SWEP.PostBashTime				= 0.5

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil				= 4

-- Static increasing recoil
SWEP.RecoilUp				= 0.4
SWEP.RecoilSide				= 0.1
SWEP.RecoilUpAddSighted = -0.35 -- Multiplier for vertical recoil

-- Unpredictable circle recoil
SWEP.RecoilRandomUp			= 0.2
SWEP.RecoilRandomSide		= 0.3

SWEP.RecoilDissipationRate	= 15 -- How much recoil dissipates per second.
SWEP.RecoilResetTime		= 0.2 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 0.10

SWEP.RecoilAutoControl		= 5
SWEP.RecoilAutoControlMultHipFire = 0.2
SWEP.RecoilAutoControlMultSights = 0.2
SWEP.RecoilAutoControlMultCrouch = 3

SWEP.RecoilKick				= 1
SWEP.RecoilPatternDrift		= 5000

SWEP.RecoilMultHipFire				= 1.25
SWEP.RecoilAutoControlMultHipFire	= 0.5

-- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilMultHipFire = 0.15
SWEP.VisualRecoilMultSights = 0.015
SWEP.VisualRecoilMultCrouch = 0.10

SWEP.VisualRecoilCenter = Vector(0, 0, 0)
SWEP.VisualRecoilUp = 3
SWEP.VisualRecoilSide = 0.2 -- Horizontal tilt
SWEP.VisualRecoilSideAddSighted = 0.05
SWEP.VisualRecoilRoll = 50 -- Roll tilt

SWEP.VisualRecoilPositionBump = 1
SWEP.VisualRecoilPositionBumpUp = -0.75

SWEP.VisualRecoilPunch = 7 -- How far back visual recoil moves the gun
SWEP.VisualRecoilPunchSights = 0 -- How far back visual recoil moves the gun

-------------------------- SPREAD

SWEP.Spread				= math.rad(0.1)

SWEP.SpreadMultHipFire				= 2
SWEP.SpreadMultMidAir				= 2
SWEP.SpreadMultMove					= 2
SWEP.SpreadMultCrouch				= 0.5

-------------------------- HANDLING

SWEP.FreeAimRadius			= 10 / 5.25 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway					= 0.1 + 0.1 -- How much the gun sways.

SWEP.SwayMultMidAir			= 1.8
SWEP.SwayMultMove			= 1.05
SWEP.SwayMultCrouch			= 0.66
SWEP.SwayMultShooting		= 1.0

SWEP.FreeAimRadiusSights	= 1

SWEP.SwayMultSights				= 0.1

SWEP.AimDownSightsTime		= 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime		= 0.4 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult				= 0.95
SWEP.SpeedMultSights		= 0.75
SWEP.SpeedMultShooting		= 0.75
SWEP.SpeedMultMelee			= 0.75
SWEP.SpeedMultCrouch		= 1
SWEP.SpeedMultBlindFire		= 1

-------------------------- TRACERS

SWEP.TracerNum				= 6 -- Tracer every X
SWEP.TracerColor			= Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos			= Vector(-6.48, -10, 2),
	Ang			= Angle(0, 0, 0),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos			= Vector(0, 0, 0),
		Ang			= Angle(0, 0, 0),
	},
	ViewModelFOV = 65,
	Magnification	= 1.1,
}

SWEP.SprintPos				= Vector(-1, -12, -2)
SWEP.SprintAng				= Angle(15.5, 2, -7)

SWEP.ActivePos				= Vector(-4, -9, 1)
SWEP.ActiveAng				= Angle(0, 0, 0)

SWEP.CrouchPos				= Vector(-4, -12, -1)
SWEP.CrouchAng				= Angle(0, 0, -10)

SWEP.CustomizeAng			= Angle(90, 0, 0)
SWEP.CustomizePos			= Vector(20, 25, 5)
SWEP.CustomizeSnapshotFOV	= 70

-------------------------- HoldTypes

SWEP.HoldType				= "ar2"
SWEP.HoldTypeSprint			= "passive"
SWEP.HoldTypeHolstered		= "passive"
SWEP.HoldTypeSights			= "ar2"
SWEP.HoldTypeCustomize		= "slam"
SWEP.HoldTypeBlindfire		= "pistol"

SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload				= false
SWEP.AnimDraw				= false

-------------------------- EFFECTS

SWEP.MuzzleParticle			= "muzzleflash_1" -- Used for some muzzle effects.

SWEP.ShellModel				= "models/shared/shells/9mm/9mm_casing.mdl"
SWEP.ShellCorrectAng		= Angle(0, 0, -90)
SWEP.ShellScale				= 1.5
SWEP.ShellPhysBox			= Vector(0.5, 0.5, 2)

SWEP.CamQCA					= 3
SWEP.CamOffsetAng			= Angle(0, 90, 0)
-------------------------- SOUNDS


local path					= ")^weapons/acr9_ron_mk18/"
local common				= ")^weapons/arc9_ron_shared/"
SWEP.FirstShootSound			= path .. "weap_m16_fire_01.ogg"
SWEP.ShootSound					= path .. "weap_m16_fire_02.ogg"
SWEP.DistantShootSound			= path .. ""
SWEP.ShootSoundSilenced			= path .. "M4_Fire1_Suppressed.ogg"
SWEP.DistantShootSoundSilenced	= common .. ""
SWEP.DryFireSound				= common .. "weap_mp5_dryfire_03.ogg"

SWEP.ShootSound = {
	path .. "weap_m16_fire_01.ogg",
	path .. "weap_m16_fire_02.ogg",
	path .. "weap_m16_fire_03.ogg",
	path .. "weap_m16_fire_04.ogg"
}
SWEP.ShootSoundSilenced = {
	path .. "M4_Fire1_Suppressed.ogg",
	path .. "M4_Fire2_Suppressed.ogg",
	path .. "M4_Fire3_Suppressed.ogg",
	path .. "M4_Fire4_Suppressed.ogg"
}

SWEP.DryFireSingleAction = false

local ratel = {common .. "pistol_rattle_1.ogg", common .. "pistol_rattle_2.ogg", common .. "pistol_rattle_3.ogg"}
SWEP.EnterSightsSound = ratel
SWEP.ExitSightsSound = ratel


SWEP.FiremodeSound				= "weapons/arc9_ron_shared/SwitchToSemi.ogg"

local ci = CHAN_AUTO
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.ReloadInSights				= false -- This weapon can aim down sights while reloading.

SWEP.Animations = {
	["ready"] = {
		Source				= "ready",
		Time				= 2.45,
		EventTable = {
			{s	= path .. "MK18_FirstDraw.ogg",			t = 0},
			{s	= common .. "Cloth-ReloadStart.ogg",			t = 0},
			{s	= common .. "Cloth-DryReloadEndGrab.ogg",			t = 20},
		},
	},
	["idle"] = {
		Source				= "idle",
		Time				= 1
	},
	["idle_empty"] = {
		Source				= "idle_empty",
		Time				= 1
	},
	["draw"] = {
		Source				= "draw",
		Time				= 30 / 22,
		EventTable = {
			{s	= common .. "Universal_Long_Draw_02.ogg",			t = 0.35},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["draw_empty"] = {
		Source				= "draw_empty",
		Time				= 30 / 22,
		EventTable = {
			{s	= common .. "raise.ogg",			t = 0},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["holster"] = {
		Source				= "holster",
		Time				= 30 / 22,
		MinProgress			= 0.3,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "Universal_Long_Holster_02.ogg",			t = 0},
		},
	},
	["holster_empty"] = {
		Source				= "holster_empty",
		Time				= 30 / 22,
		MinProgress			= 0.3,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "cloth_6.ogg",			t = 0.2},
		},
	},
	["fire"] = {
		Source				= "fire",
		Time				= 0.5,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= {
				path .. "",
				path .. ""
			},										t = 0.03},
		},
	},
	["fire_iron"] = {
	Time				= 0.5,
	Source = "",
	},
	["fire_empty"] = {
		Source				= "fire_empty",
		Time				= 0.5,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= path .. "mech_last.ogg",			t = 0.03},
		},
	},
	["firemode_1"] = {
		 Source = "firemodedown",
	},
	["firemode_2"] = {
		Source = "firemodeup",
	},

	-- Reloads --

	["reload"] = {
		Source				= "reload",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 2.4,
		MinProgress				= 1.1,
		LastClip1OutTime				= 0.9,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 10000, v2	= 20000, vt	= 0.3,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
			{FOV = -6,
			FOV_Start = 1.4,
			FOV_End = 1.7,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{s = rottle,									t = 0},
			{s = path .. "MK18_Reload_Normal_Start.ogg",		t = 0.075},
			{s = rottle,									t = 0.3},
			{s = path .. "MK18_Reload_Normal_MagOut.ogg",				t = 0.5, c = ci},
			{s = rottle,									t = 0.35},
			{s = path .. "MK18_Reload_Normal_MagIn.ogg",					t = 0.95, c = ci},
			{s = rottle,									t = 0.5},
			{s = common .. "magpouch_replace_small.ogg",	t = 1.25},
			{s = rottle,	}
		},
	},
	["reload_empty"] = {
		Source				= "reload_empty",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 2.3,
		MinProgress				= 1.5,
		LastClip1OutTime				= 0.7,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.4},
			{v1	= 10000, v2	= 20000, vt	= 0.1,	t = 0.9},
			{v1	= 40000, v2	= 40000, vt	= 0.2,	t = 1.7},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 2.1},
			{FOV = -6,
			FOV_Start = 1.8,
			FOV_End = 2.4,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{FOV = 6,
			FOV_Start = 0.2,
			FOV_End = 0.4,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 1.8},
			{s = rattel,								t = 0},
			{s = path .. "MK18_Reload&Quick_Empty_Start.ogg",			t = 0, c = ci},
			{s = path .. "MK18_Reload_Empty_MagOut.ogg",				t = 0.12, c = ci},
			{s = common .. "weap_rifle_mag_drop_03.ogg",		t = 0.15},
			{s = path .. "MK18_Reload_Normal_MagIn.ogg",				t = 0.80, c = ci},
			{s = path .. "MK18_Reload_Empty_BoltRelease.ogg",					t = 1.45, c = ci},
			{s = rattel,								t = 1.2},
			{s = path .. "sliderel_deact.ogg",			t = 1.62, c = ci},
			{s = rottle,								t = 1.9},
		},
	},

	-- Inspect --

	["inspect"] = {
		Source = "inspect_enter",
		Time				= 3,
		EventTable = {
			{s	= path .. "M4_MagCheck.ogg",			t = 0},
			{s	= common .. "Cloth-ReloadStart.ogg",			t = 0},
			{s	= common .. "Cloth-DryReloadEndGrab.ogg",			t = 0},
		},
},
}




-------------------------- ATTACHMENTS

SWEP.Hook_ModifyBodygroups = function(wep, data)
	local eles = data.elements
	 local mdl = data.model

	if eles["ron_mk1_fs"] then
		if wep:GetValue("FoldSights") then
			mdl:SetBodygroup(3, 2)
		else
			mdl:SetBodygroup(3, 1)
		end
	end
end

SWEP.Attachments = {
	{
		PrintName						= "Overbarrel Left",
		DefaultAttName					= "Default",
		Category						= {"ron_m600v","ron_pointer",
			"eft_tactical",
		},
		Bone							= "light_3_socket",
		Pos								= Vector(0, 0, 0.0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, 0, 0)
	},
	{
		PrintName						= "Overbarrel Up",
		DefaultAttName					= "Default",
		Category						= { "ron_peq",
			"eft_tactical",
		},
		Bone							= "laser_socket",
		Pos								= Vector(0, 0, 0.0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, 0, 0)
	},
	{
		PrintName						= "Muzzle",
		DefaultAttName					= "Default",
		Category						= {"ron_socom338","ron_sfmb","ron_brake_default", "cod_muzzle"},
		Bone							= "sfmb_socket",
		Installed 						= "ron_brake_default",
		Pos								= Vector(0, 3.75, 0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, -3, 0)
	},
	{
		PrintName						= "Optic",
		DefaultAttName					= "Default",
		Category						= {"ron_holosight","ron_reflex","ron_scope","cod_optic",
			"eft_optic_small", "eft_optic_medium", "eft_optic_large"
		},
		Bone							= "tag_sight",
		Pos								= Vector(0, 2, -0.74),
		Ang								= Angle(0, -90, 0),
		Icon_Offset						= Vector(0, 0, 0)
	},
	{
		PrintName 						= "MK18 Back Sight",
		DefaultAttName					= "Default",
		Category 						= "ron_mk18_sight",
		Bone 							= "tag_sight",
		Installed 						= "ron_mk18_sight",
		Pos 							= Vector(0, 0, -0.74),
		Ang 							= Angle(0, -90, 0),
		Icon_Offset 					= Vector(0, 0, 0),
	},
	{
		PrintName 						= "Uderbarrel",
		DefaultAttName					= "Default",
		Category 						= {"ron_grip","eft_foregrip_small","cod_grips"},
		Bone 							= "foregrip_socket",
		Pos 							= Vector(0, 0, -0.0),
		Ang 							= Angle(0, 180, 0),
		Icon_Offset 					= Vector(0, 0, 0),
	},
}

SWEP.AttachmentElements = {
	["eft_tactical"] = {
		AttPosMods = {
			[1] = {
				Pos = Vector(0, 0, 0.6),
				Ang = Angle(0, 0, 180),
			},
		},
	},
	["cod_muzzle"] = {
		AttPosMods = {
			[3] = {
				Pos = Vector(0, 0, 0),
				Ang = Angle(0, -90, 0),
			},
		},
	},
	["cod_optic"] = {
		AttPosMods = {
			[4] = {
				Pos = Vector(0, 2, -0.55),
			},
		},
	},
	["eft_optic_small"] = {
		AttPosMods = {
			[4] = {
				Pos = Vector(0, 2, -0.55),
			},
		},
	},
	["eft_optic_medium"] = {
		AttPosMods = {
			[4] = {
				Pos = Vector(0, 2, -0.55),
			},
		},
	},
	["eft_optic_large"] = {
		AttPosMods = {
			[4] = {
				Pos = Vector(0, 2, -0.55),
			},
		},
	},
	["cod_grips"] = {
		AttPosMods = {
			[6] = {
				Pos = Vector(0, 0, 0.25),
			},
		},
	},
}