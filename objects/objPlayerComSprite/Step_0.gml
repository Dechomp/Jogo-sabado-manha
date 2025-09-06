#region Movimentação
	// Movimentação por setas
	setaCima = keyboard_check(vk_up)
	setaBaixo = keyboard_check(vk_down)
	setaEsq = keyboard_check(vk_left)
	setaDir = keyboard_check(vk_right)
	
	//Movimentação por letras ou teclas
	teclaCima = keyboard_check(ord("W"))
	teclaBaixo = keyboard_check(ord("S"))
	teclaEsq = keyboard_check(ord("A"))
	teclaDir = keyboard_check(ord("D"))
		
	moviY = (teclaBaixo or setaBaixo ) - (teclaCima or setaCima) 
	moviX = (teclaDir or setaDir) - (teclaEsq or setaEsq)
	
	x += moviX * velocidade
	y += moviY * velocidade
	
	
	if moviX < 0 and image_xscale > 0{
		image_xscale *= -1
	}
	else if moviX > 0 and image_xscale < 0{
		image_xscale *= -1
	}
	
	if x + moviX * velocidade <= 0 or x + moviX * velocidade >= room_width{
		x -= moviX * velocidade
	}
	
	if y + moviY * velocidade <= 0 or y + moviY * velocidade >= room_height{
		y -= moviY * velocidade
	}
	
#endregion

#region Transição de fase
	
	if pontos == 3{
		if room != room_last {
			room_goto_next()
		}
		else{
			room = room_first
		}
	}
#endregion