Feature: Import gtfs file

    Scenario: Import successfuly gtfs file
        Given I have valid gtfs file
        When I upload that gtfs file
        Then I get 200 response