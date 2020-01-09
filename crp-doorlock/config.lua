Config = {}
Config.Locale = 'en'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	{
		textCoords = vector3(434.7, -981.9, 30.9),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_door01',
				objYaw = -90.0,
				objCoords = vector3(434.7, -980.6, 30.8)
			},

			{
				objName = 'v_ilev_ph_door002',
				objYaw = -90.0,
				objCoords = vector3(434.7, -983.2, 30.8)
			}
		}
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objYaw = 90.0,
		distance = 2.5,
		objCoords  = vector3(449.6, -986.4, 30.6),
		textCoords = vector3(450.2, -986.9, 30.8),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objYaw = 90.0,
		distance = 2.5,
		objCoords  = vector3(464.3, -984.6, 43.8),
		textCoords = vector3(464.3, -983.6, 43.8),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 90.0,
		distance = 2.5,
		objCoords  = vector3(461.2, -985.3, 30.8),
		textCoords = vector3(461.5, -986.3, 31.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = -90.0,
		distance = 2.5,
		objCoords  = vector3(452.6, -982.6, 30.7),
		textCoords = vector3(453.0, -982.1, 30.9),
		authorizedJobs = { 'none' },
		locked = true
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objYaw = -180.0,
		distance = 2.5,
		objCoords  = vector3(447.2, -980.6, 30.6),
		textCoords = vector3(447.65, -980.0, 30.75),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To downstairs (double doors)
	{
		textCoords = vector3(444.7, -989.4, 30.9),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2.0,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 180.0,
				objCoords = vector3(443.9, -989.0, 30.6)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 0.0,
				objCoords = vector3(445.3, -988.7, 30.6)
			}
		}
	},

	-- To upstairs (double doors)
	{
		textCoords = vector3(443.0298, -993.241, 30.9),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2.0,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor006',
				objYaw = 90.0,
				objCoords = vector3(443.0298, -991.941, 30.9)
			},

			{
				objName = 'v_ilev_ph_gendoor006',
				objYaw = -90.0,
				objCoords = vector3(443.0298, -994.5412, 30.83)
			}
		}
	},

	-- To processing, dispatch, intel (double doors)
	{
		textCoords = vector3(446.1208, -986.5, 26.8),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 90.0,
				objCoords = vector3(446.1345, -985.1985, 26.8)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = -90.0,
				objCoords = vector3(446.1361, -987.7968, 26.8)
			}
		}
	},

    -- To Offices
	{
		textCoords = vector3(452.1, -983.82, 26.67),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 180.0,
				objCoords = vector3(450.7913, -983.9051, 26.8)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 0.0,
				objCoords = vector3(453.3816, -983.9051, 26.8)
			}
		}
    },

    -- To Ülekuulamine
    {
		objName = 'v_ilev_ph_gendoor005',
		objYaw = 90.0,
		objCoords  = vector3(454.32, -981.461, 26.82),
		textCoords = vector3(454.32, -982.661, 26.82),
		authorizedJobs = { 'police' },
		locked = false
	},

    -- To Ülekuulamine door 2
        {
            objName = 'v_ilev_ph_gendoor006',
            objYaw = 90.0,
            objCoords  = vector3(458.987, -981.5233, 26.82),
            textCoords = vector3(458.987, -982.7533, 26.82),
            authorizedJobs = { 'police' },
            locked = true
        },

    -- To Storage
        {
            objName = 'v_ilev_ph_gendoor005',
            objYaw = 180.0,
            objCoords  = vector3(452.5199, -972.7687, 26.82),
            textCoords = vector3(453.7199, -972.7687, 26.82),
            authorizedJobs = { 'police' },
            locked = true
        },
	--
	-- Mission Row Cells
	--
    -- Second Cells
    -- Vasak
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(440.8802, -985.2081, 26.82),
		textCoords = vector3(440.8802, -986.4081, 26.82),
		authorizedJobs = { 'police' },
		locked = true
    },
    -- Parem
    {
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(440.8946, -981.5637, 26.82),
		textCoords = vector3(440.8946, -982.7637, 26.82),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 0.0,
		objCoords  = vector3(463.8, -992.6, 24.9),
		textCoords = vector3(463.3, -992.6, 25.1),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -90.0,
		objCoords  = vector3(462.3, -993.6, 24.9),
		textCoords = vector3(461.8, -993.3, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.3, -998.1, 24.9),
		textCoords = vector3(461.8, -998.8, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.7, -1001.9, 24.9),
		textCoords = vector3(461.8, -1002.4, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		distance = 2.5,
		objCoords  = vector3(463.4, -1003.5, 25.0),
		textCoords = vector3(464.6, -1003.5, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		textCoords = vector3(468.6, -1014.4, 26.6),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 0.0,
				objCoords  = vector3(467.3, -1014.4, 26.5)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 180.0,
				objCoords  = vector3(469.9, -1014.4, 26.5)
			}
		}
	},

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objYaw = 90.0,
		objCoords  = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 15
	},

	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objYaw = 30.0,
		objCoords  = vector3(1855.1, 3683.5, 34.2),
		textCoords = vector3(1855.1, 3683.5, 35.0),
		authorizedJobs = { 'police' },
		locked = false
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		textCoords = vector3(-443.5, 6016.3, 32.0),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_shrf2door',
				objYaw = -45.0,
				objCoords  = vector3(-443.1, 6015.6, 31.7),
			},

			{
				objName = 'v_ilev_shrf2door',
				objYaw = 135.0,
				objCoords  = vector3(-443.9, 6016.6, 31.7)
			}
		}
	},

	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1844.9, 2604.8, 44.6),
		textCoords = vector3(1844.9, 2608.5, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1818.5, 2604.8, 44.6),
		textCoords = vector3(1818.5, 2608.4, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	
	-- Entrance Gate (Mission Row mod)
	{
		objName = 'prop_facgate_08',
		objCoords  = vector3(410.74, -1026.17, 28.41),
		textCoords = vector3(410.5, -1024.17, 30.41),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 15,
		size = 4
	}
}