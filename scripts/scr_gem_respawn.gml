

global.spawngem[0,0] = 672 // X pos of room 0
global.spawngem[0,1] = 384 // y pos of room 0
global.spawngem[1,0] = 2656 // X pos of room 1
global.spawngem[1,1] = 416 // y pos of room 1
global.spawngem[2,0] = 4640 // X pos of room 2
global.spawngem[2,1] = 768 // y pos of room 2
global.spawngem[3,0] = 6784 // X pos of room 3
global.spawngem[3,1] = 608 // y pos of room 3
global.spawngem[4,0] = 8768 // X pos of room 4
global.spawngem[4,1] = 768 // y pos of room 4
global.spawngem[5,0] = 10816 // X pos of room 5
global.spawngem[5,1] = 416 // y pos of room 5
global.spawngem[6,0] = 12704 // X pos of room 6
global.spawngem[6,1] = 320 // y pos of room 6


instance_create(global.spawngem[global.rm,0],global.spawngem[global.rm,1],obj_nugget)
instance_create(global.spawngem[global.rm,0],global.spawngem[global.rm,1],obj_gemspwn)
