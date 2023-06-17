# DIAGRAMA DE FLUJO

#  1- Inicio del proceso
#  2- Se llama a juego.rb indicando eleccion (ex: ruby juego.rb piedra)
#  3- Se genera eleccion random en pcChoise(piedra, papel o tijera)
#  3- Eleccion de usuario es no valida? (palabra incorrecta)
#  NO SI→ * Mensaje: Debe ser una opcion valida
#  ↓      3.1- Fin Proceso
#
#  4- Eleccion de usuario es igual a eleccion del computador?
#  NO SI→ * Mensaje: Empate!
#  ↓      4.1- Fin Proceso
#
#  5- Eleccion de usuario cumple condicion para perder?
#  NO SI→ * Mensaje: Perdedor!
#  ↓      5.1- Fin Proceso
#
#  6- *Mensaje: Ganaste!
#  7- Fin Proceso

#Definicion de Variables
opciones = ['PIEDRA', 'PAPEL', 'TIJERA']
pcChoise = rand(3)
eleccion = ARGV[0]
indice = opciones.index(eleccion.upcase)

#Validacion de variables
#puts "test: eleccion: #{eleccion}"
#puts "test: pcChoise: #{pcChoise}"
#puts "test: indice: #{indice}"
#puts "test: eleccion mayusc: #{eleccion.upcase}"

#Inicio de "Interfaz"
puts ":: Juego de Piedra/Papel/Tijera ::"

#validacion de datos de entrada
if indice == nil
  puts "\e[0;35mArgumento invalido, la opcion debe ser Piedra, Papel o Tijera\e[m"
#compara si hay empate
elsif indice == pcChoise
  puts "Computador juega " + "\e[46m\'" + opciones[pcChoise] + "'\e[m"
  puts "\e[0;30m= = = = = = =\e[m"
  puts "\e[0;30mEs un Empate!\e[m"
  puts "\e[0;30m= = = = = = =\e[m"
#compara si usuario es ganador
elsif (indice == 0 && pcChoise == 1) || (indice == 1 && pcChoise == 2) || (indice == 2 && pcChoise == 0)
  puts "Computador juega " + "\e[46m\'" + opciones[pcChoise] + "'\e[m"
  puts "\e[0;31m........\e[m"
  puts "\e[0;31mPerdiste!\e[m"
  puts "\e[0;31m........\e[m"
else
  puts "Computador juega " + "\e[46m\'" + opciones[pcChoise] + "'\e[m"
  puts "\e[0;32m~~~~~~~~~\e[m"
  puts "\e[0;32mGanaste!\e[m"
  puts "\e[0;32m~~~~~~~~~\e[m"
end
