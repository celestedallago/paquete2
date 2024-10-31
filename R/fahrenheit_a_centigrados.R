
#' Funcion para covertir grados fahrenheit a centigrados
#'
#' #Esta funcion te pide grados en fehrenheit para posteriormente devolvertelos en grados centigrados
#'
#' @param temperatura_f {temperatura en grados fahrenheit}
#'
#' @return retorna el grado fahrenheit en centigrados
#'
#'
#' @examples
#' fahrenheit_a_celsius(98.6)
#' #Esta funcion deberia devolver 37
#'
#' @export
fahrenheit_a_centigrados <- function(temperatura_f) {
  temperatura_c <- (temperatura_f - 32) * 5 / 9
  return(temperatura_c)
}
