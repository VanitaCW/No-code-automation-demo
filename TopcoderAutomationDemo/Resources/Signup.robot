*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Signup_URL}    https://www.topcoder.com/user-selection/
${First_Name}    Chucky
${Last_Name}     Cheestman
${Email_Address}    chuckycheester@xyz.com
${New_Handle}        Vtester
${Checkbox_XPath}     //span[@class='auth0-lock-sign-up-terms-agreement']//input[@value='on']

*** Keywords ***
Invalid Topcoder Handle
    Click Element   //a[@id='button_signup']
    Wait Until Page Contains    JOIN TOPCODER
    Location Should Be     ${Signup_URL}
    Click Element   //a[contains(text(),'I’M THE TALENT')]
    Input Text      //input[@id='1-firstName']  ${First_Name}
    Input Text      //input[@id='1-lastName']   ${Last_Name}
    Input Text      //input[@id='1-email']      ${Email_Address}
    Input Text      //input[@placeholder='Create a Username / Handle']  ${New_Handle}
    Input Password      //input[@placeholder='Create a Password']   ${Password}
    Double Click Element   //input[@id='1-country']
    Click Element   ${Checkbox_XPath}
    Checkbox Should Be Selected     ${Checkbox_XPath}
    Click Element   //button[@name='submit']
    Page Should Contain     The user already exists