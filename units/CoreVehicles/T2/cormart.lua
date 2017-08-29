return {
	cormart = {
		acceleration = 0.0204,
		brakerate = 0.3696,
		buildcostenergy = 3000,
		buildcostmetal = 300,
		buildpic = "CORMART.DDS",
		buildtime = 4270,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -1 -7",
		collisionvolumescales = "36 22 38",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Mobile Artillery",
		energymake = 0.5,
		energyuse = 0.5,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 560,
		maxslope = 12,
		maxvelocity = 1.95,
		maxreversevelocity = 1.95*0.60,
		maxwaterdepth = 0,
		movementclass = "TANK3",
		name = "Pillager",
		nochasecategory = "NOTLAND VTOL",
		objectname = "CORMART",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 299,
		trackoffset = 8,
		trackstrength = 8,
		tracktype = "StdTank",
		trackwidth = 31,
		turninplace = true,
		turninplaceanglelimit = 110,
		turninplacespeedlimit = 1.287,
		turnrate = 445,
		script = "BASICTANKSCRIPT.LUA",
		customparams = {
			--ANIMATION DATA
				--PIECENAMES HERE
					basename = "base",
					turretname = "turret",
					sleevename = "sleeve",
					cannon1name = "barrel",
					flare1name = "flare",
					cannon2name = nil, --optional (replace with nil)
					flare2name = nil, --optional (replace with nil)
				--SFXs HERE
					firingceg = "barrelshot-tiny",
					driftratio = "0.4", --How likely will the unit drift when performing turns?
					rockstrength = "0.02", --Howmuch will its weapon make it rock ?
					rockspeed = "2", -- More datas about rock(honestly you can keep 2 and 1 as default here)
					rockrestorespeed = "1", -- More datas about rock(honestly you can keep 2 and 1 as default here)
					cobkickbackrestorespeed = "7.5", --How fast will the cannon come back in position?
					kickback = "-6", --How much will the cannon kickback
				--AIMING HERE
					cobturretyspeed = "35", --turretSpeed as seen in COB script
					cobturretxspeed = "35", --turretSpeed as seen in COB script
					restoretime = "3000", --restore delay as seen in COB script
			canareaattack = 1,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-2.2791595459 -0.365720275879 -0.110244750977",
				collisionvolumescales = "41.4731445313 24.6765594482 38.8007202148",
				collisionvolumetype = "Box",
				damage = 450,
				description = "Pillager Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 138,
				object = "CORMART_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 350,
				description = "Pillager Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 55,
				object = "2X2B",
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
			core_artillery = {
				accuracy = 960,
				areaofeffect = 129,
				avoidfeature = false,
				craterareaofeffect = 129,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.5,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "PlasmaCannon",
				noselfdamage = true,
				range = 915,
				reloadtime = 3,
				soundhit = "xplomed4",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy2",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 349.5354,
				damage = {
					bombers = 17,
					default = 235,
					fighters = 17,
					subs = 5,
					vtol = 17,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTLAND",
				def = "CORE_ARTILLERY",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
