@remove_snapshot @snapshot
Feature: Using snapshot definitions

    Scenario: Snapshot testing on an api
        Given I mock http call to forward request body for path /users/yaml
        Given I set request json body
            | username | plouc |
            | gender   | male  |
        When I POST http://fake.io/users/yaml
        Then response body should match snapshot
