//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var totalCobrado = 0
    method sueldo() {
        return sueldo
    }
    method sueldo(_sueldo) {
        sueldo = _sueldo
    }
    method actualizarTotalCobrado() {
        totalCobrado = totalCobrado + self.sueldo()
    }
    method ahorros() {
        return totalCobrado
    }   
}

object baigorria {
    var empanadasVendidas = 0
    var totalCobrado = 0
    method ventasNuevas(ventas) {
        empanadasVendidas = empanadasVendidas + ventas
    }
    method sueldo() {
        return empanadasVendidas * 15
    }
    method empanadasVendidas(_empanadasVendidas) {
        empanadasVendidas = _empanadasVendidas
    }
    method actualizarTotalCobrado() {
        totalCobrado = totalCobrado + self.sueldo()
        self.empanadasVendidas(0)
    }
    method ahorros() {
        return totalCobrado
    }
}

object gimenez {
    var fondos = 300000
    method pagarSueldo(empleado) {
        fondos = fondos - empleado.sueldo()
        empleado.actualizarTotalCobrado()
    }
}