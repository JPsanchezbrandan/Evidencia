import pytest
from MaquinaDePapel import MaquinaDePapel

@pytest.fixture
def maquina():
    return MaquinaDePapel(2500)

@pytest.mark.parametrize("materia_prima, potencia, esperado", [
    (1000, 0.5, 500.00),
    (3000, 1, 2500.00),
    (1400, 0.2, 280.00),
])
def test_producir_papel(maquina, materia_prima, potencia, esperado):
    resultado = maquina.producir_papel(materia_prima, potencia)
    assert resultado == esperado
    assert maquina.papel_producido == esperado