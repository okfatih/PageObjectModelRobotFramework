*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
Open my Browser
      [Arguments]    ${SiteUrl}   ${Browser}
     open browser    ${SiteUrl}     ${Browser}
     maximize browser window

Enter UserName
    [Arguments]    ${username}
    input text    ${txt_loginusername}       ${username}
Enter Password
    [Arguments]    ${password}
    input text     ${txt_loginpassword}       ${password}
Cookie kabul et
    click element    xpath://input[@name='submit']
Click SignIn
    click button    ${btn_signin}

Verify Successful Login
    title should be     Find a Flight: Mercury Tours:
close my browsers
    close all browsers
