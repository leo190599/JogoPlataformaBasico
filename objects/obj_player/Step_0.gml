/// @description Player
// You can write your code in this editor

//Movientação horizontal
if(keyboard_check(ord("A")))
{
	if(place_free(x-spd,y))
	{
		hspeed=-spd
	}
	else
	{
		//tratamento de slope
		if(place_meeting(x-spd,y,slope))
		{
			do
			{
				y-=1
			}until(!place_meeting(x-spd,y,slope));
			hspeed=-spd
		}
		else
		{
			while(place_free(x-1,y))
			{
				x-=1
			}
			hspeed=0
		}
	}
	image_xscale=-1
}
else
{
	if(keyboard_check(ord("D")))
	{
		if(place_free(x+spd,y))
		{
			hspeed=spd
		}
		else
		{
			//tratamento de slope
			if(place_meeting(x+spd,y,slope))
			{
				do
				{
					y-=1
				}until(!place_meeting(x+spd,y,slope));
				hspeed=spd
			}
			else
			{
				while(place_free(x+1,y))
				{
					x+=1
				}
				hspeed=0
			}
		}
		image_xscale=1
	}
	else
	{
		hspeed=0
	}
}
//

//Gravidade
if(vspeed>=0)
{
	if(place_free(x+hspeed,y+vspeed+grvt))
	{
		if(place_meeting(x+hspeed,y+spd*3,slope))
		{
			while(place_free(x+hspeed,y+1))
			{
				y+=1
			}
			vspeed=0
		}
		else
		{
			vspeed+=grvt
		}
	}
	else
	{
		while(place_free(x+hspeed,y+1))
		{
			y+=1
		}
		vspeed=0
	}
}
else
{
	if(place_free(x+hspeed,y+vspeed+grvt))
	{
		vspeed+=grvt
	}
	else
	{
		while(place_free(x+hspeed,y-1))
		{
			y-=1
		}
		vspeed=0
	}
}
//

if(life<=0||instance_number(obj_enemy)==0)
{
	room_restart()
}