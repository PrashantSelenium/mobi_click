Feature: Managing the lifecycle


  Scenario: Starting the appium server
    When I start the server
    Then the application should be running.
