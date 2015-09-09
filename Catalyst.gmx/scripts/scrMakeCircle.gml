//spawns a ring of projectiles
//argument0 - spawn X
//argument1 - spawn Y
//argument2 - starting angle
//argument3 - number of projectiles to spawn
//argument4 - speed
//argument5 - projectile to spawn

var a;

for (var i = 0; i < argument3; i += 1;)
{
    a = instance_create(argument0,argument1,argument5);
    a.speed = argument4;
    a.direction = argument2 + i * (360 / argument3);
}