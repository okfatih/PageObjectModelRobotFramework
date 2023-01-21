*** Settings ***
Library     SeleniumLibrary
Resource     ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://demo.guru99.com/test/newtours/
${user}     tutorial
${pass}     tutorial

*** Test Cases ***
Login Test
#Bu test case hata verdi Cookies handle etmek lazım
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter UserName     ${user}

    Enter Password     ${pass}

    Click SignIn
    sleep    1
    Verify Successful Login
