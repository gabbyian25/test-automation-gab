*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Variables/global_variables.resource
Resource    ../Resources/Keywords/global_keywords.robot
Resource    ../Resources/PageObjects/dashboard_pageobjects.resource
Resource    ../Resources/PageObjects/account_pageobjects.resource

Suite Setup    Open a Browser

*** Test Cases ***
Login to Ameysim
    [Documentation]     This is the Keyword for Logging in to Ameysim
    Input Text                          ${username_textbox}  ${username}
    Input Text                          ${password_textbox}  ${password}
    Click Button                        ${login_button}
    Sleep                               5s
    Element Should Be Visible           ${logout_link}


User should be able to go to Refer a Friend
    [Documentation]     This covers how User goes to Refer a Friend
    Wait Until Element Is Visible       ${restartPlan_link}     timeout=30s
    Click Element                       ${restartPlan_link}
    Wait Until Location Is not          ${url}                  timeout=30s
    Wait Until Element Is Visible       ${referAFriend_Link}    timeout=30s
    Click Element                       ${referAFriend_Link}
    Wait Until Element is not Visible   ${loading_logo}         timeout=30s
    Sleep                               30s
    Select Frame                        ${referAFriend_window}
    Sleep                               20s
    Input Text                          ${referAFriend_email}               ${referAFriend_email_value}
    Clear Element Text                  ${referAFriend_message_textArea}
    Input Text                          ${referAFriend_message_textArea}    ${referAFriend_message_value}
    Click Button                        ${referAFriend_Share_button}
    Sleep                               5s
    Element Text Should Be              ${referAFriend_ThankYouMessage}     ${referAFriend_ThankYouMessage_value}
    Unselect Frame

User should be able to View Plan Details
    [Documentation]     This covers how the User goes to Plan Details
    Element Should Be Visible           ${managePlan_link}
    Click Element                       ${managePlan_link}
    Wait Until Location Is              ${managePlan_url}
    Wait Until Element Is Visible       ${managePlan_Heading}     timeout=30s
    Element Should Be Visible           ${managePlan_Heading}
    Element Should Be Visible           ${planDetails}
    Element Should Be Visible           ${restartYourPlan_Button}
    Element Should Be Visible           ${changePlan_Button}

User should be able to View Usage History and Select "Yesterday" as Time timePeriod_Value
    [Documentation]     This covers how User goes to Usage History and select a time period. This also covers editing the Time period and selecting another time period.
    Element Should Be Visible           ${usageHistory_link}
    Click Element                       ${usageHistory_link}
    Wait Until Location Is              ${usageHistory_url}
    Wait Until Element Is Visible       ${selectATimePeriod_Dropdown}   timeout=30s
    Element Should Be Visible           ${selectATimePeriod_Dropdown}
    Select From List By Value           ${selectATimePeriod_Dropdown}   ${timePeriod_Value}
    Click Element                       ${search_Button}
    Wait Until Element is not Visible   ${loading_logo}     timeout=30s
    Wait Until Element Is Visible       ${searchResult_locator}
    Element Text Should Be              ${searchResult_locator}     expected=${searchResult_text}
    Click Element                       ${edit_Button}
    Wait Until Element Is Visible       ${selectATimePeriod_Dropdown}
    Select From List By Value           ${selectATimePeriod_Dropdown}   ${timePeriod_Value2}
    Click Element                       ${search_Button}
    Wait Until Element is not Visible   ${loading_logo}     timeout=30s
    Wait Until Element Is Visible       ${searchResult_locator}
    Element Text Should Be              ${searchResult_locator}     expected=${searchResult_text}


User should be able to go to Settings
    [Documentation]     This covers how the User goes to Settings Section. Unfortunately this is having a problem. I just handle the Authenticatio Window
    Element Should Be Visible           ${personalDetails_Section}
    Click Element                       ${personalDetails_Section}
    Wait Until Location Is              ${personalDetails_url}
    Wait Until Element is not Visible   ${loading_logo}     timeout=30s
    Handle Authentication Window

User should be able to Go back to dashboard
    [Documentation]     This covers how the User goes back to My Dashboard.
    Element Should Be Visible           ${myDashboard_link}
    Click Element                       ${myDashboard_link}
    Wait Until Location Is              ${url}
    Element Should Be Visible           ${account_link}


User should be able to Logout
    [Documentation]     This covers how the User logs out to Ameysim
    Element Should Be Visible           ${logout_link}
    Click Element                       ${logout_link}
    Wait Until Element Is Visible       ${username_textbox}
    Close All Browsers