***Variables***

${loading_logo}                             //div[@class='loading-spinner']

### MAIN SECTIONS ON ACCOUNT ###
${plan_Section}                             //a[@href='/my-account/my-amaysim/dashboards']
${payments_Section}                         //a[@href='/my-account/my-amaysim/invoices']
${settings_Section}                         //a[@href='/my-account/my-amaysim/settings']
${mobileHelp_Section}                       //span[normalize-space()='Mobile help']
${myDashboard_link}                         //a[text()='My dashboard']

# PLAN #
${managePlan_link}                          //a[text()='Manage plan']
${usageHistory_link}                        //a[text()='Usage history'] 
${rechargeVoucher_link}                     //a[text()='Recharge voucher'] 

    ### MANAGE PLAN ###
${managePlan_Heading}                       //div[@class='ama-page-header']
${restartYourPlan_Button}                   //div[@id='renew_plan_cta_section']/div/div[3]/a
${changePlan_Button}                        //a[@id='change_plan_btn']
${planDetails}                              //div[@class='row']//div[@class='small-12 medium-5 columns']

    ### USAGE HISTORY ###
${usageHistory_Heading}                     //div[@class='ama-page-header']
${selectATimePeriod_Dropdown}               //select[@id='my_amaysim2_usage_filter_search_type']
${timePeriod_Value}                         yesterday
${timePeriod_Value2}                        last_7_days
${search_Button}                            //input[@name='commit']
${edit_Button}                              //a[@id='refine_search_link']
${searchResult_locator}                     //div[@class='small-12 columns grey']               
${searchResult_text}                        There are no results found. Please refine your search and try again.               

    ### RECHARGE VOUCHER ###
${rechargeVoucher_Heading}                  //div[@class='ama-page-header']

# PAYMENTS #
${paymentmethod_link}                       //a[text()='Payment method']

    ### PAYMENT METHOD ###
${Change_Link}                              //a[@class='edit_payment_btn grey']                   



# SETTINGS #
${authenticationPopup_window}               //iframe[@id='authorization-options-iframe']
${authenticationPopup_closeBtn}             #
${mfa_CancelYesBtn}                         //button[@id='cancelMfaYes']
${exitAuthentication_window}                //iframe[@id='authorization-options-iframe']
${exitAuthentication_yes}                   Yes

    ### PERSONAL DETAILS ###
${personalDetails_Section}                  //a[text()='Personal details']

    ### REFER A FRIEND  ###
${referAFriend_window}                      //iframe[@title='Powered By Friendbuy']
${referAFriend_email}                       //input[@id='a']
${referAFriend_email_value}                 test@email.com
${referAFriend_Link}                        //a[text()='Refer a friend']
${referAFriend_Share_button}                //button[@id='c']
${referAFriend_message_textArea}            //textarea[@id='b']
${referAFriend_message_value}               This is Gabriel Ian Jose. This is a Automation Test.
${referAFriend_ThankYouMessage}             //div[@id='H']
${referAFriend_ThankYouMessage_value}       THANKS FOR SHARING THE BIG LOVE