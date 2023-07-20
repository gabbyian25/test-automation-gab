*** Settings ***
Library  SeleniumLibrary
Resource  ../Variables/global_variables.resource
Resource  ../PageObjects/login_pageobjects.resource
Resource  ../PageObjects/dashboard_pageobjects.resource


*** Keywords ***
Open a Browser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Wait Until Element is Visible    ${username_textbox}