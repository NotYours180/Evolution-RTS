-- UNITDEF -- EEXNUKEARTY --
--------------------------------------------------------------------------------

local unitName                   = "eexnukearty"

--------------------------------------------------------------------------------

local power						 = [[40 power]]
local armortype					 = [[armored]]
local supply					 = [[40]]

local weapon1Damage              = 500
local weapon1AOE				 = 500
local energycosttofire			 = weapon1Damage / 10 * ((weapon1AOE / 1000) + 1)

local function roundToFirstDecimal(energycosttofire)
    return math.floor(energycosttofire*10 + 0.5)*0.1
end

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;

	--**


	acceleration                 = 0.18,
	brakeRate                    = 0.2,
	buildCostEnergy              = 0,
	buildCostMetal               = 750,
	builder                      = false,
	buildTime                    = 5,
	canAttack                    = true,
	cancollect                   = "1",
	canGuard                     = true,
	canHover                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	category                     = "ARMORED NOTAIR SUPPORT",
	corpse                       = "ammobox",
	description                  = [[Unit Type: Endbringer Class Low Yeild Nuclear Saturation Artillery
Armortype: ]] ..armortype.. [[ 

500 Damage vs Building
250 Damage vs Light/Armored

Energy cost to fire: ]] .. roundToFirstDecimal(energycosttofire) .. [[ 

Requires +]] .. power .. [[ 
Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "BIG_UNIT",
	footprintX                   = 9,
	footprintZ                   = 9,
	fireState			         = 0,
	highTrajectory               = 1,
	iconType                     = "assault",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	leaveTracks                  = false,
	maxDamage                    = 10000,
	maxVelocity                  = 2.3,
	maxReverseVelocity           = 1,
	maxWaterDepth                = 20,
	metalStorage                 = 0,
	movementClass                = "HOVERTANKEXPERIMENTAL9",
	name                         = "Lacerator",
	noChaseCategory              = "VTOL",
	objectName                   = "eexnukearty.s3o",
	pushResistant		         = true,
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "BIG_UNIT",
	side                         = "CORE",
	sightDistance                = 500,
	smoothAnim                   = true,
	turnInPlace                  = true,
	turnRate                     = 5000,
	unitname                     = "eexnukearty",
	workerTime                   = 0,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:dirt",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		[1]                      = {
			def                  = "nukeartyweapon",
			onlyTargetCategory   = "NOTAIR AMPHIB",
			badTargetCategory    = "LIGHT ARMORED WALL",
		},
	},
	customParams                 = {
		death_sounds             = "nuke",
		RequireTech              = power,
		armortype                = armortype,
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
		helptext                 = [[]],
	},
}


--------------------------------------------------------------------------------
-- Energy Per Shot Calculation is: dmg / 20 * ((aoe / 1000) + 1)

local weaponDefs                 = {
	nukeartyweapon               = {
		
		accuracy                 = 1000,
		AreaOfEffect             = weapon1AOE,
		avoidFriendly            = false,
		avoidFeature             = false,
		collideFriendly          = false,
		collideFeature           = false,
		
		cegTag                   = "nukeartyshot",
		explosionGenerator       = "custom:nukeartyexpl",
		edgeEffectiveness        = 0.1,
		energypershot            = energycosttofire,
		id                       = 172,
		impulseFactor            = 0,
		interceptedByShieldType  = 4,
		name                     = "Light Cannon",
		range                    = 3000,
		reloadtime               = 0.5,
		weaponType		         = "Cannon",
		soundHit                 = "nukeartyhit.wav",
		soundStart               = "nukeartyshot.wav",
		
		tolerance                = 2000,
		turret                   = true,
		weaponVelocity           = 800,
		customparams             = {
			damagetype		     = "eexnukearty",  
			
			--Upgrades--
			upgradeClass		 = "groundweapons",
		}, 
		damage                   = {
			default              = weapon1Damage,
		},
	},
}
unitDef.weaponDefs               = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
