-- UNITDEF -- EGEOTHERMAL --
--------------------------------------------------------------------------------

local unitName = "egeothermal"

--------------------------------------------------------------------------------

local unitDef = {
  activateWhenBuilt  = true,
  buildAngle         = 2048,
  buildCostEnergy    = 0,
  buildCostMetal     = 100,
  builder            = false,
  buildTime          = 5,
  canAttack			 = false,
  category           = "BUILDING NOTAIR ECO",
  corpse             = "ammobox",
  description        = [[Produces +7 Energy
Provides +7 Power]],
  energyMake         = 7,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "GEOPOP",
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = "eco",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 2000,
  maxSlope           = 60,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = "Geothermal Powerplant",
  objectName         = "egeothermal2.s3o",
  onoffable			 = false,
  radarDistance      = 0,
  repairable		 = false,
  selfDestructAs     = "GEOPOP",
  side               = "ARM",
  sightDistance      = 367,
  smoothAnim         = true,
  unitname           = "egeothermal",
  workerTime         = 0,
  yardMap            = "oooo oGGo oGGo oooo",
  
sfxtypes = {
	pieceExplosionGenerators = {
		"deathceg0",
		"deathceg1",
	},
	explosiongenerators = {
	  "custom:blacksmoke",
	  "custom:fusionreactiongeo",
	  "custom:skyhatelaser",
    },
},
  
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "gdenergy",
    },
  },
  weapons = {
  },
  customParams = {
	iseco = 1,
    needed_cover = 2,
	death_sounds = "generic",
    ProvideTech = "7 Power",
    ProvideTechRange = "600",
	armortype   = "building",
	normaltex = "unittextures/lego2skin_explorernormal.png", 
	groundtexselectimg = ":nc:bitmaps/power/power.png",
	groundtexselectimg1 = ":nc:bitmaps/power/power1.png",
	groundtexselectimg2 = ":nc:bitmaps/power/power2.png",
	groundtexselectimg3 = ":nc:bitmaps/power/power3.png",
	groundtexselectimg4 = ":nc:bitmaps/power/power4.png",
	groundtexselectimg5 = ":nc:bitmaps/power/power5.png",
	groundtexselectimg6 = ":nc:bitmaps/power/power6.png",
    groundtexselectxsize = 600, -- optional
    groundtexselectzsize = 600, -- optional
	helptext = [[Geothermal Powerplant

Produces energy and power in an increased capacity and radius

+7 Energy

+7 Power

+600 Power Radius

Can only be built upon a geothermal vent]],
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=6,
	buildingGroundDecalSizeY=6,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[egeothermal_aoplane.dds]],
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
