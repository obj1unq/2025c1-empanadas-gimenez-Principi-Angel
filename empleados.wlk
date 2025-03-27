//Escribir aqui los objetos
  object galvan {

    var sueldo = 0
     
    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method sueldo(){
        return sueldo
    }
  }

  object baigorria {

    var empanadas = 0

    method empanadas(_empanadas){
        empanadas = empanadas + _empanadas
    }

    method sueldo() {
        return 15* empanadas
    }

    method cobrar(){
        totalCobrado 
        empandas = 0  
    }
    var totalCobrado = 0

    method totalCobrado(){
        totalCobrado = totalCobrado + self.sueldo()
        //empanadas = 0
        return totalCobrado
    }
  }

  object gimenez {

    var fondo = 300000

    method pagar(empleado){
        fondo = fondo - empleado.sueldo()

    }

    method fondo(){
        return fondo
    }
  }