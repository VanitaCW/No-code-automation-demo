*** Settings ***
Documentation   This is a demo project to practice the basic concepts of Robot Framework without writing any code.
...             Precondition -- User not logged in.
Library     SeleniumLibrary
Resource    ../Resources/common.robot
Resource    ../Resources/homenav.robot
Resource    ../Resources/contactus.robot
Resource    ../Resources/listchallenges.robot
Resource    ../Resources/login.robot
Resource    ../Resources/signup.robot
Test Setup  Begin Web Test
Test Teardown   End Web Test

*** Variables ***
${BROWSER}      chrome
${URL}      https://www.topcoder.com

*** Test Cases ***
NavBar and NavBar Items Present
    NavBar Visible
    NavBar Items Visible
Contact Us Form
    Contact Form Displays
Open Challenge Listing Page
    View Challenges
Invalid Username or Password
    Invalid Username or Password
Invalid Signup
    Invalid Topcoder Handle

