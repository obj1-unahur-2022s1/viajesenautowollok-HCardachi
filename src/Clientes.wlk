import remiseras.*

object ludmila {
	method precioPorKilometro() { return 18 }
	
}

object anaMaria {
	const estaEstable = true
	method economiaEstable() { return estaEstable }
	method precioPorKilometro() {
		var precioFinal = 0 
		if (estaEstable) { precioFinal = 30 }
		else { precioFinal = 25 }
		return precioFinal	   
	}
}

object teresa {
	var precioInicial = 22
	method nuevoPrecio(valor) { precioInicial = valor }
	method precioPorKilometro() { return precioInicial }
}

object melina {
	var trabajaCon
	method trabajaPara(clienta) { 
		trabajaCon = clienta
		return clienta
	}
	method precioPorKilometro() { return trabajaCon.precioPorKilometro() - 3 }
}