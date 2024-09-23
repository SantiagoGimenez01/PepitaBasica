object pepita {
  var energia = 40
  var property ubicacion = vicenteLopez
  method energia() = energia 

  method volar(km) {
    energia = energia - km - 10
  }

  method comer(gramos){
    energia += 4*gramos
  }

  method calcularDistanciaDondeIr(lugar) = (ubicacion.km() - lugar.km()).abs()

  method irA(lugar){
    self.volar(self.calcularDistanciaDondeIr(lugar))
    ubicacion = lugar
  }

  method puedeIrA(lugar){
    self.volar(self.calcularDistanciaDondeIr(lugar))
    return self.energia() > 0
  }
}




//Lugares de R9
object vicenteLopez{
  const property km = 12
}

object sanIsidro{
  const property km = 17
}

object sanMartin{
  const property km = 23
}

object sanFernando{
  const property km = 24
}

object tigre{
  const property km = 25 
}

object escobar{
  const property km = 36
}

object campana{
  const property km = 69 
}