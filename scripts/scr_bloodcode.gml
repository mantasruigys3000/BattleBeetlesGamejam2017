///scr_bloodcode(x,y,size)
var mx = argument0;
var my = argument1;
var size = argument2;
var team = argument3;



for(var i = 0; i < size/(5 * instance_number(obj_player)); i++){
        blood = instance_create(mx,my,obj_bloodpart)
}

for(var j =0;j<5;j++){
dead = instance_create(mx,my,obj_deadpart)
dead.image_index = j;
dead.col = team

}
