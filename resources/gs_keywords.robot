#gs_keywords.robot
*** Settings ***
Library    SeleniumLibrary
Resource   gs_variables.robot
Resource   gs_locators.robot

*** Keywords ***
Open Application
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys

    Call Method    ${chrome_options}    add_argument    --disable-notifications

    ${prefs}=    Create Dictionary
    ...    credentials_enable_service=${False}
    ...    profile.password_manager_enabled=${False}
    ...    profile.password_manager_leak_detection=${False}

    Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}

    Open Browser    ${URL}    chrome    options=${chrome_options}

    Maximize Browser Window

Login To Application
    Wait Until Element Is Visible    ${USERNAME_INPUT}
    Input Text    ${USERNAME_INPUT}    ${USERNAME}
    Input Text    ${PASSWORD_INPUT}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}

Validate Successful Login
    Wait Until Element Is Visible    ${PRODUCTS_TITLE}
    Element Should Be Visible    ${PRODUCTS_TITLE}

Add Product To Cart
    Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON}
    Click Button    ${ADD_TO_CART_BUTTON}

Open Cart
    Click Element    ${CART_ICON}

Validate Product In Cart
    Wait Until Element Is Visible    ${CART_ITEM}
    Element Should Be Visible    ${CART_ITEM}

Checkout Product In Cart
    Wait Until Element Is Visible    ${CART_ITEM}
    Element Should Be Visible    ${CART_ITEM}
    Wait until element is visible    ${CART_CHECKOUT}

    Click element    ${CART_CHECKOUT}
    Input Text    ${FIRST_NAME_INPUT}    ${FIRSTNAME}
    Input text    ${LAST_NAME_INPUT}     ${LASTNAME}
    Input text    ${ZIP_CODE_INPUT}      ${ZIPCODE}
    Click element    ${CONTINUE}
    Click element    ${FINISH}
    Wait until element is visible   ${ORDER_COMPLETE}
    Element Should Be Visible       ${ORDER_COMPLETE}


Logout From Application
    Click Button    ${MENU_BUTTON}
    Wait Until Element Is Visible    ${LOGOUT_LINK}
    Click Element    ${LOGOUT_LINK}