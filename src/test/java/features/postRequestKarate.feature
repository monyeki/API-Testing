Feature: test Post endPoints

  Background: base url
    Given url 'https://reqres.in/api'

  Scenario: Create User
    Given path '/users'
    And request {
    "name": "Katlego","job": "Test Engineer","id": "398","createdAt": "2023-05-15T06:24:10.896Z"}
    When method Post
    Then status 201
    And print response
    And match response = {"name": "Katlego"}
    And match response = { "job": "Test Engineer"}



