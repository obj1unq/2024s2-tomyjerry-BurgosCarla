object tom {
	var property energia = 50
	//var  property velocidadMaxima = 0
	 
	method comer(raton) {
		energia = energia + self.energiaQueAporta(raton)
	}
	method energiaQueAporta(raton){
		return 12 + raton.peso()
	}
	method correr(distancia){
		energia = energia - self.energiaQueGasta(distancia)
	}
	method energiaQueGasta(distancia){
		return (distancia / 2)
	}
	method velocidadMaxima()  {
		return 5 + energia/10
	} 
	method puedeComer(raton,distancia){
		return self.energiaQueGasta(distancia) < energia
	}
	method quiereComer(raton,distancia){
		return self.puedeComer(raton, distancia) and self.convieneComer(raton, distancia)
	}
	method convieneComer(raton, distancia){
		return self.energiaQueGasta(distancia) < self.energiaQueAporta(raton) 
	}
}

object jerry {
	var property edad = 2
	var property peso = 0
	const pesoBase = 20

	
	method peso (){
		return edad * pesoBase
	}
	

	//Completar!
}

object nibbles {
	
	method peso(){
		return 35
	}
}


