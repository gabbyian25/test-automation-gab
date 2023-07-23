*** Settings ***
Library  SeleniumLibrary
Resource  ../Variables/global_variables.resource
Resource  ../PageObjects/login_pageobjects.resource
Resource  ../PageObjects/dashboard_pageobjects.resource


*** Keywords ***
Open a Browser
    Open Browser    ${url}  ${browser}  options=add_experimental_option("detach", True)
    Maximize Browser Window
    Wait Until Element is Visible    ${username_textbox}

Handle Authentication Window
    Select Frame                    ${authenticationPopup_window}
    Sleep                           5s
    Click Link                      ${authenticationPopup_closeBtn}
    Unselect Frame
    Select Frame                    ${exitAuthentication_window}
    Click Button                    ${exitAuthentication_yes}
    Unselect Frame
    Sleep                           5s