#demo_sauce.robot
*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/gs_keywords.robot
Resource   ../resources/gs_variables.robot

#venv\Scripts\activate
#robot -d "results/$(Get-Date -Format 'yyyyMMdd_HHmm')" tests/demo_sauce.robot

Suite Setup       Open Application
Suite Teardown    Close Browser

*** Test Cases ***
Validate Successful Login
    [Tags]    smoke
    Login To Application
    Validate Successful Login


Validate Add Product To Cart and Checkout
    [Tags]    regression
#    Login To Application
    Add Product To Cart
    Open Cart
    Validate Product In Cart
    Checkout Product In Cart

Validate Logout Functionality
    [Tags]    regression
#    Login To Application
    Logout From Application