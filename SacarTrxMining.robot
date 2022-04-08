*** Settings ***
Library           SeleniumLibrary
Documentation     Desenvolvido para sacar automaticamente trx na trx mining
...               Feito por Ramon  
#Resource          resource.robot

*** Variables ***
${url}                  https://www.trxmining.co/#/login 
${user}                 47996821589
${pw}                   Ramon@@1995
${botao_login}    xpath://*[@id="app"]/main/div[2]/div[3]/div[4]/a/div
${valorSacar}     2.97

*** Test Cases ***
Bater Ponto
    open browser   ${url}  firefox
    Sleep  5s
    Input Text    xpath://*[@id="app"]/main/div[2]/div[3]/div[1]/input      ${user}     
    Input Text    xpath://*[@id="app"]/main/div[2]/div[3]/div[2]/input      ${pw}
    Sleep  5s
    Click Element  xpath://html/body/div/main/div[2]/div[3]/div[3]/img[1]
    Wait Until Element Is Visible   ${botao_login}
    Click Element   ${botao_login}
    Sleep  5s
    Click Element  id=iKnow
    Click Element  xpath://*[@id="app"]/main/div[3]/div[1]/div[2]/ul/li[2]/a/img
    Sleep  5s
    Wait Until Element Is Visible  xpath://*[@id="app"]/main/div[3]/div[1]/div[1]/div[3]/input
    Input Text  xpath://*[@id="app"]/main/div[3]/div[1]/div[1]/div[3]/input  ${valorSacar}
    Wait Until Element Is Visible  xpath://*[@id="app"]/main/div[3]/div[1]/div[1]/div[5]/input
    Input Text  xpath://*[@id="app"]/main/div[3]/div[1]/div[1]/div[5]/input  ${pw}  
    Click Element  xpath://*[@id="app"]/main/div[3]/div[1]/div[2]/button
    Sleep  10s
    # Input Password    mode
    # Submit Credentials
    # Welcome Page Should Be Open
    close browser

#***Keywords***
