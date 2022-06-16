Feature: HU03: Como estudiante, quiero que el registro de actividades sea rápido para optimizar mi tiempo.
Scenario: Registrar actividad

Given  que el estudiante registra [hora] y [fecha] de la 
actividad con un nombre dentro de las casillas respectivas
When  el usuario seleccione la opción de ["Aceptar"]
Then el sistema guardará la actividad.