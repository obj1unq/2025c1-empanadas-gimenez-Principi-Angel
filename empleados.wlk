//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var saldo = 0
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }

  method sueldo() = sueldo
  
  method cobrar() {
    saldo += self.sueldo() 
  }
  
  method gastar(gasto) {
    saldo -= gasto
  }
  
  method deuda() = if (saldo < 0) saldo * (-1) else 0 
    // if (saldo < 0) { saldo.abs()) else 0 }
    // saldo.min(0).abs()
  
  method dinero() = if (saldo >= 0) saldo else 0
                  // saldo.max(0)
}

object baigorria {
  var empanadas = 0
  var totalCobrado = 0
  
  method empanadas(_empanadas) {
    empanadas += _empanadas
  }
  
  method sueldo() = 15 * empanadas
  
  method cobrar() {
    totalCobrado += self.sueldo()
    empanadas = 0
  }
  
  method totalCobrado() = totalCobrado
}

object gimenez {
  var fondo = 300000
  
  method pagar(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrar()
  }
  
  method fondo() = fondo
} 

// atributo es una referencia que pertenece a las caracteristicas de un objeto// atributo es una referencia que pertenece a las caracteristicas de un objeto
// var dentro de objeto es atriburo pero dentro de un método es una var local
// var y const es una referencia "técnica"
// expresión, es un cacho código que devuelve 
// todos los objetos pueden ser laa referencia de una expresión