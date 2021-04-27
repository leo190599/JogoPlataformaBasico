/// @description Insert description here
// You can write your code in this editor
if(shooting)
{
	shooting=false
	alarm[0]=10
	with(instance_create_depth(x+sprite_width/4,y,-10,obj_bullet))
	{
		dir=player.image_xscale
	}
}