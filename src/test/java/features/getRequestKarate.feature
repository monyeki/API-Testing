Feature: test get endPoints

  Background: base url
    Given url 'https://reqres.in/api'

  Scenario: Single User
    And path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name == 'Janet'
