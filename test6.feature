Feature: HU07:Como administrador quiero que mi usuario pueda recibir notificaciones y recordatorios para hacer recordar al usuario seguir su rutina de horarios de forma puntual.

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
