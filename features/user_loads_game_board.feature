Feature: Load the game board
    In order to play Battleship
    As an user
    I want to see the game board

    Scenario: User loads the player grid to arrange ships
        Given I want to play Battleship
        When I go to the homepage
        Then I should see the player grid to arrange my ships
        And the player grid should have dimensions 10 por 10
        And the squares should be draggable
