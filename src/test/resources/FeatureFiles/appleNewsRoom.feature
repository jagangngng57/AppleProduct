Feature: newsroom search and popular topic Feature with US Landing Page

  @USLandingPage
  Scenario Outline: 
    Given user navigates to the newsRoom application
    Then user able to see the newsroom home page '<pageTitle>'
    And user should see the links '<newsroom>' and '<popularTopics>'

    Examples: 
      | pageTitle        | newsroom        | popularTopics  |
      | Newsroom - Apple | Search Newsroom | Popular Topics |

  @newRoomLink
  Scenario Outline: 
    Given user navigates to the newsRoom application
    Then user able to see the newsroom home page '<pageTitle>'
    And user should see the links '<newsroomLink>'
    When user clicks on '<newsroomLink>'
    Then user should see text header '<latestNews>'

    Examples: 
      | pageTitle        | newsroomLink | latestNews  |
      | Newsroom - Apple | Newsroom     | Latest News |

  @PopularTopics
  Scenario Outline: 
    Given user navigates to the newsRoom application
    Then user able to see the newsroom home page '<pageTitle>'
    And user should see the link '<popularTopics>'
    When user able to clicks on '<popularTopics>'
    Then user should see the list of topics

    Examples: 
      | pageTitle        | popularTopics  |
      | Newsroom - Apple | Popular Topics |

  @SearchResults
  Scenario Outline: 
    Given user navigates to the newsRoom application
    Then user able to see the newsroom home page '<pageTitle>'
    And user should see the links '<newsroom>'
    When user enter the '<topic>' in search box
    Then user should see the search results

    Examples: 
      | pageTitle        | newsroom        | topic |
      | Newsroom - Apple | Search Newsroom | apple |

  @ViewArchive
  Scenario Outline: 
    Given user navigates to the newsRoom application
    Then user able to see the newsroom home page '<pageTitle>'
    And user should see the links '<newsroom>' and '<viewArchive>'
    When user clicks on '<viewArchive>'
    Then user navigates to the archive results

    Examples: 
      | pageTitle        | newsroom        | viewArchive  |
      | Newsroom - Apple | Search Newsroom | View Archive |
