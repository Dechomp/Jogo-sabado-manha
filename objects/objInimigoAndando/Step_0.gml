y += moviY
x += moviX

if x < 0 or x > room_width{
	moviX *= -1
	
}

if y < 0 or y > room_height{
	moviY *= -1
}