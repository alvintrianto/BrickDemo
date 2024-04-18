*** Settings ***
Library                                            SeleniumLibrary
Variables                                          ../Pages/Environment.yaml

*** Keywords ***
Open Brick Register Dashboard
    Open browser                                    ${url}    ${browser}
    Wait until page contains                        Sign Up
Closing Browser
    Close browser