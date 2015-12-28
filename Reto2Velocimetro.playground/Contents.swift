import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}


class Auto {
    
    var velocidad: Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        
        switch velocidad {
            
        case .Apagado :
            velocidad = .VelocidadBaja
            return (velocidad.rawValue, "Velocidad Baja")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (velocidad.rawValue, "Velocidad Alta")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
            
        }
    }
}


var carro : Auto = Auto()


print("\(carro.velocidad.rawValue), \(carro.velocidad)")

var resultado:(actual: Int, velocidadEnCadena: String)

for index in 1...20 {
    resultado = carro.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}