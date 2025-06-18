import wollok.game.*

object personaje {

	var property image = "principal.png"
	var property position = game.origin()
	var vidas = 10
	
	method vidas() = vidas
	
	method perderVida(){
		vidas = vidas - 1
		position = game.origin()
	}
	
	method chocarConRival_(rival){
		self.perderVida()
		rival.position(game.at(5,5))
	}
}
object enemigo{
	var property image = "enemigo.png"
	var property position = game.at(5,2)
	
	method acercarseA_(personaje){
		var posPacman = personaje.position()
		var newX = position.x() + if(posPacman.x() > position.x()) {1} else {-1}
		var newY = position.y() + if(posPacman.y() > position.y()) {1} else {-1}
		
		position = game.at(newX, newY)
	}
}