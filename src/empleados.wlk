    // la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
 	//var property sueldo = 15000
object gimenez {
	var sueldo = 15000
	var deuda=0
	var dinero=0
	
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		dinero+=sueldo
		
	}
	
	method gastar(cuanto){
		if(dinero>cuanto){
			dinero-=cuanto
		
		}else{
			deuda+=(cuanto-dinero)
		}
	}
	
	method totalDeuda(){
		return deuda
		}
		
	method totalDinero(){
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
