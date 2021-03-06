@api
Feature: get groups
As an admin
I want to be able to get groups
So that I can see all the groups in my ownCloud

	Background:
		Given using API version "2"

	Scenario: admin gets all the groups
		Given group "0" has been created
		And group "new-group" has been created
		And group "admin" has been created
		And group "España" has been created
		When user "admin" sends HTTP method "GET" to API endpoint "/cloud/groups"
		Then the groups returned by the API should be
			| España    |
			| admin     |
			| new-group |
			| 0         |
