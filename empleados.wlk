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
    var dinero = 0
    method ventasNuevas(ventas) {
        empanadasVendidas = empanadasVendidas + ventas
    }
    method sueldo() {
        return empanadasVendidas * 15
    }
    method empanadasVendidas(_empanadasVendidas) {
        empanadasVendidas = _empanadasVendidas
    }
    method cobrar() {
        dinero = dinero + self.sueldo()
        self.empanadasVendidas(0)
    }
    method dinero() {
        return dinero
    }
}

object gimenez {
    var fondos = 300000
    method pagarSueldo(empleado) {
        fondos = fondos - empleado.sueldo()
        empleado.cobrar()
    }
}