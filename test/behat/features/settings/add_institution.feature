@javascript @core @core_institution @core_administration
Feature: Create an Institution
   In order to create an institution
   As an admin I need to go Administration
   So I can add an institution

Scenario: Creating an institution (selenium test)
    # Log in as "Admin" user
    Given I log in as "admin" with password "Kupuh1pa!"

    # Creating an Institution
    And I choose "Settings" in "Institutions" from administration menu
    And I press "Add institution"
    And I fill in the following:
    | Institution name | Institution One |
    And I press "Submit"
    # Verifying the institution has been created
    Then I should see "Institution added successfully"

    # Adding some authentication options
    And I select "webservice" from "dummySelect"
    And I scroll to the base of id "dummySelect"
    And I press "Add"
    And I press "Submit"

    # Moving authentication option
    And I click on "Edit" in "Institution One" row
    And I scroll to the base of id "dummySelect"
    And I follow "Move up"

    # Removing the first authentication option
    And I click on "Delete" in "Web services" row

    # Adding an institution logo
    And I attach the file "Image2.png" to "Logo"
    And I press "Submit"

    # Delete the institution
    And I click on "Delete" in "Institution One" row
    And I press "Yes"
    Then I should see "Institution deleted successfully"
