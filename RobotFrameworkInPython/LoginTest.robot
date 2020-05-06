*** Settings ***
Library    SeleniumLibrary
Suite Setup     Open Browser and open URL    ${CHROME}    ${LOGINURL}
Suite Teardown  Close All Broswers and write Log  
Test Setup    Log    I am in Test Setup
Test TearDown    Log    I am in Test Teardown
Default Tags   Login

*** Variables ***
${LOGINURL}      https://opensource-demo.orangehrmlive.com/
${FIREFOX}        /Selenium_Jar/Python/geckodriver
${CHROME}         /Selenium_Jar/Python/chromedriver
@{CREDENTIAL}    Admin  admin123 
&{CREDENTIALKV}    user=Admin  password=admin123  
  


*** Test Cases ***
TC_001 Open Chrome Browser and Login to HRM
    [Tags]    Smoke
    Set Browser Implicit Wait    5
    Input Text    name=txtUsername    &{CREDENTIALKV}[user]
    Input Text    txtPassword    &{CREDENTIALKV}[password]
    Click Button    id=btnLogin
    Sleep    5     
    Click Element    id=welcome    
    click Element    link=Logout
    Log    This test was executed by &{CREDENTIALKV}[user].
    
ThisismysecondTest
    [Tags]    Smoke
    Log     I am in Second Test
    Set Tags    Regression1
    Remove Tags    Smoke

This is my Third Test
    [Tags]    Acceptance
    Log     I am in Third Test



*** Keywords ***
Open Browser and open URL      
    [Arguments]        ${BROWSER}      ${URL}    
    Create Webdriver    Chrome    executable_path=${BROWSER}
    Go To    ${URL}
    

Close All Broswers and write Log
    Close All Browsers
    Log    Test Completed