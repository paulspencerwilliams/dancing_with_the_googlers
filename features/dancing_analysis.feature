Feature: analysing dancing scores

  Scenario: How many googlers have received a best result of p
    Given the scores are:
|(N) of googlers|(S)uprises| (P)Best Result | Total score      |
| 3             | 1        | 5              | 15 13 11         |
| 3             | 0        | 8              | 23 22 21         |
| 2             | 1        | 1              | 8 0              |
| 6             | 2        | 8              | 29 20 8 18 18 21 |
    Then the input file will be:
      """
4
3 1 5 15 13 11
3 0 8 23 22 21
2 1 1 8 0
6 2 8 29 20 8 18 18 21
      """
    When I ask for analysis
    Then the results should be:
      """
Case #1: 3
Case #2: 2
Case #3: 1
Case #4: 3
      """
