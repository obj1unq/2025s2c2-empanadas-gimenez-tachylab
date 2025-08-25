//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0
    method sueldo() {
        return sueldo
    }
    method sueldo(_sueldo) {
        sueldo = _sueldo
    }
    method cobrar() {
        if (sueldo >= deuda){
            dinero = sueldo - deuda
            deuda = 0
        } 
        else {
            deuda = deuda - sueldo
        }
    }
    method dinero() {
        return dinero
    }
    method gastar(cantidad) {
        if (cantidad >= dinero){
            deuda = cantidad - dinero
            dinero = 0
        }
        else {
            dinero = dinero - cantidad
        }
       
    }   
    method deuda() {
      return deuda
    }
}

object baigorria {
    var empanadasVendidas = 0
    var totalCobrado = 0
    method vender(cantidad) {
        empanadasVendidas = empanadasVendidas + cantidad
    }
    method sueldo() {
        return empanadasVendidas * 15
    }
    method empanadasVendidas(_empanadasVendidas) {
        empanadasVendidas = _empanadasVendidas
    }
    method cobrar() {
        totalCobrado = totalCobrado + self.sueldo()
        self.empanadasVendidas(0)
    }
    method totalCobrado() {
        return totalCobrado
    }
}

object gimenez {
    var fondo = 300000
    method fondo(){
        return fondo
    }
    method pagarSueldo(empleado) {
        fondo = fondo - empleado.sueldo()
        empleado.cobrar()
    }
}