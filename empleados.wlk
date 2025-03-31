//Escribir aqui los objetos
  object galvan {

    var sueldo = 0
     
    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method sueldo(){
        return sueldo
    }

    method cobrar(cobro){
        if (deuda > 0 && cobro < deuda) {
            deuda = deuda - self.sueldo()
        } else if (deuda > 0 && cobro > deuda){
            dinero = cobro - deuda 
            deuda = 0
        } else {
            dinero = dinero + self.sueldo()
        }
    }

    var deuda  = 0
    
    var dinero = 0 

    method gastar(cuanto){
        if (cuanto > dinero) {
            deuda  = deuda + cuanto - dinero
            dinero = 0
        }         
        if (dinero > cuanto) { 
            dinero = dinero - cuanto
        }
        else {
            dinero = 0
        }     
    }
    
    method deuda(){
        return deuda
    }
    
    method dinero(){
        return dinero
    }
  }

  object baigorria {

    var empanadas = 0

    method empanadas(_empanadas){
        empanadas = empanadas + _empanadas
    }

    method sueldo() {
        return 15 * empanadas
    }

    var totalCobrado = 0

    method cobrar(cobro){
        totalCobrado = totalCobrado + cobro
        empanadas = 0  
    }

    method totalCobrado(){
        return totalCobrado 
    }
}

object gimenez {

    var fondo = 300000

    method pagar(empleado){
        fondo = fondo - empleado.sueldo()
        empleado.cobrar(empleado.sueldo()) 
    }

    method fondo(){
        return fondo
    }
}