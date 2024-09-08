class MaquinaDePapel:
    def __init__(self, capacidad_maxima):
        self.capacidad_maxima = capacidad_maxima
        self.papel_producido = 0

    def producir_papel(self, materia_prima, potencia):
        papel_producido = materia_prima * potencia
        if papel_producido > self.capacidad_maxima:
            papel_producido = self.capacidad_maxima

        self.papel_producido = papel_producido
        return papel_producido
    
    def estado(self):
        return f"Papel producido: {self.papel_producido:,.2f} kg, capacidad máxima: {self.capacidad_maxima:,.2f} kg"

maquina = MaquinaDePapel(2500)

maquina.producir_papel(1400, 0.2)

print(maquina.estado())
