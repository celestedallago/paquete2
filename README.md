
<!-- README.md is generated from README.Rmd. Please edit that file -->

# paquete2

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)

[![R-CMD-check](https://github.com/celestedallago/paquete2/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/celestedallago/paquete2/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## INTRODUCCION A NUESTRO PAQUETE

Bienvenidos a nuestro paquete, diseñado para facilitar el análisis y la
manipulación de datos meteorológicos. Este paquete ofrece un conjunto de
funciones que permiten a los usuarios descargar, leer y procesar
datasets relacionados con condiciones climáticas de manera eficiente y
amigable.

## ¿Para Quién Es Este Paquete?

Este paquete está dirigido a investigadores, estudiantes y profesionales
del área de la meteorología, así como a cualquier persona interesada en
analizar datos climáticos de manera efectiva. Con una interfaz intuitiva
y funciones bien documentadas, tanto los principiantes como los usuarios
avanzados podrán aprovechar al máximo las capacidades de nuestro
paquete.

## ¿Cómo Empezar?

Para comenzar a utilizar el paquete, asegúrate de tener R y las
dependencias necesarias instaladas. Puedes instalar el paquete
directamente desde CRAN o cargarlo desde tu entorno de desarrollo.
Revisa nuestra documentación para obtener ejemplos detallados y guías
sobre cómo utilizar cada función.

Estamos emocionados de que pruebes nuestro paquete y esperamos que te
ayude a descubrir y analizar datos meteorológicos de una manera más
eficiente. ¡Gracias por tu interés y feliz análisis!

## Instalacion de nuestro paquete

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

## Autoras del Paquete - ladies meterologia

Victoria Marull

Estudiante de Ciencia de Datos en la Universidad Austral, en la ciudad
de Rosario. Apasionada por el análisis de datos y la meteorología, busca
contribuir a la investigación climática a través de herramientas
efectivas.

Celeste Dal Lago

Estudiante de Ciencia de Datos en la Universidad Austral, en la ciudad
de Rosario. Esta interesada en desarrollar soluciones que faciliten el
acceso y análisis de datos meteorológicos para una mejor comprensión del
clima.

## Contribuciones al Paquete

Nos encantaría que te sumes a la mejora de este paquete. Si deseas
realizar contribuciones, ya sea para agregar nuevas funcionalidades,
corregir errores o mejorar la documentación, por favor sigue estos
pasos:

Fork y Clona el Repositorio: Realiza un fork de este repositorio en tu
cuenta de GitHub y clónalo en tu máquina local.

Realiza la Contribución y Crea un Pull Request: Haz los cambios que
consideres necesarios en tu copia del repositorio. Luego, abre un pull
request hacia la rama principal del proyecto, asegurándote de incluir
una descripción clara y concisa del propósito de tu contribución.

Contacto para Dudas: Si tienes alguna duda o necesitas asistencia
durante el proceso de contribución, no dudes en contactarnos a través de
los siguientes correos electrónicos:

Victoria Marull: <vmarull@mail.austral.edu.ar>

Celeste Dal Lago: <cdallago@mail.austral.edu.ar> Agradecemos de antemano
tu interés en contribuir a este proyecto. ¡Juntos podemos mejorar y
expandir las capacidades de nuestro paquete!
