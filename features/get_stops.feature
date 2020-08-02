Feature: When I need stop/stops information
    I should be able to get

    Scenario: Fetching all stops
        Given I have several stops loaded already
        When I fetch all stops
        Then I will see all the stops

    Scenario Outline: Filtering the stops
        Given I have several stops loaded already
        When I filter by <latitude> and <longitude> and <rangekm>
        Then I will see <stops> stops

        Examples:
            | latitude  | longitude   | rangekm  | stops |
            | 39.35082  | -76.660188  | 0        | 1     |
            | 39.35082  | -76.660188  | 5        | 9     |