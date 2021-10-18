*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/playbookalert.robot

*** Keywords ***
Begin Web Test
    Open Browser   ${URL}  ${BROWSER}
    Maximize Browser Window
    Dismiss Playbook Alert

End Web Test
    Close Browser