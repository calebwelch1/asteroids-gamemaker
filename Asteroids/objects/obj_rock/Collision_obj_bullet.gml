/// @description Insert description here
// You can write your code in this editor

// destroys bullet
instance_destroy(other);
// explosion effect
effect_create_above(ef_star, x, y, 1, c_white);
// random direction when new rock spawns
direction=random(1);

if sprite_index == spr_rock_big {
	// if index of bullet is same as big rock
	// change it to small rock and copy instance so there are two rocks
	sprite_index = spr_rock_small;
	instance_copy(true);
} else if instance_number(obj_rock) < 12 {
	// if there are less than 12 rocks, respawns a big rock
	// and sets x position outside of room so that it can re-enter
	sprite_index = spr_rock_big;
	x= -100;
} else {
	// if none of the above are false, destroy rock
	instance_destroy();
}

obj_game.points +=50;