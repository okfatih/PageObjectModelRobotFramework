*** Settings ***
Documentation    This is some basic info about the whole suite
Resource     C:\development\robot-scripts\KEY-WORD.demo\Resources\Automation.Gui.robot    
Resource     C:\development\robot-scripts\KEY-WORD.demo\Resources\Common.robot




***Test Cases ***
Adding new user
        [Documentation]    Sample test case with Keywords
        [Tags]    Smoke
        User opens the browser and goes the website
        Automation.Gui.User clicks on sign in button and enters his credentials
        Automation.Gui.User adds a new customer
        Automation.Gui.User verifies that a new customer has been added
        User closes the webbrowser


    

