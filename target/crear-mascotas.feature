Feature: Funcionalidades de Mascota PetStore
  Scenario: Consulta de Mascota
    Given url "https://petstore.swagger.io/v2"
    And path "/pet/2"
    When method get
    Then status 200

    Examples:
      |idMascota|
      |2 |