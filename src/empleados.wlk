object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
 	var property sueldo = 15000

	//var sueldo = 15000
	//method sueldo() { return sueldo }
	//method sueldo(nuevoValor) { sueldo = nuevoValor }
	method totalDeuda(){
		
	}
	method totalDinero(){
		
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var acum=0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		
	}
	
	
	
}

object galvan {
	var dinero = 300000
	var _empleado
	
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() }
	empleado.cobrarSueldo()
}
