*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Contact_URL}      https://go.topcoder.com/contact/


*** Keywords ***
View Challenges
    Click Element   //a[@id='button_talent_not_logged']
    Location Should Be      https://www.topcoder.com/community/learn
    Click Element   //a[normalize-space()='FIND A CHALLENGE']
    Switch Window   title:Topcoder Challenge Listings | Topcoder Community | Topcoder
    Location Should Contain      https://www.topcoder.com/challenges
