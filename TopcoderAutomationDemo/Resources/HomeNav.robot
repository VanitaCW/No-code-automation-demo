*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
NavBar Visible
    Element Should Be Visible   //div[@class='container max1280']
NavBar Items Visible
    Element Should Be Visible   //*[@id="menu-item-41902"]/a            # How It Works Link
    Element Should Be Visible   //*[@id="menu-item-41320"]/a            # Platform Link
    Element Should Be Visible   //*[@id="menu-item-41349"]/a            # Industries Link
    Element Should Be Visible   //*[@id="menu-item-41332"]/a            # Resources Link
    Element Should Be Visible   //*[@id="menu-item-41364"]/a            # Pricing Link
    Element Should Be Visible   //*[@id="menu-item-41365"]/a            # Book a Demo
    Element Should Be Visible   //a[@id='button_talent_not_logged']     #The Community
    Element Should Be Visible   //a[@id='button_login']                 #Log In
    Element Should Be Visible   //a[@id='button_signup']                #SignUp