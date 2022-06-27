Feature: HU07: Como usuario de la aplicación quiero tener una tabla interactiva para registrar mis notas para tener una base para compararlas a futuro.
Scenario: El usuario registra sus notas 

Given que el estudiante inició sesión correctamente 
en la aplicación. Y el estudiante le dé al botón [“Registrar Notas”] 
When el estudiante pueda ver una tabla interactiva, registre sus [notas] y las guarde.
Then el sistema guardará de manera ordenada y en la fecha respectiva.
Examples:
    | Nombre Nota              | Descripción                      | Fecha de la nota | Registrar|Mensaje                                  |
    | Fecha Entrega TF Espec.  | Entregar el ultimo TF de Espec.  | 29/06/2022       | click()  |Nota "Fecha Entrega TF Espec." registrada|

Scenario: Registrar progresos
Given que se logeo correctamente el estudiante. Y el estudiante le dé al botón [“Registrar Progreso”]
When el estudiante pueda ver un espaciado, registre su [progreso] y lo guarde.
Then el sistema verificará los datos y guardará su progreso.
Examples:
    | Actividades de esta Semana | Realizadas | Aprobadas |Pregunta(opcional)|Mensaje              |
    | 10                         | 9          | 8         |NULL              |Progresos Registrados|
