Feature: Login as an existing User
	In order to view, add posts, comments and likes
	As a user
	I want to log in with my email

Background:
	Given a user with email "demouser@onet.com" exists in database
	And I access the login form
	
Scenario: Valid Login Credentials
	When I submit correct login credentials
	Then I should see my timeline
	
Scenario: Incorrect Login Credentials
	When I submit incorrect login credentials
	Then I should see login error
	
Scenario: Login through the navigation form
	When I access navbar login form
	And I submit correct credentials through the navbar form
	Then I should also see my timeline
	
Scenario: Access Restricted pages
	When I access post timeline
	Then I should be redirected to login

@omniauth_test
Scenario: Sign in with facebook
  Given I am signed in with facebook
  Then I should see user firstname "omniauthfirstname"

