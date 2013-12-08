{
    // DRAW EVENT
    
    //draw_set_color( c_purple );
    //draw_rectangle( self.bbox_left , self.bbox_top ,self.bbox_right ,self.bbox_bottom , true );
    
    if( self.mode == "wallJump" && self.image_index == 1 ) { self.image_speed=0; }
    
    draw_sprite(self.sprite_index, self.image_index , x, y);   
}
