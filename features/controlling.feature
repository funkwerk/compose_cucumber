Feature: Controlling
  As a DevOps,
  I want to test my docker orchestration
  so that I haven't broken anything once I change something

  Scenario: Startable
    When I start the application
    Then 1 service is available

  Scenario: Status
    When I start the application
    Then exactly the following services are available
      | Name    | Command            | Image  | Status | Ports |
      | service | ...Test...sleep... | ubuntu | Up...  |       |

  Scenario: Stoppable
    Given I started the application
    When I stop the application
    Then 0 services are available

  Scenario: Logging
    When I start the application
    Then the logs for service contain
      """
      ...Test...
      """

  Scenario: Scalable
    Given I started the application
    When I scale the application with
      | Name    | Count |
      | service | 10    |
    Then the following services are available
      | Name    | Count |
      | service | 10    |
