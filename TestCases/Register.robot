*** Settings ***
Library     SeleniumLibrary
Resource     ../Resources/RegisterKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://demo.guru99.com/test/newtours/
${firstName}    Fatih

*** Test Cases ***
Registration Test
    Open my Browser        ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName     Fatih
    Enter LastName      Otkan
    Enter PhoneNumber    123445668
    Enter Email         xyz@hotmail.com
