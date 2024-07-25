Feature: Validate Subsequence

  Scenario Outline: Subsequence is valid
    Given I have an <array> and a <sequence>:
    When I validate that the sequence is a subsequence of the array
    Then I should get <result>


    Examples: Valid subsequences
      | array                      | sequence                   | result |
      | 5, 1, 22, 25, 6, -1, 8, 10 | 1, 6, -1, 10               | True   |
      | 5, 1, 22, 25, 6, -1, 8, 10 | 5, 1, 22, 25, 6, -1, 8, 10 | True   |
      | 5, 1, 22, 25, 6, -1, 8, 10 | 5, 1, 22, 6, -1, 8, 10     | True   |
      | 5, 1, 22, 25, 6, -1, 8, 10 | 22, 25, 6                  | True   |