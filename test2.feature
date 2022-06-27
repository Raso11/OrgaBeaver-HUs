Feature: HU04: Como estudiante, quiero visualizar mi horario de manera ordenada para tener información de mis actividades.
Scenario: Visualizar Horario

Given  Dado que el usuario registro las [actividades]
When  el usuario abre la [aplicación]
Then el sistema muestra de manera ordenada el [horario] 
de sus actividades

Examples:
|Botón de la app| Botón Visualizar Horario| Horario|
|Click()|Click()|Programación I ,7:00 am - 9:00am, Lunes;Matematica, 9:00 am - 11am, Lunes|

