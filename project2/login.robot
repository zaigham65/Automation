*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Login Facebook
    Open Browser    http://www.facebook.com    chrome
    Wait Until Page Contains    Log In
    Input Text    email    zaigham227440@gmail.com
    Input Password    pass    mmiissuu
	Click Button    Log In
    Wait Until Page Contains    facebook
