Feature: Creación de mascotas
  # https://petstore.swagger.io/#/pet/addPet

  Scenario Outline: Creación de mascotas y validación de respuesta obtenida
    # Realizar POST con la creación de la mascota
    Given url "https://petstore.swagger.io/v2"
    And path "/pet"
    And request
    """
    {
      "id": <id>,
      "category": {
        "id": 0,
        "name": "<categoria>"
      },
      "name": "<nombre>",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    """
    Then method post
    And status 200
    # verificación de que la mascota fue creada correctamente
    Given path "/pet/<id>"
    When method get
    Then status 200
    Then match response.id == <id>
    And match response.category.name == "<categoria>"
    And match response.name == "<nombre>"
    And match response.status == "available"
    #verificación del tipo de dato de la response
    Then match response.id == '#number'
    And match response.category.id == '#number'
    And match response.category.name == '#string'
    And match response.name == '#string'
    And match response.photoUrls == '#array'
    And match response.tags == '#array'
    And match response.status == '#string'


    Examples:
      | id   | nombre | categoria |
      | 345  | fanny  | perros    |
      | 346  | fresa  | gatos     |
      | 347  | ronny  | aves      |

