![BrightCoders Logo](img/logo.png)

# Tic Tac Toe Challenge
## Implementación del juego Tic Tac Toe (Gato)

> [Ver instrucciones antes de iniciar](./instructions.md)

Este proyecto es una implementación del clásico juego Tic Tac Toe (también conocido como Gato) en Ruby. El objetivo es proporcionar una versión jugable del juego en la consola, con una interfaz sencilla y una lógica de juego clara.

## Tabla de Contenido
- [Tic Tac Toe Challenge](#tic-tac-toe-challenge)
  - [Implementación del juego Tic Tac Toe (Gato)](#implementación-del-juego-tic-tac-toe-gato)
  - [Tabla de Contenido](#tabla-de-contenido)
  - [Descripción](#descripción)
  - [Instalación y Ejecución](#instalación-y-ejecución)
  - [Cómo Utilizar](#cómo-utilizar)
  - [Pruebas](#pruebas)
  - [Créditos](#créditos)
  - [Insignias](#insignias)

## Descripción
El proyecto Tic Tac Toe es una implementación en Ruby del juego de mesa clásico. Este proyecto está diseñado para ser ejecutado en la línea de comandos y permite a dos jugadores jugar turnos en un tablero de 3x3.

## Instalación y Ejecución
Para instalar y ejecutar este proyecto, sigue estos pasos:
1. Clona el repositorio:
   ```
   git clone https://github.com/BrightCoders-Institute/s3a3-tic-tac-toe-farellano0.git
   ```
2. Navega al directorio del proyecto:
   ```
   cd s3a3-tic-tac-toe-farellano0
   ```
3. Ejecuta el juego:
   ```
   ruby tic_tac_toe.rb
   ```

## Cómo Utilizar
Para jugar Tic Tac Toe, simplemente ejecuta el script y sigue las instrucciones en pantalla para hacer tus movimientos. Cada jugador elige una posición en el tablero ingresando coordenadas durante su turno.

Por supuesto, aquí tienes una sección adicional para el archivo `README.md` que describe cómo ejecutar las pruebas del proyecto:

## Pruebas

Este proyecto utiliza MiniTest para pruebas unitarias. Sigue estos pasos para ejecutar las pruebas:

1. Asegúrate de tener MiniTest instalado. Si no está instalado, puedes agregarlo a tu `Gemfile` y luego ejecutar `bundle install`:

   ```ruby
   gem 'minitest', '~> 5.14'
   ```

2. Las pruebas están ubicadas en el directorio `test`. Para ejecutar todas las pruebas, utiliza el siguiente comando en la raíz del proyecto:

   ```sh
   ruby -Itest test/*_test.rb
   ```

   Esto ejecutará todos los archivos de prueba en el directorio `test` que terminan con `_test.rb`.

3. Para ejecutar un archivo de prueba específico, simplemente especifica el archivo en el comando. Por ejemplo:

   ```sh
   ruby test/board_test.rb
   ```

   Esto ejecutará las pruebas definidas en `board_test.rb`.

## Créditos
Este proyecto fue desarrollado por [Fernando Arellano](https://github.com/farellano0) como parte de un reto de programación en BrightCoders.

## Insignias
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)
[![RuboCop Style](https://img.shields.io/badge/code_style-RuboCop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Minitest](https://img.shields.io/badge/test-Minitest-blue.svg)](https://github.com/seattlerb/minitest)
[![Reek](https://img.shields.io/badge/code_smell-Reek-yellowgreen.svg)](https://github.com/troessner/reek)
[![RubyCritic](https://img.shields.io/badge/code_quality-RubyCritic-orange.svg)](https://github.com/whitesmith/rubycritic)
