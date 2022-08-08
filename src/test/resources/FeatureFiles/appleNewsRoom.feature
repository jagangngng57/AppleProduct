Feature: newsroom search and popular topic Feature with US Landing Page

  @SearchResults
  Scenario Outline: 
    Given user navigates to the newsRoom application
    Then user able to see the newsroom home page '<pageTitle>'
    And user should see the search links '<newsroom>'
    When user enter the '<topic>' in search box
    Then user should see the search results with page '<title>'

    Examples: 
      | pageTitle        | newsroom        | topic   | title                       |
      | Newsroom - Apple | Search Newsroom | MacBook | MacBook - Newsroom - Search |
