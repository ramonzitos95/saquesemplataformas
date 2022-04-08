*** Settings ***
Library           SeleniumLibrary
Documentation     Desenvolvido para sacar automaticamente trx na trx mining
...               Feito por Ramon  
#Resource          resource.robot

*** Variables ***
${url}                  https://trx.academy/mobile/login.html
${user}                 47996821589
${pw}                   Ramon@@1995
${botao_login}    id:denglu
${valorSacar}     1.35

*** Test Cases ***
Bater Ponto
    open browser   ${url}  firefox
    Sleep  5s
    Input Text    xpath://*[@id="app"]/main/div/div/div/div[1]/input      ${user}     
    Input Text    xpath://*[@id="app"]/main/div/div/div/div[2]/input     ${pw}
    Sleep  5s
    Click Element  xpath://*[@id="app"]/main/div/div/div/div[3]/div
    Wait Until Element Is Visible   ${botao_login}
    Click Element   ${botao_login}
    Sleep  20s
    Wait Until Element Is Visible  xpath://*[@id="app"]/main/div[2]/div[1]/div/div/a[2]/span/span[1]
    Click Element  xpath://*[@id="app"]/main/div[2]/div[1]/div/div/a[2]/span/span[1]

//Valor a sacar input
    Wait Until Element Is Visible  xpath://*[@id="app"]/main/div[2]/div/div[1]/div[3]/input
    Input Text                     xpath://*[@id="app"]/main/div[2]/div/div[1]/div[3]/input  ${valorSacar}

//Endereço do trc20
    Wait Until Element Is Visible  id:address
    Input Text                     id:address  TMSZzDEykhEXE1sKUNw3zStjEV1C84LsPJ

//Senha de saque
    Wait Until Element Is Visible  xpath://*[@id="app"]/main/div[2]/div/div[1]/div[5]/input
    Input Text                     xpath://*[@id="app"]/main/div[2]/div/div[1]/div[5]/input  ${pw}

//Botão de confirmar saque
    Wait Until Element Is Visible  xpath://*[@id="app"]/main/div[2]/div/div[2]/button
    Click Element                  xpath://*[@id="app"]/main/div[2]/div/div[2]/button

    
    Sleep  10s
    # Input Password    mode
    # Submit Credentials
    # Welcome Page Should Be Open
    close browser

#***Keywords***
