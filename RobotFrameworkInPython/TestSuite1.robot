*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://google.com
${FIREFOX}        /Selenium_Jar/Python/geckodriver
${CHROME}         /Selenium_Jar/Python/chromedriver
  


*** Test Cases ***
MyFirstTest
    Log       Hello World
    
TC_001 Open Chrome Browser
    Create Webdriver    Chrome    executable_path=${CHROME}
    Go To    ${LOGIN URL}
    Set Browser Implicit Wait    5
    Input Text    name=q    Aman Singh
    Press Keys    name=q    ENTER
    #Click Button    name=btnK 
    Sleep    5     
    Close Browser
    Log    Test Completed
    

TC_002 Open Firefox Browser
    Create Webdriver    Firefox    executable_path=${FIREFOX}
    Go To    ${LOGIN URL}
    Set Browser Implicit Wait    5
    Input Text    name=q    Aman Singh
    Press Keys    name=q    ENTER 
    Sleep    5    
    Close Browser
    Log    Test Completed
    #Create Webdriver    webdriver.chrome.driver    ${Geckodriver}
    #Open Browser    https://google.com     ${CHROME}
    #Close Browser
    





*** Keywords ***