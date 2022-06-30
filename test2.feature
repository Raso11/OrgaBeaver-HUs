Feature: HU04: Como estudiante, quiero visualizar mi horario de manera ordenada para tener información de mis actividades.
Scenario: Visualizar Horario

Given  Dado que el usuario registro las [actividades]
When  el usuario abre la [aplicación]
Then el sistema muestra de manera ordenada el [horario] 
de sus actividades

Examples:
|Botón de la app| Botón Visualizar Horario| Horario|
|Click()|Click()|Programación I ,7:00 am - 9:00am, Lunes;Matematica, 9:00 am - 11am, Lunes|

Scenario: El usuario desea modificar una actividad
Dado el usuario se encuentra en la pantalla de edición de actividades 
Cuando el usuario modifica los [campos a actualizar] y da clic en el botón [Modificar]
Entonces el sistema actualizará la información de la actividad  en el [horario]. 
Examples:
    | Actividad a Modificar | Valor a modificar     | Botón Modificar |Horario                                                                    | 
    | Programación I        | 9:00-11:00am, Martes  | click()         |Programación I ,9:00 am - 11:00am, Martes;Matematica, 9:00 am - 11am, Lunes|

