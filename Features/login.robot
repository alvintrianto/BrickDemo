*** Settings ***
Documentation                                      Login Feature
Library                                            SeleniumLibrary
Resource                                           ../Utils/browser.robot
Variables                                          ../Pages/LoginPage.yaml
Variables                                          ../Pages/RegisterPage.yaml

***Keywords***
User Open Login Dashboard
    Click element                                   ${loginLink}

User Login
    [Arguments]                                     ${username}     ${password}
    Input text                                      ${loginEmailField}  ${username}
    Input text                                      ${loginPasswordField}  ${password}
    Click element                                   ${loginButton}

Validate Login
    Wait until page contains                        Success
    Wait until page contains                        Welcome Back, The Genesis Skull!
    Click element                                   ${ConfirmLoginModalButton}

***Test Cases***
Success Login 
    Open Brick Register Dashboard 
    User Open Login Dashboard
    User Login                              bqnDqtMF@gmail.com  123513
    Validate Login  
    Closing Browser