/** REMISERAS DE DOCTOR OLAECHEA

ROXANA : LE COBRA A CADA CLIENTE EL PRECIO POR KM QUE PACTO CON LA COOPERTATIVA SIN VARIACIONES
GABRIELA: LE AUMENTA UN 20% POR AUTO ALTA GAMA.
MARIELA: NO APLICA RECARGO, PERO ESTABLECE UN MINIMO DE 50 PESOS EL VIAJE
JUANA:  por su parte, cobra 100 pesos hasta 8 kilómetros, y 200 pesos si 
son más de 8 kilómetros. A Juana no le importa lo que pactó la agencia, le cobra lo mismo a todos.
**/

import clientes.*

object roxana{ 
	method precioPorViaje(cliente,km){ return cliente.getPrecio()*km }
}

object gabriela{ 
	method precioPorViaje(cliente,km){ return ((cliente.getPrecio()*km) *1.2)}
}

object mariela{
	method precioPorViaje(cliente,km){
		var precioPorViaje = 0
		if (cliente.getPrecio()*km > 50){
			precioPorViaje = cliente.getPrecio()*km
		}else{
			precioPorViaje = 50
		}
		return precioPorViaje
	}
}

object juana{
	method precioPorViaje(cliente,km){
		var precioPorViaje = 0
		if(km <= 8){
			precioPorViaje = 100	
		}else{
			precioPorViaje = 200
		}
		return precioPorViaje
	}
}

object lucia{
	var reemplazaA = mariela // por defecto reemplaza a mariela
	method reemplazaA(remisera){ reemplazaA = remisera }
	method getReemplazaA(){	return reemplazaA }
	method precioPorViaje(cliente,km){ return self.getReemplazaA().precioPorViaje(cliente,km)	}
}