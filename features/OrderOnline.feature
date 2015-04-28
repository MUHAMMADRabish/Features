Feature: Order Dominos Pizza Online
 We want to step through a simple scenario for training
@home
Scenario: Check the Dominos home page
 When I visit the Dominos home page
 Then I should see the Dominos home page
@OrderPizza
Scenario: Location Search for Dominos Pizza
  Given I visit the Dominos home page
  When  I click the "Order Online" tab
  Then  I should see the Dominos Location Search page
  When I click on the delivery tab
  Then I should be on entrees page
  When I clicked on oven baked pizza
  Then I should be on order pizza
  When I clicked on philly cheese stick
  Then I should be on click order page
  When I click on the cross sign
  Then I should be on reveiw order page
  When I click on the add more item option
  Then I should see entrees page
  When I click on the desert option
  Then I should be on deserts options page
  When I select the product from the option
  Then I should see choice page
  When I click on add to order option
  Then I should see the desert selection page
  When I click on the checkout option
  Then I should be on order review page
  When I click on the edit option to edit the sandwich 
  Then I should be on serving option page 
  When I click on save changes after editing
  Then I should  on order review page
  When I click on checkout option
  Then I should be on payment page
  @prestostory
  Scenario: Create the story
    When I goto the presto login page   
  Then I should be on login page
  When I enter credentials to login
  Then I should search page
  When I go to  presto story
  Then the story editor should be opened successfully
  When I fill the short headline field
  Then I should see the correct text  the fields
  When I click on save draft option
  Then the story should be saved as draft
  When I enter the text in the body