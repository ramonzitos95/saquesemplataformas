*** Settings ***
Library           SeleniumLibrary
Documentation     Desenvolvido para trabalhar automaticamente no Qoo
...               Feito por Ramon  
#Resource          resource.robot

*** Variables ***
${url}                  https://www.qoo10999.com/#/
${user}                 ramonzitos95
${pw}                   Rss1995
${code}                 3322
${input_user}           xpath://html/body/div[1]/div[2]/div[3]/div[2]/div[1]/div/div[1]/div[2]/input
${input_pw}             xpath://html/body/div[1]/div[2]/div[3]/div[2]/div[1]/div/div[2]/div[2]/input
${input_code}           xpath://html/body/div[1]/div[2]/div[3]/div[2]/div[1]/div/div[3]/div[2]/input
${btn_login}            xpath://html/body/div[1]/div[2]/div[3]/div[2]/div[2]/button

*** Test Cases ***
Bater Ponto
    open browser   ${url}  firefox
    Sleep  5s
    Wait Until Element Is Visible   ${input_user}
    Input Text                      ${input_user}      ${user}     
    Wait Until Element Is Visible   ${input_pw}
    Input Text                      ${input_pw}        ${pw}     
    Wait Until Element Is Visible   ${input_code}
    Sleep  5s
    # Input Text                      ${input_code}      ${code}     
    # Click Element                   ${btn_login}
    Wait Until Element Is Visible   ${btn_login}
    Click Element                   ${btn_login}

    
    Sleep  30s
    # Input Password    mode
    # Submit Credentials
    # Welcome Page Should Be Open
    close browser

#***Keywords***
