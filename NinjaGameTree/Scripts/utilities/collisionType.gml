{
    var ID_1;
    var ID_2;
    var side;
    
    ID_1 = argument0;
    ID_2 = argument1;
    
    side = script_execute( collisionSide , ID_1 ,ID_2 );
    
    if( side == "left" || side == "right" ){
        show_debug_message( "wall" );
        return "wall";
    }
    
    if( side == "top" ){
        show_debug_message( "ceil" );
        return "ceil";
    }
    
    if( side == "bottom" ){
        show_debug_message( "floor" );
        return "floor";
    }

    show_debug_message( "noType" );
    return "noType";
}
