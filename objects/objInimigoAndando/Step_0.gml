#region Movimentação
	y += moviY
	x += moviX

	if x < 0 or x > room_width{
		moviX *= -1
	
	}

	if y < 0 or y > room_height{
		moviY *= -1
	}

	if moviX < 0 and image_xscale < 0{
		image_xscale *= -1
	}
	else if moviX > 0 and image_xscale > 0{
		image_xscale *= -1
	}

	if moviY < 0 and image_yscale < 0{
		image_yscale *= -1
	} 
	else if moviY > 0 and image_yscale > 0{
		image_yscale *= -1
	}
#endregion

#region Colisão
	//Método para checar a colisão de qualquer lado
	//colisaoHorizontal = place_meeting(x + moviX, y, objInimigo) or place_meeting(x + moviX, y, objInimigoAndando)
	
	/*if colisaoHorizontal{
		moviX *= -1
	}*/
	
	//Checagem de colisão a partir dos lado horizontais separadamente
	
	colisaoEsquerda = place_meeting(x - 5 , y, objInimigo) or place_meeting(x - 10 , y, objInimigoAndando)
	colisaoDireita = place_meeting(x + 5, y, objInimigo) or place_meeting(x + 10, y, objInimigoAndando)
	colisaoCima = place_meeting(x, y - 5, objInimigo) or place_meeting(x, y - 5, objInimigoAndando)
	colisaoBaixo = place_meeting(x, y + 5, objInimigo) or place_meeting(x, y + 5, objInimigo)
	
	if colisaoEsquerda{
		moviX = 1
	}
	else if colisaoDireita{
		moviX = -1
	}
	
	if colisaoCima{
		moviY = 1
	}
	else if colisaoBaixo{
		moviY = -1
	}
#endregion
