# comparacion_experimento.R — Comparación de grupos (R)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
#   Rscript scripts/comparacion_experimento.R

# TODO 1: carga plantillas/registro_experimento.csv (read.csv)

df <- read.csv("plantillas/registro_experimento.csv")

# TODO 2: calcula e imprime el promedio de ventas_producto por ubicacion
#         (aggregate)

promedios <- aggregate(ventas_producto ~ ubicacion,
                      data = datos, FUN = mean)

cat("Promedio de ventas por ubicacion:\n")
print(promedios)

# TODO 3: contar registros
cat("\nNumero de registros por grupo:\n")
print(table(datos$ubicacion))

# TODO 3: imprime el número de registros por grupo (table)
cat("\nNumero de registros por grupo:\n")
print(table(datos$ubicacion))

# TODO 4: escribe 2–3 líneas de interpretación (sección 9 de la plantilla):
#         por qué con 4 filas no se puede concluir y qué le faltaría al análisis
cat("\nInterpretacion:\n")
cat("El pasillo principal muestra mayor promedio de ventas.\n")
cat("Con solo 4 registros no se puede demostrar causalidad.\n")
cat("Faltan aleatorización, más datos y control de factores externos.\n")
