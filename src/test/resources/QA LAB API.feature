
  Feature: QA LAB
    Background:
      * def baseUrl = "https://bensg.com/test-qalab"
      * def username = "st30001"
      * def password = "Password2!"
      * def service = "moodle_mobile_app"
      * def token = null

    Scenario: Obtener courses

        Given url baseUrl
        And path "/login/token.php"
        And param username = username
        And param password = password
        And param service = service
        When method post
        Then status 200
      * def token = response.token
      * print 'Token obtenido: ' + token



   Scenario: Obtener archivos accedidos recientes
      Given url baseUrl
      And path "/webservice/rest/server.php"
      And param token = token
      And param wsfunction = "block_recentlyaccesseditems_get_recent_items"
      And param moodlewsrestformat = "json"
      When method get
      Then status 200
      * print "EL BODY RESPONSE ES:" , response


