Feature: HU06: Como administrador quiero que mi usuario pueda recibir notificaciones y recordatorios para hacer recordar al usuario seguir su rutina de horarios de forma puntual.

Scenario: El usuario desea registrar un recordatorio de una actividad prioritaria.

Given que el usuario se encuentra en la pantalla de recordatorios 
y desea registrar la [información y horario del recordatorio de esa actividad.]
When de click al botón [“Agregar recordatorio”]
Then la aplicación le mostrará la [pantalla de registro] con los 
[campos de texto] para que pueda ingresar la descripción, el horario y la fecha.
Examples:
    | Agregar Recordatorio|pantalla de registro    |
    | click()             |frmAgregarRecordatorio()|


Scenario: El usuario desea registrar un recordatorio de una actividad prioritaria.
Given el usuario se encuentra en los campos de texto para agregar recordatorio y completar la información requerida
como [Nombre de recordatorio],[Descripción del Recordatorio],
[Fecha de Recordatorio] y [Hora de Recordatorio].
When de click al botón [“Realizar recordatorio”]
Then la aplicación guardará dicho [recordatorio] y a la [hora 
de la actividad], la aplicación enviará una [notificación] al usuario 
para que pueda realizar la actividad, además, si es que te 
está tomando mucho tiempo dicha actividad, la aplicación te 
hará recordar mediante un [mensaje] que tienes más actividades por hacer según tu horario.
Examples:
    | Información de la Actividad| Fecha     |Hora del recordatorio|Realizar recordatorio|Notificación                    | Mensaje                            |
    | TB4 de Especificación      | 15/06/2022| 11:59pm             |click()              |Actividad Importante, recordar  |La actividad "TB4 de Especificación"|
                                                                                         |comunicar al grupo para entregar|  esta proxima a vencer,            |
                                                                                                                          | recuerda cumplir con los plazos    |  
                                                                                                                

Scenario: El cliente desea que le lleguen notificaciones de cuándo debe realizar cada actividad.
Given que el usuario está fuera de la aplicación y según 
la hora debe realizar una actividad de estudio.
When sea la hora de realizar esa actividad
Then la aplicación mandará [notificaciones] al usuario 
que debe realizar dicha actividad y al finalizar 
[marcarla como completada]. Por otro lado, si no 
se marca como completada, la aplicación lo tomará
 como una actividad no realizada.
 Examples:
     | Fecha y Hora del Telefono |Notificación                                                         | Marcar como Completa |Eliminar Actividad|
     | 15/06/2022, 13:00         |La actividad "TB4 de Especificación" vencerá en 10 horas y 59 minutos| click()              |ElimAct(obj act)  |
