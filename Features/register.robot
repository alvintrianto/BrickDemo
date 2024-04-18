*** Settings ***
Documentation                                      Register Feature
Library                                            SeleniumLibrary
Library                                            String
Resource                                           ../Utils/browser.robot
Variables                                          ../Pages/RegisterPage.yaml

***Keywords***
Input firstname
    [Arguments]                                     ${firstnameText}
    Input text                                      ${firstnameField}  ${firstnameText}

Input lastname
    [Arguments]                                     ${lastNameText}
    Input text                                      ${lastnameField}  ${lastNameText}

Input email
    [Arguments]                                     ${emailText}
    Input text                                      ${emailField}  ${emailText}

Input phonenumber
    [Arguments]                                     ${phoneNumberText}
    Input text                                      ${phoneNumberField}  ${phoneNumberText}

Input address
    [Arguments]                                     ${addressText}
    Input text                                      ${addressField}  ${addressText}

Input password
    [Arguments]                                     ${passwordText}
    Input text                                      ${passwordField}  ${passwordText}

Input confirm password
    [Arguments]                                     ${confirmPasswordText}
    Input text                                      ${confirmPasswordField}  ${confirmPasswordText}

Click register button
    Click element                                   ${registerButton}  

User Input Valid Registration Data
    [Arguments]                                     ${email}  ${password}
    Input firstname                                 Ujang
    Input lastname                                  Testing
    Input email                                     ${email}@gmail.com
    Input phonenumber                               81353153
    Input address                                   Jl Kenangan
    Input password                                  ${password}
    Input confirm password                          ${password}
    Click register button
    Wait until page contains                        Success
    Wait until page contains                        Check your email to confirm your registration
    Click element                                   ${ConfirmRegistModalButton}

***Test Cases***
User success register
    Open Brick Register Dashboard 
    ${email} =  Generate Random String  8  [LETTERS]
    ${password} =  Generate Random String  8  [NUMBERS]
    User Input Valid Registration Data      ${email}   ${password}
    Closing Browser