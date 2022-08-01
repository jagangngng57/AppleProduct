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
    And user should see the newsroom links '<newsroomLink>'
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
    Then user should see '<airPods>' in the list of topics

    Examples: 
      | pageTitle        | popularTopics  | airPods |
      | Newsroom - Apple | Popular Topics | AirPods |

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

  @ViewArchive
  Scenario Outline: 
    Given user navigates to the newsRoom application
    Then user able to see the newsroom home page '<pageTitle>'
    And user should see the viewArchive '<viewArchive>'
    When user clicks on viewArchive '<viewArchive>'
    Then user navigates to the archive page results with '<title>'

    Examples: 
      | pageTitle        | newsroom        | viewArchive  |title|
      | Newsroom - Apple | Search Newsroom | View Archive |All Topics Archive - Apple|
