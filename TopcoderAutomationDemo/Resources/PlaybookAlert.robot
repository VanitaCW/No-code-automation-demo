*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Dismiss Playbook Alert
    Set Selenium Implicit Wait  5s
    Press Keys   None   ESC
