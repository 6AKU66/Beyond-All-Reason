return {
	corseal = {
		acceleration = 0.0462,
		brakerate = 0.0627,
		buildcostenergy = 9000,
		buildcostmetal = 500,
		buildpic = "CORSEAL.DDS",
		buildtime = 12051,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -7 -2",
		collisionvolumescales = "31 31 31",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Medium Amphibious Tank",
		energymake = 0.5,
		energyuse = 0.5,
		explodeas = "smallexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 2340,
		maxslope = 12,
		maxvelocity = 2.65,
		maxwaterdepth = 255,
		movementclass = "ATANK3",
		name = "Croc",
		nochasecategory = "VTOL",
		objectname = "CORSEAL",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 399,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "StdTank",
		trackwidth = 30,
		turninplace = true,
		turninplaceanglelimit = 110,
		turninplacespeedlimit = 1.7457,
		turnrate = 487,
		script = "BASICTANKSCRIPT.LUA",
		customparams = {
			--ANIMATION DATA
				--PIECENAMES HERE
					basename = "base",
					turretname = "turret",
					sleevename = "sleeves",
					cannon1name = "barrel1",
					flare1name = "flare1",
					cannon2name = "barrel2", --optional (replace with nil)
					flare2name = "flare2", --optional (replace with nil)
				--SFXs HERE
					firingceg = "barrelshot-medium",
					driftratio = "0.2", --How likely will the unit drift when performing turns?
					rockstrength = "0.02", --Howmuch will its weapon make it rock ?
					rockspeed = "0.25", -- More datas about rock(honestly you can keep 2 and 1 as default here)
					rockrestorespeed = "0.125", -- More datas about rock(honestly you can keep 2 and 1 as default here)
					cobkickbackrestorespeed = "3", --How fast will the cannon come back in position?
					kickback = "-2.4", --How much will the cannon kickback
				--AIMING HERE
					cobturretyspeed = "75", --turretSpeed as seen in COB script
					cobturretxspeed = "45", --turretSpeed as seen in COB script
					restoretime = "3000", --restore delay as seen in COB script
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-0.710494995117 -1.1132812503e-06 0.9375",
				collisionvolumescales = "31.2236328125 16.1107177734 37.8449707031",
				collisionvolumetype = "Box",
				damage = 2000,
				description = "Croc Wreckage",
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 236,
				object = "CORSEAL_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1500,
				description = "Croc Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 118,
				object = "2X2E",
                collisionvolumescales = "35.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			core_croc = {
				areaofeffect = 64,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-small",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "PlasmaCannon",
				noselfdamage = true,
				range = 440,
				reloadtime = 0.9,
				soundhit = "xplomed4",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "cannon2",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 260,
				damage = {
					bombers = 29,
					default = 116,
					fighters = 29,
					subs = 5,
					vtol = 29,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORE_CROC",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
