{
// Solve Collision with solid
var ID,typeCollision;
ID = argument[0];
if( argument_count > 1 ){
typeCollision = argument[ 1 ];
}else{ typeCollision = "none"; }

with( ( ID ) ){

switch( typeCollision ){
case "none": 
direction = point_direction(  x , y , x + hspeed , y + vspeed);

if( place_free( x , y ) ){
move_contact_solid( direction , speed );
}else{
move_outside_solid( ( direction +  180 ) mod 360 , speed );
move_outside_solid( ( direction +  180 ) mod 360 , speed );
}


break;

case "floor" :

if( place_free( x , y ) ){
move_contact_solid( direction, speed );

}else{
move_outside_solid( 90 , speed );
move_outside_solid( 90 , speed );

}

break;

}
}

}
