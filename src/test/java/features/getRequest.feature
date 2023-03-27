Feature: test get endPoints

  Background: Setup base url
    Given url 'https://reqres.in/api'

  Scenario: test get list users with JSON Data
    And path '/users'
    And param page = 2
    When method GET
    Then status 200
    #And print response
    #And match response.data[0].email == 'michael.lawson@reqres.in'
    And match $.data[0].email == 'michael.lawson@reqres.in'

  Scenario: test get single user with JSON Data
    And path '/users/2'
    When method GET
    Then status 200

  Scenario: test get single user Not found with JSON Data
    And path '/users/23'
    When method GET
    Then status 404
