{
		// DRAW EVENT
		draw_set_color( c_purple );
		draw_rectangle( self.bbox_left , self.bbox_top ,self.bbox_right ,self.bbox_bottom , true );
		
		draw_sprite(self.sprite_index, self.image_index , x, y);
		
		//draw_sprite( object_get_mask(object_index), 0, x, y );
}
