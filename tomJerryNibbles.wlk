object tom {
    var energia = 50
    
    method energia() = energia
    method velocidadMaxima() = 5 + energia / 10
    method puedeCazarADistancia(unaDistancia) = (energia >= unaDistancia/2)
    
    method comer(unRaton){
        energia += 12 + unRaton.peso()
    }
    method correr(distancia){
        energia -= distancia/2
    }
    method comerADistancia(unRaton, unaDistancia){
        if (self.puedeCazarADistancia(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
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

object billGates {
    var peso = 33
    method peso() = peso

    method correr(distancia){
        peso -= 1 + distancia/2
    }
}
