Feature: Marvel API Request
  Background:

    * def baseUrl = "https://gateway.marvel.com"

  Scenario: Obtener un personaje de Marvel

    Given url baseUrl
    And path "/v1/public/characters"
    And param apikey = '66e315299b82974e6b67f2f1d97c8928'
    And header Referer = 'developer.marvel.com'
    When method get
    Then status 200



  Scenario : Listar personajes de marvel usando timestap, hash y publickey
      Given url baseUrl
      And path "/v1/public/characters"
      And param apikey = '66e315299b82974e6b67f2f1d97c8928'
      And param ts = '1'
      And param hash = '66e315299b82974e6b67f2f1d97c8928'
      And header Referer = 'developer.marvel.com'
      When method get
      Then status 200
