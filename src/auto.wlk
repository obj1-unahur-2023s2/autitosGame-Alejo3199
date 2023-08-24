import wollok.game.*

object autoRojo{
	// definimos los atributos para imagen y posición de nuestro elemento
	var position = game.at(
		0.randomUpTo(game.width().truncate(0) )
		,0.randomUpTo(game.height().truncate(0) )
	)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = "autitoRojo.png"
	method position() = position
	method position(nuevaPosicion) { 
		position = nuevaPosicion
	}
	method bajar() {
		if (position.y()< game.height()-1 )
		position = position.down(1)
		else position = game.at(position.x(),game.height() )
		//position = position.down(1)
	}
	method subir() {
		if (position.y()< game.height()-1 )
		position = position.up(1)
		else position = game.at(position.x(),0 )
	}
	method moverDerecha(){ 
		if (position.x()< game.width()-1 )
		position = position.right(1)
		else position = game.at(0,position.y() )
	}
	method moverIzquierda() {
		if (position.x()> 0)
		position = position.left(1)
		else position = game.at(game.width(),position.y() )
	}
}

object autoAzul{
	var position = game.at(
		0.randomUpTo(game.width().truncate(0) )
		,0.randomUpTo(game.height().truncate(0) )
	)
	method image() = "autitoAzul.png"
	method position() = position
	method position(nuevaPosicion) { 
		position = nuevaPosicion
	}
	method bajar() {
		position = position.down(1)
	}
	method subir() {
		position = position.up(1)
	}
	method moverDerecha(){ 
		if (position.x()< game.width()-1 )
		position = position.right(1)
		else position = game.at(0,position.y() )
	}
	method moverIzquierda() {
		if (position.x()> 0)
		position = position.left(1)
		else position = game.at(game.width(),position.y() )
	}
}

