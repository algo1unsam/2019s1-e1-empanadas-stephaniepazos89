    // la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
 	//var property sueldo = 15000
object gimenez {
	var sueldo = 15000
	var deuda=0
	var dinero=0
	
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){dinero+=sueldo
		if(dinero>=deuda){
			dinero-=deuda
			deuda=0
			}else{
				
			deuda-=dinero	
			dinero=0
			}
		
		}
		
		method gastar(cuanto){
		if(dinero>cuanto){
			dinero-=cuanto
		
		}else{
			deuda+=(cuanto-dinero)	
			dinero=0		
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
	var cantidadEmpanadasVendidas = 0
	var montoPorEmpanada = 15
	var acum=0
	
	// Aca ingreso la cantidad de empanadas que vendio Baigorria en el mes, 
	//ya que no siempre puede vender 100 unidades puede vender mas o menos
	
	method cantidadDeEmpanadasVendidas(cant){
		cantidadEmpanadasVendidas=cant
	}
	
	//Elimine este metodo porque con el anterior ya ingreso la cantidad de empanadas 
	//que vendio al mes
	//method venderEmpanada(){
	//cantidadEmpanadasVendidas+=1
	//}
	
	
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

