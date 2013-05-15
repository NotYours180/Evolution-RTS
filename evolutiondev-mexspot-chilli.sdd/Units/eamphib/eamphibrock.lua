-- UNITDEF -- EAMPHIBROCK --
--------------------------------------------------------------------------------

local unitName = "eamphibrock"

--------------------------------------------------------------------------------

local unitDef = {

  acceleration       = 1,
  brakeRate          = 0.1,
  buildCostEnergy    = 0,
  buildCostMetal     = 34,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "LIGHT AMPHIB SUPPORT",
  corpse             = "ammobox",
  description        = [[Missile support tank
Light
100 Damage (per rocket) vs Armored
50 Damage (per rocket) vs Light/Building

� Fires 5 rockets in a burst pattern

Requires +7 Power]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "SMALL_UNIT",
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = "amphib",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 320,
  maxSlope           = 28,
  maxVelocity        = 3.4,
  maxReverseVelocity = 1,
  maxWaterDepth      = 5000,
  metalStorage       = 0,
  movementClass      = "TANK4",
  name               = "Spitter",
  noChaseCategory    = "VTOL",
  objectName         = "eamphibrock.s3o",
  onlytargetcategory2 = "VTOL",
  onlytargetcategory3 = "VTOL",
  onlytargetcategory4 = "VTOL",
  onlytargetcategory5 = "VTOL",
  onlytargetcategory6 = "VTOL",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "SMALL_UNIT",
  side               = "CORE",
  sightDistance      = 650,
  SonarDistance      = 650,
  stealth			 = true,
  sonarStealth		 = false,
  smoothAnim         = true,
  --  turnInPlace        = false,
  --  turnInPlaceSpeedLimit = 3.4,
  turnRate           = 1000,
--  turnrate           = 430,
  unitname           = "eamphibrock",
  workerTime         = 0,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:dirt",
	  "custom:blacksmoke",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "antiarmorrockets",
      onlyTargetCategory = "NOTAIR AMPHIB",
	  badTargetCategory  = "BUILDING LIGHT WALL",
    },
--[[
	[2]  = {
      def                = "TORP",
    },
]]--
  },
   customParams = {
	canareaattack="1",
    needed_cover = 2,
   	death_sounds = "soldier",
    RequireTech = "7 Power",
	armortype   = "light",
	normaltex = "unittextures/eamphibrocknormal.png", 
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {

  antiarmorrockets = {
    badTargetCategory = [[LIGHT BUILDING]],
    AreaOfEffect       = 100,
    avoidFriendly      = false,
    cegTag             = "missiletrailsmall",
    collideFriendly    = false,
    explosionGenerator = "custom:BulletImpact3",
	energypershot      = 25,
    fireStarter        = 70,
    guidance           = false,
	burst			   = 5,
	burstrate		   = 0.2,
    id                 = 136,
    interceptedByShieldType = 4,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = "missilesmallvlaunch.s3o",
    name               = "Rockets",
    range              = 650,
    reloadtime         = 2,
    weaponType		   = "Cannon",
    selfprop           = true,
    smokedelay         = ".1",
    smokeTrail         = false,
    soundStart         = "rocket1.wav",
    soundHit           = "explode5.wav",
    startsmoke         = "0",
    startVelocity      = 250,
	sprayangle		   = 2000,
    tolerance          = 8000,
    turnrate           = 4680,
    turret             = true,
    weaponAcceleration = 131,
    weaponTimer        = 5,
    weaponVelocity     = 350,
	customparams = {
	  damagetype		= "eamphibrock",  
    },     
    damage = {
      default           = 100,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------