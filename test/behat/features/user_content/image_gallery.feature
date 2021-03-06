@javascript @core
Feature:

Background:
  Given the following "users" exist:
  | username | password | email | firstname | lastname | institution | authname | role |
  | UserA | Kupuh1pa! | UserA@example.org | Angela | User | mahara | internal | member |

  And the following "pages" exist:
  | title | description | ownertype | ownername |
  | Page UserA_01 | Page 01 | user | UserA |

Scenario:
  Given I log in as "UserA" with password "Kupuh1pa!"
  When I choose "Files" in "Content" from main menu
  And I fill in "Folder1" for "files_filebrowser_createfolder_name"
  And I press "Create folder"
  And I follow "Folder1"
  And I attach the file "Image1.jpg" to "File"
  And I attach the file "Image2.png" to "File"
  And I attach the file "Image3.png" to "File"
  # Creating folder 1
  Given I choose "Pages and collections" in "Portfolio" from main menu
  And I click on "Edit" in "Page UserA_01" panel menu
  And I expand "Media" node
  And I follow "Image gallery"
  And I press "Add"
  And I select the radio "Image selection: Display all images from a folder including images uploaded later"
  And I click on the "Select" property
  And I select the radio "Style: Thumbnails (square)"
  And I press "Save"
  And I display the page
  Then I should see images within the block "Image gallery"
