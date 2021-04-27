/// @description Insert description here
// You can write your code in this editor
if(hspeed<0)
{
	offset=-64
}
else
{
	offset=64
}
if(!place_free(x+hspeed,y)||place_free(x+hspeed+offset,y+1))
{
	hspeed*=-1
	image_xscale*=-1
}

var bullet = instance_place(x,y,obj_bullet)
if(bullet)
{
	life-=10
	with(bullet)
	{
		instance_destroy()
	}
	if(life<=0)
	{
		instance_destroy()
	}
}
var p = instance_place(x,y,player)
if(p)
{
	player.life-=1
}