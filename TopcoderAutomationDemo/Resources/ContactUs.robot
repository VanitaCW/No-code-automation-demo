*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Contact_URL}      https://go.topcoder.com/contact/

*** Keywords ***
Contact Form Displays
    Execute Javascript      window.scrollTo(0, document.body.scrollHeight)
    Click Element   //a[normalize-space()='Contact Us']
    Location Should Be      ${Contact_URL}
    Execute Javascript      history.back()