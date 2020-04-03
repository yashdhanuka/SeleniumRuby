Feature: To automate browserstack capability task

@stable
Scenario Outline: To check whether different devices get selected

Given we are on browserstack capability page
When we select "<os>" and "<device>" and "<version>"
Then we should be able to verify the device in RHS code
Examples:
|os          |  device         |  version|
|win10  |  Chrome         |  80.0     |
|android     |  Galaxy Note 8  |  xyz    |
|macsie |  Firefox         |  74.0     |
|   ios      |  iPhone 7       |  xyz    |