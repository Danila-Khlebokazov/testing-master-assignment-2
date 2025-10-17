*** Settings ***
Library    SeleniumLibrary
Resource   locators.robot
Resource   variables.robot

*** Keywords ***
Open DemoBlaze
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Close DemoBlaze
    Close Browser

Sign Up New User
    ${time}=    Get Time    epoch
    Click Element    ${SIGNUP_BTN}
    Sleep    1s
    Input Text    ${SIGNUP_USERNAME}    testuser${time}
    Input Text    ${SIGNUP_PASSWORD}    testpass
    Click Button   ${SIGNUP_SUBMIT}
    Handle Alert   ACCEPT

Log In User
    Click Element    ${LOGIN_BTN}
    Sleep    1s
    Input Text    ${LOGIN_USERNAME}    ${USERNAME}
    Input Text    ${LOGIN_PASSWORD}    ${PASSWORD}
    Click Button   ${LOGIN_SUBMIT}
    Sleep    2s

Log Out User
    Click Element    ${LOGOUT_BTN}
    Sleep    1s

Buy Product
    Click Element    ${PRODUCT_FIRST}
    Sleep    2s
    Click Element    ${ADD_TO_CART}
    Handle Alert   ACCEPT
    Click Element    ${CART_LINK}
    Sleep    1s
    Click Element    ${PLACE_ORDER}
    Wait Until Element Is Visible   ${FILL_NAME_ID}   timeout=10s
    Input Text    ${FILL_NAME_ID}    ${FILL_NAME}
    Input Text    ${FILL_COUNTRY_ID}    ${FILL_COUNTRY}
    Input Text    ${FILL_CITY_ID}    ${FILL_CITY}
    Input Text    ${FILL_CARD_ID}    ${FILL_CARD}
    Input Text    ${FILL_MONTH_ID}    12
    Input Text    ${FILL_YEAR_ID}    2025
    Click Button    ${PURCHASE_BTN}
    Sleep    2s

Contact Us
    Click Element    ${CONTACT_BTN}
    Wait Until Element Is Visible   ${CONTACT_RECIPIENT_EMAIL_ID}   timeout=10s
    Input Text    ${CONTACT_RECIPIENT_EMAIL_ID}    ${FILL_EMAIL}
    Input Text    ${CONTACT_RECIPIENT_NAME_ID}    ${FILL_NAME}
    Input Text    ${CONTACT_MESSAGE_TEXT_ID}    ${CONTACT_MESSAGE_TEXT}
    Click Button    ${CONTACT_SEND_BTN}
    Alert Should Be Present    Thanks for the message!!     action=ACCEPT     timeout=5s

Category Filter
    Click Element   ${CATEGORY_LAPTOPS}
    Wait Until Page Contains Element    ${LAPTOP_PRODUCT}    timeout=5s
    Page Should Contain Element    ${LAPTOP_PRODUCT}
    Page Should Not Contain Element    ${NOT_LAPTOP_PRODUCT}
    Sleep    1s