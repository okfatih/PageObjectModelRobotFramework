*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
Open my Browser
      [Arguments]    ${SiteUrl}   ${Browser}
     open browser    ${SiteUrl}     ${Browser}
     maximize browser window
Click Register Link
    click link    ${link_Reg}
Enter FirstName
    [Arguments]    ${firstName}
    input text    ${txt_firstName}    ${firstName}
Enter LastName
    [Arguments]    ${lastName}
    input text    ${txt_lastName}     ${lastName}
Enter PhoneNumber
    [Arguments]    ${phoneNumber}
    input text    ${text_phone}    ${phoneNumber}
Enter Email
    [Arguments]    ${email}
    input text    ${txt_email}
Enter Address
    [Arguments]    ${address1}
    input text       ${txt_add1}
Enter city
    [Arguments]    ${city}
    input text    ${txt_city}    ${city}

Enter state
    [Arguments]    ${state}
    input text    ${txt_state}     ${state}
Enter postcode
    [Arguments]    ${postCode}
    input text    ${txt_postcode}    ${postCode}

Select Country
    [Arguments]     ${country}
    select from list by label    ${drp_country}     ${country}
Enter Password
    [Arguments]     ${password}
    input text    ${txt_password}       ${password}
Enter Confirmed Password

Click submit
    click button    ${btn_submit}
Verify successful Registration
    page should contain    Thank you for registering






