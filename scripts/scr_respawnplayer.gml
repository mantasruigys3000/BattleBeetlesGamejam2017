///scr_respawnplayer(id,rm_id,team)
if room == rm_one{
var ID = argument0;
var rm = argument1;
var team = argument2;
//Room one
global.spawn[0,0] = 1472; // Blue x
global.spawn[0,1] = 96; // Blue y
global.spawn[0,2] = 320; // Red x
global.spawn[0,3] = 96; // Red y;

global.spawn[1,0] = 3008
global.spawn[1,1] = 128;
global.spawn[1,2] = 2016 
global.spawn[1,3] = 320; 

global.spawn[2,0] = 5536
global.spawn[2,1] = 608;
global.spawn[2,2] = 4224 
global.spawn[2,3] = 160; 

global.spawn[3,0] = 6208
global.spawn[3,1] = 704;
global.spawn[3,2] = 7360; 
global.spawn[3,3] = 704; 

global.spawn[4,0] = 8960
global.spawn[4,1] = 192;
global.spawn[4,2] = 7936; 
global.spawn[4,3] = 640; 

global.spawn[5,0] = 10816
global.spawn[5,1] = 64;
global.spawn[5,2] = 10432 
global.spawn[5,3] = 128; 

global.spawn[6,0] = 13248 
global.spawn[6,1] = 96;
global.spawn[6,2] = 11616
global.spawn[6,3] = 320;
 

var mx,my;
switch(team){
             case 0: mx = 0; my = 1; break;
             case 1: mx = 2; my = 3; break;
}

li = instance_create(global.spawn[rm,mx],global.spawn[rm,my],obj_ligning)

li.player = ID;
li.team = team;

}
