*** Settings ***
# Library    SeleniumLibrary
Resource    ../Resources/Variables/global_variables.resource
Resource    ../Resources/Keywords/global_keywords.robot
Resource    ../Resources/PageObjects/dashboard_pageobjects

Suite Setup    Open a Browser

*** Test Cases ***
Login to Ameysim
    Input Text                      ${username_textbox}  ${username}
    Input Text                      ${password_textbox}  ${password}
    Click Button                    ${login_button}
    Sleep   5s
    Element Should Be Visible       ${logout_link}

User should be able to View Account Details