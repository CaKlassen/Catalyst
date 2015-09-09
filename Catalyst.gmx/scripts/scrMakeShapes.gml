//spawns a custom shape
//argument0 - spawn X
//argument1 - spawn Y
//argument2 - starting angle
//argument3 - number of edges (3=triangle, 4=square, etc.)
//argument4 - projectile spawns per edge
//argument5 - speed
//argument6 - projectile to spawn

var th, xx, yy, ddx, ddy, dx, dy, a;

th = degtorad(argument2);

for (var i = 0; i < argument3; i += 1)
{
    xx[i] = cos(th + 2*pi * i/argument3);
    yy[i] = sin(th + 2*pi * i/argument3);
}

xx[argument3] = xx[0];
yy[argument3] = yy[0];

for (var i = 0; i < argument3; i += 1)
{
    ddx = xx[i+1]-xx[i];
    ddy = yy[i+1]-yy[i];
    
    for(var j = 0; j < argument4; j += 1)
    {
        dx=xx[i]+ddx*j/argument4;
        dy=yy[i]+ddy*j/argument4;
        
        a=instance_create(argument0+dx,argument1+dy,argument6);
        a.direction=point_direction(0,0,dx,dy);
        a.speed=argument5*point_distance(0,0,dx,dy);
    }
}