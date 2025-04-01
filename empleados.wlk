//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var deuda = 0
  var dinero = 0
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  ///
  method sueldo() = sueldo
  
  method cobrar(cobro) {
    if ((deuda > 0) && (cobro < deuda)) {
      deuda -= self.sueldo()
    } else {
      if ((deuda > 0) && (cobro > deuda)) {
        dinero = cobro - deuda
        deuda = 0
      } else {
        dinero += self.sueldo()
      }
    }
  }
  
  method gastar(cuanto) {
    if (cuanto > dinero) {
      deuda = (deuda + cuanto) - dinero
      dinero = 0
    } 
    if (dinero > cuanto) {
      dinero -= cuanto
    } else {
      dinero = 0
    }
  }
  
  method deuda() = deuda
  
  method dinero() = dinero
}

object baigorria {
  var empanadas = 0
  var totalCobrado = 0
  
  method empanadas(_empanadas) {
    empanadas += _empanadas
  }
  
  method sueldo() = 15 * empanadas
  
  method cobrar(cobro) {
    totalCobrado += cobro
    empanadas = 0
  }
  
  method totalCobrado() = totalCobrado
}

object gimenez {
  var fondo = 300000
  
  method pagar(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrar(empleado.sueldo())
  }
  
  method fondo() = fondo
} 

// atributo es una referencia que pertenece a las caracteristicas de un objeto// atributo es una referencia que pertenece a las caracteristicas de un objeto
// var dentro de objeto es atriburo pero dentro de un método es una var local
// var y const es una referencia "técnica"
// expresión, es un cacho código que devuelve 
// todos los objetos pueden ser laa referencia de una expresión