input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(input_x != 0 || input_y != 0)
{	
	//moving the player
	var _dir = point_direction(0, 0, input_x, input_y);
	x += lengthdir_x(player_speed, _dir);
	y += lengthdir_y(player_speed, _dir);
	
	var _position_buffer = buffer_create(6, buffer_fixed, 1);
	buffer_seek(_position_buffer, buffer_seek_start, 0);
	buffer_write(_position_buffer, buffer_u8, DATA.PLAYER_POSITION);
	buffer_write(_position_buffer, buffer_u8, player_number);
	buffer_write(_position_buffer, buffer_u16, x);
	buffer_write(_position_buffer, buffer_u16, y);
	
	if(player_number == 0)
	{
		server_send_data(_position_buffer);
	}
	
	else
	{
		network_send_packet(global.server_socket, _position_buffer, buffer_get_size(_position_buffer));
		buffer_delete(_position_buffer);
	}
}