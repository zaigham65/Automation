*** Settings ***
Library           SeleniumLibrary
Resource          ../../Resources/login.robot

*** Test Cases ***
tc1
    Open Browser    http://www.facebook.com    chrome
    Wait Until Page Contains    Log In
    Maximize Browser Window
    Input Text    xpath=//*[@name="firstname"]    abbas
    Input Text    xpath=//*[@name="lastname"]    zaigham
    Input Text    xpath=//*[@name="reg_email__"]    zaigh@gmail.com
    Input Password    xpath=//*[@name="reg_passwd__"]    mmiissuuu
    Select From List by Value    xpath=//select[@id="month"]    3
    Select From List by Value    xpath=//*[@id="day"]    3
    Select From List by Value    xpath=//*[@id="year"]    1985
    Click Element    xpath=//*[@name='sex' and @value=2]

tc2
    Open browser    http://blazedemo.com/    Chrome
    Select From List By Value    xpath://select[@name='fromPort']    Paris
    Select From List by Value    xpath://select[@name='toPort']    London
    Click Button    css:input[type='submit']
    @{flights}=    Get WebElements    css:table[class='table']>tbody tr
    Should Not Be Empty    ${flights}

tc3
    Open Browser    http://www.facebook.com    chrome
    Wait Until Page Contains    Log In
    Input Text    email    zaigham227440@gmail.com
    Input Password    pass    mmiissuu
    Click Button    Log In
    Wait Until Page Contains    zaigham abbas

tc4
    login.Login Facebook

tc5
    Open Browser    http://www.facebook.com    chrome
    Wait Until Page Contains    Log In
    Input Text    email    zaigham227440@gmail.com
    Input Password    pass    kkkjhhggf
    Click Button    Log In
    Wait Until Page Contains    zaigham abbas
