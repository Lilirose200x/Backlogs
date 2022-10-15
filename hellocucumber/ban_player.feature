Feature: Ban Player

As a moderator
I would like to ban a player from playing on the site
So that cheaters are prevented from playing

# Normal Flow
Scenario: Moderator bans a user
Given I am logged into a moderator account
And the account "Tigran L. Petrosian" exists in the system
When I attempt to ban the account "Tigran L. Petrosian"
Then the account "Tigran L. Petrosian" has been banned

# Error Flow
Scenario: Unauthorized user attempts to ban a user
Given I am a logged in user
And the account "Hans Niemann" exists in the system
When I attempt to ban the account "Hans Niemann"
Then the account "Hans Nieman" has not been banned
And the "Cannot preform this action" error message is issued

# Error Flow
Scenario: Attempt to ban an non-existant user
Given I am logged into a moderator account
And the account "Billionare who cheated against Vishy in a charity simul" does not exist in the system
When I attempt to ban the account "Billionare who cheated against Vishy in a charity simul"
Then the "This user does not exist" error message is issued
