*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
User opens the browser and goes the website
    Set Selenium Timeout    5s
    Set Selenium Speed    .5s
    Open Browser    https://automationplayground.com/crm    
    Maximize Browser Window 

User closes the webbrowser
     Close All Browsers