import remiseras.*

object ludmila {
	method precioPorKilometro() { return 18 }
	
}

object anaMaria {
	/*
	 * No tenes ningun metodo que cambio a false estaEstable
	 * Te cambie el metodo precioPorKilometro para que tengas una forma más facil de hacerlo
	 */
	const estaEstable = true
	method economiaEstable() { return estaEstable }
	method precioPorKilometro() = if(estaEstable) {30} else { 25 }
	
}

object teresa {
	var precioInicial = 22
	method nuevoPrecio(valor) { precioInicial = valor }
	method precioPorKilometro() { return precioInicial }
}

object melina {
	var trabajaCon
	/*
	 * TrabajaPara(clienta) es un method de indicación esta MAL que tenga un return
	 */
	method trabajaPara(clienta) { 
		trabajaCon = clienta
	}
	method precioPorKilometro() { return trabajaCon.precioPorKilometro() - 3 }
}