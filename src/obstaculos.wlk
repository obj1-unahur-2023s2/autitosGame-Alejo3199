import wollok.game.*
import auto.*

object paredDeLadrillo {
	var position = game.at(
		0.randomUpTo(game.width().truncate(0) )
		,0.randomUpTo(game.height().truncate(0) )
	)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = "paredLadrillos2.jpg"
	method position() = position
	method posicion(nuevaPosicion) { position = nuevaPosicion }
} 
	
