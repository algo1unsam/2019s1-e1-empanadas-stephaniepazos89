    // la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
 	//var property sueldo = 15000
object gimenez {
	var sueldo = 15000
	var deuda=0
	var dinero=0
	var gastar
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){}
	
	method gastar(cuanto){}
	method gastarEsMenorQueDinero(cuanto){
		return (cuanto<dinero)
	}
	
		//if(gastar==dinero){
			//dinero-=gastar
			//gastar=0
		//}
		//if(gastar<dinero){
			//dinero-=gastar
		//}else
			//deuda+=gastar-dinero
	//}	
	method totalDeuda(cuanto){
		deuda+=(cuanto-dinero)
		return deuda
		}
	method totalDinero(cuanto){
		dinero-=cuanto
		return dinero
		
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
	
	method totalCobrado(){
		return acum
	}
	
	method cobrarSueldo(){
		acum+=self.sueldo()
	}
	
}

object galvan {
	var dinero = 300000

	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() 
	empleado.cobrarSueldo()}
}
