import wollok.game.*

object mapa {
    var property estructura = [
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1,
        1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1,
        1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1,
        1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1
    ]
    var property ancho = 14
    var property largo = 8
}
class pared {
    var vidas = 10
    var property position = game.at(0,0)
    method newp(newposition){
        position = newposition
    }
    method image()= "pared64.png"
    method width()=64
    method height()=64
    method chocarConRival_(rival) {
        // comportamiento
        
    }
}
object mapping {
    var property mapa_actual = mapa 

    //pruebo el siguiente
    method dibujar() {
        var x = 0
        var y = mapa_actual.largo() - 1

        mapa_actual.estructura().forEach { tipoElemento =>
            if (tipoElemento == 1) {
                const pared1= new pared()
                pared1.newp(game.at(x,y))
                game.addVisual(pared1)
            }

            x += 1
            if (x == mapa_actual.ancho()) {
                x = 0
                y -= 1
            }
        }
    }
}