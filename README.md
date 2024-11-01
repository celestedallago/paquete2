
<!-- README.md is generated from README.Rmd. Please edit that file -->

# paquete2

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)

[![R-CMD-check](https://github.com/celestedallago/paquete2/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/celestedallago/paquete2/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Instacion

Puede instalar la versión de desarrollo de paquete2 desde
[GitHub](https://github.com/) con:

``` r
# install.packages("pak")
pak::pak("celestedallago/paquete2")
```

## Carga parquete

De esta forma podes descargar el paquete

``` r
library(paquete2)
```

## Ejemplo de las funciones:

`fahrenheit_a_centigrados`esta funcion convierte la temperatura de
fahrenheit a centigrados

``` r
fahrenheit_a_centigrados(80)
#> [1] 26.66667
```

`punto_rocio`esta funcion pide que ingrese un valor y de acuerdo a este
devuelve un mensaje

``` r
punto_rocio(5)
#> [1] "El punto de rocio es bajo; el aire se siente fresco y seco."
```

`mensaje_humedad`esta funcion pide que ingreses un valor y de acuerdo a
este devuelve un mensaje

``` r
mensaje_humedad(30)
#> [1] "La humedad es moderada."
```
