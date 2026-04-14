object tom {
    var energia = 50
    
    method energia() = energia
    method velocidadMaxima() = 5 + energia / 10
    
    method comerRaton(unRaton){
        energia += 12 + unRaton.peso()
    }
    method correr(distancia){
        energia -= distancia/2
    }
    method puedeCazarADistancia(unaDistancia) = (energia >= unaDistancia/2)
    method comerRatonADistancia(unRaton, unaDistancia){
        if (self.puedeCazarADistancia(unaDistancia)){
            self.comerRaton(unRaton)
        }
    }
}

object jerry {
    var edad = 2

    method peso() = edad * 20

    method cumplirAños(){
        edad += 1
    }
}

object nibbles {
    method peso() = 35
}

// Inventar otro ratón