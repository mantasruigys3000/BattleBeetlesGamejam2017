///scr_bloodcode(x,y,size)

var mx = argument0;
var my = argument1;
var size = argument2;
var team = argument3;



for(var i = 0; i < size/4; i++){
        blood = instance_create(mx,my,obj_fizzle)
        blood.image_index = team;
}


