
Feature: Creación de usuarios y búsqueda de libros

  Background:
    * def baseUrl = "https://demoqa.com"

  Scenario: Búsqueda de libro por ISBN
    Given url baseUrl
    And path "/BookStore/v1/Book"
    And param ISBN = "9781449325862"
    When method get
    Then status 200

  Scenario Outline: Creación de usuarios
    Given url baseUrl
    And path "/"
    And request
    """
    {
    "userName": <username>,
    "password": <password>
    }
    """
    Examples:
      | username | password  |
      | nombre   | categoria |
