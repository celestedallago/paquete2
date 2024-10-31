# Librerías necesarias
library(dplyr)
library(ggplot2)
library(lubridate)

# Definir la función
#' Funcion que grafica las temperaturas mensuales
#'
#' @param datos {datos del dataset}
#' @param colores {colores para el grafico}
#' @param titulo {titulo del grafico}
#'
#' @return
#' Esta funcion nos retorna un grafico de barras
#'
#'
#' @examples
#' grafico_temperatura_mensual_barras(meteorologia_raw_data)
#' #Haciendo esto, la funcion nos devuelve un grafico de barras
#'
#' @export
grafico_temperatura_mensual_barras <- function(datos, colores = c("blue", "red", "green"), titulo = "Temperatura Mensual") {

  # Verificar columnas necesarias
  if (!"temperatura_abrigo_150cm" %in% colnames(datos)) {
    stop("El data frame no contiene la variable 'temperatura_abrigo_150cm'")
  }

  if (!"fecha" %in% colnames(datos)) {
    stop("El data frame no contiene la columna 'fecha'.")
  }

  if (!"id" %in% colnames(datos)) {
    stop("El data frame no contiene la columna 'id' para identificar la estación.")
  }

  # Convertir la columna 'fecha' a tipo Date si no lo es
  if (!inherits(datos$fecha, "Date")) {
    datos$fecha <- as.Date(datos$fecha)
  }

  # Extraer el mes de la fecha
  datos$mes <- lubridate::month(datos$fecha, label = TRUE, abbr = FALSE)

  # Calcular la temperatura media mensual agrupada por id y mes
  promedio_mensual <- datos %>%
    group_by(id, mes) %>%
    summarise(temperatura_media = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = 'drop')

  # Verificar si hay datos para graficar
  if (nrow(promedio_mensual) == 0) {
    stop("No hay datos disponibles para graficar.")
  }

  # Crear el gráfico de barras
  grafico <- ggplot(promedio_mensual, aes(x = mes, y = temperatura_media, fill = id)) +
    geom_bar(stat = "identity", position = position_dodge()) +
    labs(
      title = titulo,
      x = "Mes",
      y = "Temperatura Media (°C)"
    ) +
    scale_fill_manual(values = colores) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

  return(grafico)
}



