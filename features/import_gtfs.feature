Feature: Import gtfs file

    Scenario: Import successfuly gtfs file
        Given I have valid gtfs file
        When I upload that gtfs file
        Then I get 200 response

    Scenario: Import missing gtfs file
        Given I have zip file with missing files
        When I upload that gtfs file
        Then I get 400 response