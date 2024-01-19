*** Settings ***
Library     SeleniumLibrary
*** Keywords ***


User clicks on sign in button and enters his credentials
    Wait Until Page Contains    Customers Are Priority One
    Click Link    Sign In
    Input Text    id=email-id    admin@robotframeworktutorial.com
    Input Password    id=password    $ecret!
    Click Button    Submit

User adds a new customer
    Wait Until Page Contains    Our Happy Customers
    Click Link    id=new-customer    
    Input Text    id=EmailAddress    fatih_ok4@hotmail.com

    Input Text    id=FirstName       Fatih
    Input Text    id=LastName        Scarborough
    Input Text    id=City            Delft
    select From List By Value    id=StateOrRegion    AL
    select Radio Button    gender    male
    select Checkbox    promos-name
    Click Button    Submit
User verifies that a new customer has been added
     Wait Until Page Contains    Success! New customer added.
     sleep     3s

