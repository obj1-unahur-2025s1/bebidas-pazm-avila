// para ser polimórfico los métodos atributos etc tienen que escribirse exactamente igual en todos los objetos a definir.
object tito {
    var cantidad = 0  // REFERENCIA A ALGÚN OBJETO . (A 0 ahora)
    var bebida = cianuro // inicializo la variable para que no tire error(con algo q voy a definir mas adelante o con null). 0 =/= null porque 0 es un objeto.
    method peso() = 70 // mensaje de consulta
    method inerciaBase() = 490
    method consumir(unaCantidad,unaBebida) { // los parametros y los atributos no pueden llamarse igual.
        bebida = unaBebida
        //no puedo meter un metodo de consulta dentro de un metodo de indicación
        cantidad = unaCantidad
    }
    method bebida() = bebida
    method velocidad() {
        return bebida.rendimiento(cantidad) * self.inerciaBase() / self.peso()
        // objetos que le pasan mensajes a otros objetos !! siempre es asi, no es estructurado ni nada
    }
}

//siempre busco delegar en otros objetos
// :r en consola la reinicia y ::r recarga con los cambios y vuelve a lanzar la consola.

object whisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
    
}

object cianuro {
    method rendimiento(cantidad) = 0 // falla si no le pongo el parámetro.
}

object terere {
    method rendimiento(cantidad) {
        return  (cantidad * 0.1).max(1) // 1.max(cantidad * 0.1) Me retorna el máximo entre dos números
    }
}