punto_rocio<- function(rocio_medio) {
  # Verificar que el argumento sea numérico
  if (!is.numeric(rocio_medio)) {
    stop("El argumento debe ser un valor numérico que represente el punto de rocío.")
  }

  # Generar un mensaje basado en el valor del punto de rocío
  if (rocio_medio < 0) {
    mensaje <- "El punto de rocío es muy bajo; el aire es muy seco."
  } else if (rocio_medio >= 0 && rocio_medio <= 10) {
    mensaje <- "El punto de rocío es bajo; el aire se siente fresco y seco."
  } else if (rocio_medio > 10 && rocio_medio <= 15) {
    mensaje <- "El punto de rocío es moderado; las condiciones son cómodas."
  } else if (rocio_medio > 15 && rocio_medio <= 20) {
    mensaje <- "El punto de rocío es alto; el aire se siente un poco húmedo."
  } else {
    mensaje <- "El punto de rocío es muy alto; las condiciones son muy húmedas y pueden sentirse incómodas."
  }

  return(mensaje)
}
