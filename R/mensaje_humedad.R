
#' Mensaje humedad
#'
#' @param humedad_media {parametro que ingresa el usuario}
#'
#' @return Devuelve un mensaje en base a la humedad que hay
#'
#' @examples
#' mensaje_humedad(30)
#'
#' @export

mensaje_humedad <- function(humedad_media) {
  # Verificar si el argumento es numérico
  if (!is.numeric(humedad_media)) {
    stop("Por favor, ingrese un valor numerico para la humedad media.")
  }

  # Mensajes basados en el valor de humedad media
  if (humedad_media < 30) {
    return("La humedad es baja.")
  } else if (humedad_media >= 30 && humedad_media < 60) {
    return("La humedad es moderada.")
  } else if (humedad_media >= 60 && humedad_media < 80) {
    return("La humedad es alta.")
  } else {
    return("La humedad es muy alta.")
  }
}

