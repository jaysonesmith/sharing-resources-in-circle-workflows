Feature: Page Title
    Titles are important and my page should have one that's accurate.

    Scenario: My blog's title displays the correct data
      When my blog is requested
      Then the title must be "jayson.codes"
     