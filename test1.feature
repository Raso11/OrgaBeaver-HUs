Feature: HU03: Como estudiante, quiero que el registro de actividades sea rápido para optimizar mi tiempo.
Scenario: Registrar actividad

Given que el estudiante registra [hora] y [fecha] de la 
actividad con un nombre dentro de las casillas respectivas
When  el usuario seleccione la opción de ["Aceptar"]
Then el sistema guardará la actividad.

Examples:
    | Titulo de la actividad                                   | Hora | Descripción de la actividad                   |Fecha de la actividad|Mensaje               |
    | Realizar la PC2 de Fundamentos de Sistemas de Información| 13:00|Examen de porcentaje 5% y el tema principal SQL| 23/06/2022          | Actividad registrada.|

Scenario: No se registró la actividad correctamente
Given que el estudiante se encuentra en la pantalla de registro de actividades
When registra solo la hora o solo la fecha de la actividad en en los campos y el usuario da click al botón “aceptar”
Then el sistema no podrá registrar la actividad y mostrará un mensaje de “Completar los campos obligatorios”.
Examples:
    |Titulo de la actividad                                    | Hora | Descripción de la actividad                   |Fecha de la actividad|Mensaje                             |
    | Realizar la PC2 de Fundamentos de Sistemas de Información| ""   |Examen de porcentaje 5% y el tema principal SQL| 23/06/2022          | “Completar los campos obligatorios”|

