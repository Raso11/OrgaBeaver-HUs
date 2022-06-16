Feature: HU07: Como usuario de la aplicación quiero tener una tabla interactiva para registrar mis notas para tener una base para compararlas a futuro.
Scenario: El usuario registra sus notas 

Given que el estudiante inició sesión correctamente 
en la aplicación. Y el estudiante le dé al botón [“Registrar Notas”] 
When el estudiante pueda ver una tabla interactiva, registre sus [notas] y las guarde.
Then el sistema guardará de manera ordenada y en la fecha respectiva.

Scenario: Registrar progresos
Given que se logeo correctamente el estudiante. Y el estudiante le dé al botón [“Registrar Progreso”]
When el estudiante pueda ver un espaciado, registre su [progreso] y lo guarde.
Then el sistema verificará los datos y guardará su progreso.