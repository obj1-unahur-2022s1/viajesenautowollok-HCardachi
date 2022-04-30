/*
 * definir remiseras y clientes.
 */
import Clientes.*

object roxana {
	method costoPorViaje(clienta,kms) { return clienta.precioPorKilometro() * kms }
}

object gabriela {
	method costoPorViaje(clienta,kms) {
		return clienta.precioPorKilometro() * kms * 1.20
	}
}

object mariela {
	//var precioMinimo = 50
	//method pactadoConRemiseria() { return precioPactado }
	//method precioNuevo(precio) { precioPactado = precio}
	method costoPorViaje(clienta,kms) { 
		/* Acá debias usar el 50.max() */
		return 50.max(clienta.precioPorKilometro() * kms)
	}
}

object juana { 
	var precioPactado = 0
	method pactadoConRemiseria(precioViaje) { precioPactado = precioViaje }
	method costoPorViaje(clienta,kms) {
		var montoViaje = 0
	    if (kms < 8) { montoViaje = 100 }
		else { montoViaje = 200 }
		return montoViaje
	}
}
 
object lucia {
	var reemplazaA 
	method remiseraAReemplazar(nuevaRemisera) { 
		reemplazaA = nuevaRemisera
		return reemplazaA
	}
	//method remiseraActual() { return reemplazaA }
	method costoPorViaje(clienta,kms) {
		return reemplazaA.costoPorViaje(clienta,kms)
	}
}

