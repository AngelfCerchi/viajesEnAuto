/*
 * 
 * En este modelo simplificado, cuando la oficina recibe un viaje, hay dos remiseras que pueden tomarlo: uno que tiene prioridad 
 * (al que llamaremos primera opción o primera remisera) y otro que es la segunda opción (o segunda remisera).
 */
 import clientes.*
 import remiseras.*
 
object oficina{
 	// se declaran los atributos del obj
 	var remiseraPrimeraOpcion 
 	var remiseraSegundaOpcion
 	
 	method asignarRemiseras(remisera1,remisera2){
 		// asigna a las remiseras segun prioridad
 		remiseraPrimeraOpcion = remisera1 // recibe un obj remiseras
 		remiseraSegundaOpcion = remisera2 // recibe un obj remiseras
 	}
 	
 	method cambiarPrimeraRemiseraPor(remisera){ remiseraPrimeraOpcion = remisera }
 	method cambiarSegundaRemiseraPor(remisera){ remiseraSegundaOpcion = remisera}
 	
 	method intecambiarRemiseras(){ self.asignarRemiseras(remiseraSegundaOpcion,remiseraPrimeraOpcion)}

 	method diferenciaEntrePrecio(cliente,km){ return (remiseraSegundaOpcion.precioPorViaje(cliente,km) - remiseraPrimeraOpcion.precioPorViaje(cliente,km)).abs() }
 	
 	method remiseraElegidaParaViaje(cliente,km){
 		var remisera
 		if (remiseraSegundaOpcion.precioPorViaje(cliente,km) < remiseraPrimeraOpcion.precioPorViaje(cliente,km) and self.diferenciaEntrePrecio(cliente,km) > 30){
 			remisera = remiseraSegundaOpcion
 		}else{
 			remisera = remiseraPrimeraOpcion
 		}
 		return remisera
 	}
}
