///scr_playerMovement(playerIndex)
///NEVER USE!!!
player_index = argument0;
left  = -keyboard_check(ord("A"));
right =  keyboard_check(ord("D"));
jump  =  keyboard_check_pressed(vk_space);

///Horizontal Movement
hsp = (left+right)*msp;

///Vertical
if (place_meeting(x,y+1,obj_block) or ((place_meeting(x+1,y,obj_block) or place_meeting(x-1,y,obj_block))) and !(halt)) { jumps = 1; halt = true; alarm[0] = 30; }
if (vsp < 15) vsp -= -grav;
if (jump and jumps > 0) and ((place_meeting(x+1,y,obj_block) or place_meeting(x-1,y,obj_block)) or place_meeting(x,y+1,obj_block)){
   sprite_index = spr_beetle_jump;
   jumps -= 1;
   vsp = -jumpsp;
   
} else if (jump and jumps > 0){
  sprite_index = spr_beetle_jump;
   jumps -= 1;
   vsp = -jumpsp;              
}


///colistion detection
//horizontal
if place_meeting(x+hsp,y,obj_block){
   while!(place_meeting(x+sign(hsp),y,obj_block)){
          x += sign(hsp);                                         
   }
   hsp = 0;
}
//vertical
if place_meeting(x,y+vsp,obj_block){
   while!(place_meeting(x,y+sign(vsp),obj_block)){
          y += sign(vsp);                                         
   }
   vsp = 0;
}
//Diaganal
if place_meeting(x+hsp,y+vsp,obj_block){
   while!(place_meeting(x+sign(hsp),y+sign(vsp),obj_block)){
          y += sign(vsp); 
          x += sign(hsp);                                        
   }
   vsp = 0;
   hsp = 0;
}

if vsp == 0 sprite_index = spr_beetle;

x += hsp;
y += vsp;
   


