# comparacion_experimento.py — Comparación de grupos (Python)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
#   python scripts/comparacion_experimento.py

# TODO 1: carga plantillas/registro_experimento.csv con pandas
import pandas as pd

df = pd.read_csv("plantillas/registro_experimento.csv")
df.head()

# TODO 2: calcula e imprime el promedio de ventas_producto por ubicacion
promedios = df.groupby("ubicacion")["ventas_producto"].mean()
print("Promedio de ventas por ubicación:")
print(promedios)

# TODO 3: imprime el número de registros por grupo (value_counts)
print("\nNúmero de registros por ubicación:")
print(df["ubicacion"].value_counts())

# TODO 4: escribe 2–3 líneas de interpretación (sección 9 de la plantilla):
#         por qué con 4 filas no se puede concluir y qué le faltaría al análisis

print("\nInterpretacion:")
print("El pasillo principal tiene mayores ventas promedio (1335 USD frente a 1040 USD).")
print("Con solo 4 registros no se puede demostrar que la ubicación cause esta diferencia.")
print("Se necesitan más datos, asignación aleatoria y control de factores externos.")