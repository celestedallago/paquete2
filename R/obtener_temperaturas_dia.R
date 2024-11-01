library(dplyr)

# Función para obtener temperaturas máxima y mínima de una fecha específica
#' Title
#'
#' @param data {dataset}
#' @param fecha_input {fecha de la que queremos saber la temp. max. y min.}
#'
#' @return Esta funcion nos retorna la temperatura maxima y minima de un dia en expecifico
#'
#' @examples
#' obtener_temperaturas_dia(meteorologia_raw_data, "1973-01-01")
#'
#' @export
obtener_temperaturas_dia <- function(data, fecha_input) {
  # Convertir la fecha de entrada a tipo Date
  fecha <- as.Date(fecha_input)

  # Filtrar los datos para la fecha específica
  temperaturas_dia <- meteorologia_raw_data  %>%
    filter(fecha == fecha) %>%
    summarise(temp_maxima = max(temperatura_abrigo_150cm_maxima, na.rm = TRUE),
              temp_minima = min(temperatura_abrigo_150cm_minima, na.rm = TRUE))

  return(temperaturas_dia)
}



