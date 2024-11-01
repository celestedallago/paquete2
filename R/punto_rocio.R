#' Punto rocio
#'
#' @param rocio_medio {este es el argumento que el usuario ingresa}
#'
#' @return esta funcion te devuelve un mensaje sobre el punto de rocio
#'
#'@examples
#'punto_rocio(3)
#'@export
punto_rocio<- function(rocio_medio) {
  # Verificar que el argumento sea numérico
  if (!is.numeric(rocio_medio)) {
    stop("El argumento debe ser un valor numérico que represente el punto de rocio.")
  }

  # Generar un mensaje basado en el valor del punto de rocío
  if (rocio_medio < 0) {
    mensaje <- "El punto de rocio es muy bajo; el aire es muy seco."
  } else if (rocio_medio >= 0 && rocio_medio <= 10) {
    mensaje <- "El punto de rocio es bajo; el aire se siente fresco y seco."
  } else if (rocio_medio > 10 && rocio_medio <= 15) {
    mensaje <- "El punto de rocio es moderado; las condiciones son comodas."
  } else if (rocio_medio > 15 && rocio_medio <= 20) {
    mensaje <- "El punto de rocío es alto; el aire se siente un poco humedo."
  } else {
    mensaje <- "El punto de rocio es muy alto; las condiciones son muy humedas y pueden sentirse incomodas."
  }

  return(mensaje)
}
