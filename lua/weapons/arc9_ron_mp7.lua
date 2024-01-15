AddCSLuaFile()

SWEP.Base					= "arc9_base"

SWEP.Spawnable				= true
SWEP.Category				= "ARC9 - Ready or Not"
SWEP.SubCategory = "PDWs/SMGs"

SWEP.PrintName				= "HK MP7A2"
SWEP.TrueName				= "MP7A2"

SWEP.Class					= "PDW SMG"
SWEP.Trivia = {
	Manufacturer	= "Heckler & Koch",
	Calibre			= "4.6×30mm",
	Mechanism		= "Open Bolt",
	Country			= "Germany",
	Year			= 2001
}
if ARC9:UseTrueNames() then
	SWEP.PrintName				= SWEP.TrueName
    SWEP.Trivia.Manufacturer	= "Heckler & Koch"
end

SWEP.Credits = {
	Author	= "Unselles",
}

SWEP.Description				= [[A personal defense weapon originally designed for fielding with rear-echelon troops during the Cold War, its short and compact nature made it popular with law enforcement units. Its 40 round magazine has ammunition that is capable of defeating body armor.]]


SWEP.ViewModel				= "models/weapons/arc9/mp7.mdl"
SWEP.WorldModel				= "models/weapons/arc9/mp7.mdl"
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

SWEP.DamageMax				= 20 -- Damage done at point blank range
SWEP.DamageMin				= 10 -- Damage done at maximum range

SWEP.DamageRand				= 0 -- Damage varies randomly per shot by this fraction. 0.1				= +- 10% damage per shot.

SWEP.RangeMin				= 15 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax				= 50 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration			= 28 -- Units of wood that can be penetrated by this gun.

SWEP.PhysBulletMuzzleVelocity	= 715 / ARC9.HUToM

-------------------------- MAGAZINE

SWEP.Ammo						= "pistol" -- What ammo type this gun uses.
SWEP.ChamberSize				= 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize					= 40 -- Self-explanatory.
SWEP.SupplyLimit				= 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit		= 2 -- Amount of reserve UBGL magazines you can take.

SWEP.DropMagazineModel				= false -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
	"weapons/arc9_ud/common/rifle_magdrop_1.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_2.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_3.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_4.ogg"
}	-- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount				= 0 -- Amount of mags to drop.
SWEP.DropMagazineTime				= 0

-------------------------- FIREMODES

SWEP.RPM				= 950
SWEP.Firemodes = {
	{
		Mode				= -1
	},
	{
		Mode				= 1
	}
}

-------------------------- MELEE

SWEP.Bash						= true
SWEP.PrimaryBash				= false

SWEP.BashDamage					= 50
SWEP.BashLungeRange				= 128
SWEP.BashRange					= 64
SWEP.PreBashTime				= 0.25
SWEP.PostBashTime				= 0.5


--          Recoil
-- touch these

SWEP.Recoil = 0.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 3   -- up recoil
SWEP.RecoilSide = 0.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 0.3   -- random left/right

SWEP.RecoilAutoControl = 3.2 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.1   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.125   --   when fullautoing
SWEP.VisualRecoilRoll = 3 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1.5 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 5 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 10 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.1 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(6, 25, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.5 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10


-------------------------- SPREAD

SWEP.Spread				= math.rad(1)

SWEP.SpreadMultHipFire				= 2
SWEP.SpreadMultMidAir				= 2
SWEP.SpreadMultMove					= 2
SWEP.SpreadMultCrouch				= 0.5

-------------------------- HANDLING

SWEP.FreeAimRadius			= 10 / 1.25 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway					= 0.1 + 0.1 -- How much the gun sways.

SWEP.SwayMultMidAir			= 1.8
SWEP.SwayMultMove			= 1.05
SWEP.SwayMultCrouch			= 0.66
SWEP.SwayMultShooting		= 1.0

SWEP.FreeAimRadiusSights	= 1

SWEP.SwayMultSights				= 0.3

SWEP.AimDownSightsTime		= 0.2 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime		= 0.3 -- How long it takes to go from sprinting to being able to fire.

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
	Pos			= Vector(-6.42, -12, 2.36),
	Ang			= Angle(-0.035, 0.065, 0),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos			= Vector(0, 15, -4),
		Ang			= Angle(0, 0, -45),
	},
	ViewModelFOV = 50,
	Magnification	= 1.1,
}

SWEP.SprintPos				= Vector(-1, -12, -2)
SWEP.SprintAng				= Angle(15.5, 2, -7)

SWEP.ActivePos				= Vector(-4, -10, 1)
SWEP.ActiveAng				= Angle(.5, 0, 0)

SWEP.CrouchPos				= Vector(-1, 2, -1)
SWEP.CrouchAng				= Angle(0, 0, -5)

SWEP.CustomizeAng			= Angle(90, 0, 0)
SWEP.CustomizePos			= Vector(20, 25, 5)
SWEP.CustomizeSnapshotFOV	= 70

SWEP.BobSettingsMove =  {1.2, -0.8, 0.9,    0.4, 1.5, 0.7}
SWEP.BobSettingsSpeed = {0.91, 1, 1.45,    1, 0.92, 0.4}

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
SWEP.ShellCorrectAng		= Angle(0, 0, 0)
SWEP.ShellScale				= 1.5
SWEP.ShellPhysBox			= Vector(0.5, 0.5, 2)

SWEP.CamQCA					= 3
SWEP.CamOffsetAng			= Angle(0, 90, 0)
-------------------------- SOUNDS


local path					= ")^weapons/arc9_ron_mp7/"
local common				= ")^weapons/arc9_ron_shared/"
SWEP.FirstShootSound			= path .. "MP7_Fire_1.ogg"
SWEP.ShootSound					= path .. "MP7_Fire_2.ogg"
SWEP.DistantShootSound			= path .. ""
SWEP.ShootSoundSilenced			= path .. "MP7_Fire_1_Suppressed.ogg"
SWEP.DistantShootSoundSilenced	= common .. ""
SWEP.DryFireSound				= path .. "weap_mp5_dryfire_03.ogg"

SWEP.ShootSound = {
    path .. "MP7_Fire_1.ogg",
    path .. "MP7_Fire_2.ogg",
    path .. "MP7_Fire_3.ogg",
    path .. "MP7_Fire_4.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "MP7_Fire_1_Suppressed.ogg",
    path .. "MP7_Fire_2_Suppressed.ogg",
    path .. "MP7_Fire_3_Suppressed.ogg",
    path .. "MP7_Fire_4_Suppressed.ogg"
}

SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ratel
SWEP.ExitSightsSound = ratel

SWEP.DistantShootSound = {
    path .. "MP7_Reflection_Ext_Base_01.ogg",
    path .. "MP7_Reflection_Ext_Base_01.ogg"
}
SWEP.DistantShootSoundIndoor = {
    path .. "MP7_Fire_1.ogg",
    path .. "MP7_Fire_2.ogg"
}

SWEP.DistantShootSoundSilenced = {
    common .. "Mp7_Suppressed_Reflection_EXT_Base_01.ogg",
    common .. "Mp7_Suppressed_Reflection_EXT_Base_02.ogg"
}
SWEP.DistantShootSoundSilencedIndoor = {
    common .. "Mp7_Suppressed_Reflection_INT_Base_01.ogg",
    common .. "Mp7_Suppressed_Reflection_INT_Base_02.ogg"
}

SWEP.FiremodeSound				= "weapons/arc9_ron_shared/SwitchToSemi.ogg"

local ci = CHAN_AUTO
local ratel = {path .. "pistol_rattle_1.ogg", path .. "pistol_rattle_2.ogg", path .. "pistol_rattle_3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.ReloadInSights				= false -- This weapon can aim down sights while reloading.

SWEP.Animations = {
	["ready"] = {
		Source				= "ready",
		Time				= 2.75,
		EventTable = {
			{s	= path .. "MP7_Ammo_FirstDraw.ogg",			t = 0},
			{s	= common .. "Cloth-ReloadStart.ogg",			t = 0},
			{s	= common .. "Cloth-DryReloadEndGrab.ogg",			t = 0},
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
		EventTable = {
			{s	= common .. "Universal_Long_Draw_02.ogg",			t = 0.35},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["draw_empty"] = {
		Source				= "draw_empty",
		Time				= 20 / 30,
		EventTable = {
			{s	= common .. "raise.ogg",			t = 0},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["holster"] = {
		Source				= "holster",
		Time				= 20 / 30,
		MinProgress			= 0.3,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "Universal_Long_Holster_02.ogg",			t = 0},
		},
	},
	["holster_empty"] = {
		Source				= "holster_empty",
		Time				= 20 / 30,
		MinProgress			= 0.3,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "cloth_6.ogg",			t = 0.2},
		},
	},
	["fire"] = {
		Source				= "fire",
		Time				= 1.5,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= {
		
				path .. "",
				path .. ""
			},										t = 0.03},
		},
	},
	["fire_empty"] = {
		Source				= "fire_empty",
		Time				= 16 / 30,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= path .. "mech_last.ogg",			t = 0},
		},
	},

	["fix"] = {
		Source				= "fix",
		Time				= 45 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
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
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_empty"] = {
		Source				= "fix_empty",
		Time				= 45 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
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
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_100"] = {
		Source				= "fix_100",
		Time				= 50 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
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
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_empty_100"] = {
		Source				= "fix_empty_100",
		Time				= 50 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
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
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},

	["cycle"] = {
		Source				= "fix",
		Time				= 36 / 30 * 0.7,
		ShellEjectAt				= 0.3,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
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
			{s	= path .. "chback.ogg",				t = 0.05},
			{s	= common .. "cloth_4.ogg", 			t = 0.2},
			{s	= path .. "chamber.ogg", 			t = 0.3},
		},
	},

	-- Reloads --

	["reload"] = {
		Source				= "reload",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 30 / 10,
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
			{s = path .. "MP7_Reload_Start_V2.ogg",		t = 0.075},
			{s = rattel,									t = 0.3},
			{s = path .. "MP7_Reload_MagOut.ogg",				t = 1, c = ci},
			{s = rattel,									t = 0.35},
			{s = path .. "MP7_Reload_MagIn.ogg",					t = 1.65, c = ci},
			{s = rottle,									t = 0.5},
			{s = common .. "magpouch_replace_small.ogg",	t = 1.25},
		},
	},
	["reload_empty"] = {
		Source				= "reload_empty",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 20 / 10,
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
			{s = path .. "MP7_Reload_Empty_Start.ogg",			t = 0, c = ci},
			{s = path .. "MP7_Reload_Empty_MagOut.ogg",				t = 0.35, c = ci},
			{s = path .. "MP7_Reload_Empty_MagIn.ogg",				t = 0.7, c = ci},
			{s = common .. "weap_smg_mag_drop_04.ogg",		t = 0.6},
			{s = rattel,								t = 1.2},
			{s = path .. "sliderel_deact.ogg",			t = 1.62, c = ci},
			{s = path .. "MP7_Reload_Empty_BoltRelease.ogg",					t = 1.1, c = ci},
			{s = rottle,								t = 1.9},
		},
	},
	
	-- Inspect --
	
	["inspect_enter"] = {
        Source = "enter_inspect",
		Time				= 0,
		EventTable = {
			{s	= path .. "MP7_Ammo_CHeck.ogg",			t = 0},
			{s	= common .. "Cloth-ReloadStart.ogg",			t = 0},
			{s	= common .. "Cloth-DryReloadEndGrab.ogg",			t = 0},
		},
	},
}

-------------------------- ATTACHMENTS

SWEP.Attachments = {
	{
		PrintName						= "Overbarrel Side",
		DefaultAttName					= "Default",
		Category						= {"ron_wmlight","ron_pointer"},
		Bone							= "pointer_socket",
		Pos								= Vector(0, 0, 0.0),
		Ang								= Angle(0, 180, 0),
		Icon_Offset						= Vector(0, 0, 0)
	},
	{
		PrintName						= "Overbarrel Up",
		DefaultAttName					= "Default",
		Category						= "ron_peq",
		Bone							= "laser_socket",
		Pos								= Vector(0, 0, 0.0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, 0, 0)
	},
	{
		PrintName						= "Optic",
		DefaultAttName					= "Default",
		Category						= {"ron_holosight","ron_reflex"},
		Bone							= "tag_sight",
		Pos								= Vector(0, -2.1, -0.22),
		Ang								= Angle(0, -90, 0),
		Icon_Offset						= Vector(0, 0, 0)
	},
	{
		PrintName 						= "Uderbarrel",
		DefaultAttName					= "Default",
		Category 						= "ron_grip",
		Bone 							= "foregrip_socket",
	//  Installed 						= "",
		Pos 							= Vector(0, 0, -0.0),
		Ang 							= Angle(0, 180, 0),
		Icon_Offset 					= Vector(0, 0, 0),
	},
}

