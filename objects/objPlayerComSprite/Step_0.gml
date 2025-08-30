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
	
	
	y += moviY * velocidade
	x += moviX * velocidade
	
	if moviX < 0 and image_xscale > 0{
		image_xscale *= -1
	}
	else if moviX > 0 and image_xscale < 0{
		image_xscale *= -1
	}
#endregion

#region Transição de fase
	
	if pontos == 3{
		room_goto_next()
	}

#endregion