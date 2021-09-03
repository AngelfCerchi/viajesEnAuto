/*
 * Ludmila: 18 pesos el kilómetro, valor fijo e inamovible.
Ana María: 30 pesos el kilómetro si está económicamente estable, 25 pesos el kilómetro en caso contrario.
*  Se sabe en cada momento si Ana María está o no económicamente estable.
Teresa: arranca en 22 pesos el kilómetro, puede cambiar a cualquier otro valor.
 */
 
 object ludmila{
 	const precio = 18
  	method getPrecio() = precio
}
 
 object anaMaria{
 	var estado = true // esta estable -> 30pesos el km  // false esta inestable -> 25 el km
 	var precio
 	
 	method estaEstable(){ return estado	}
 	method cambiarEstado(){ if(self.estaEstable()){ estado = false} }
 	method setPrecio(){
 		//setea el precio en base al estado de anaMaria
 		if (self.estaEstable()){
 			precio = 30
 		}else{
 			precio = 25
 		}
 	}
 	method getPrecio(){	self.setPrecio() return precio }
}
 
object teresa{
	var precio = 22 // 22 pesos x km
	method setPrecio(pesos){ precio = pesos	}
	method getPrecio(){	return precio }
}

object melina{
	var trabajaPara = ludmila // por defecto
	const precio = trabajaPara.getPrecio() - 3
	method trabajaPara(cliente){ trabajaPara = cliente }
	method getPrecio(){ return precio }
}
