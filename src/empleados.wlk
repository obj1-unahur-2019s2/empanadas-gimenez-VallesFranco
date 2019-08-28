object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() {
		dinero += sueldo
		
			if (dinero >= deuda) {
				deuda = 0
				dinero -= deuda
			} else {
				deuda -= dinero
				dinero = 0
				}
			}	
	method totalCobrado() {}
	method totalDeuda() { return deuda } 
	
	method gastar(cuanto) {
		if (dinero >= cuanto) {
				dinero -= cuanto
		}	else  {
				deuda += cuanto	   
		}	
	
	}		

}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dinero = 0
	var dineroAcumulado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {
		dinero += self.sueldo()
		dineroAcumulado += self.sueldo() 
	}
	method totalCobrado() { return dineroAcumulado }
	method totalDinero() { return dinero }
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
		 dinero -= empleado.sueldo()
		 empleado.cobrarSueldo() 		
	}
	
}
