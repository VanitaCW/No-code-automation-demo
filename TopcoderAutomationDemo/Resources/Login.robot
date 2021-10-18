*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Login_URL}    https://auth.topcoder.com/login?
${TC_Handle}    ChuckyCheestman
${Password}     Chessemaster9

*** Keywords ***
Invalid Username or Password
    Click Element   //a[@id='button_login']
    Wait Until Page Contains    Topcoder Login
    Location Should Contain      ${Login_URL}
    Input Text      //input[@placeholder='Username / Handle']   ${TC_Handle}
    Input Text      //input[@placeholder='Password']    ${Password}
    Click Element   //button[@name='submit']
    Page Should Contain     Wrong username or password