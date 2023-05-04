///scrPhysics();

function scrPhysics(){

// AutoScroll
// if(auto) hsp = 2;

// Movements
moveX = key_l + key_r;
moveY = key_u + key_d;
hsp += moveX * acc;
vsp += moveY * acc;

#region //Speed Limits
if(hsp > xMoveSpeed) hsp = xMoveSpeed;
if(hsp < -xMoveSpeed) hsp = -xMoveSpeed;
if(vsp < -yMoveSpeed) vsp = -yMoveSpeed;
if(vsp > yMoveSpeed) vsp = yMoveSpeed;
if((hsp == 0.1 || hsp == -0.1) && moveX == 0) hsp = 0;
if((vsp == 0.1 || vsp == -0.1) && moveY == 0) vsp = 0;// Change this later on to match auto velocity.


// Acceleration limits
if(hsp > 0.1 && (moveX == -1 || moveX == 0)) hsp -= dcc;
if(hsp < -0.1 && (moveX == 1 || moveX == 0)) hsp += dcc;
if(vsp > 0.1 && (moveY == -1 || moveY == 0)) vsp -= dcc;
if(vsp < -0.1 && (moveY == 1 || moveY == 0)) vsp += dcc;

#endregion

#region //Angle change
if(moveY == -1) angle += 2;// turn up
if(moveY == 1) angle -= 2;// turn down
if(moveY == 0 && angle > 1) angle -= 1;// returning to normal.
if(moveY == 0 && angle < -1) angle += 1;// returning to normal.

// Limits
if(angle > angleLimit) angle = angleLimit;
if(angle < -angleLimit) angle = -angleLimit;
if((angle == -1 || angle == 1) && moveY == 0) angle = 0;// angle fix.

#endregion

}