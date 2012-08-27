Feature: Customer Creation form
As a user I can add customer information into the application

Scenario: I should see customer list
When I go to the home page
Then I should see "Customers"

Scenario: I should see customer list
Given I am on the home page
Then I should see "New"
When I follow "New"
Then I should see "Add new customer"
And I should see "First name"
And I should see "Last name"
And I should see "Email"
And I press "Create Customer"
Then I should see "is invalid"
And I should see "is invalid"
And I should see "is invalid"

Scenario Outline: Validations for create customer
Given I am on the new customer page
And I fill in <email> within "Email"
And I fill in <first_name> within "First name"
And I fill in <last_name> within "Last name"
Then I should see <error>


|email|first_name|last_name|error|
|"email"|"first_name"|"last_name"|"is invalid"|