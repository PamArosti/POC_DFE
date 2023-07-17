*** Keywords ***
#### DADO
Que faça login no smartDFE utilizando a licença 9999
    Acessar aplicação

#### E
clicar na opção consultas -> Consulta MDF-e
    Clique no menu e selecione consultas->consulta mdfe 

#### QUANDO
Pesquisar por um MDF-e pelo numero "${BUSCA}"
    Pesquisar a nota pelo numero "${BUSCA}"

    
#### ENTÃO
Eu posso verificar o status da MDF-e é ${STATUS}
    Verificar resultado da pesquisa ${STATUS}


#### PASSOS    
Acessar aplicação
    Open Browser    ${URL}  ${BROWSER}
    input text  name=frmNFE_Login2:usuario  fit@9999
    input text  name=frmNFE_Login2:senha  FIT2013**
    click button  id=frmNFE_Login2:btnLogin
    Wait Until Element Is Visible   ${CABECALHO}
    Title Should Be     FIT DF-e | FIT Sistemas 

Clique no menu e selecione consultas->consulta mdfe 
    Click Element   ${OPCOES_MENU}
    Wait Until Element Is Visible    xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_132pc5']    timeout=10s
    Click Element     xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_132pc5'] 

Pesquisar a nota pelo numero "${BUSCA}"
    Input Text      ${CAMPO_PESQUISAR_MDFE}    ${BUSCA}
    Input Text      xpath=//input[@name='frmConsultaNotas:j_id_jsp_1652083099_24']    ${BUSCA}    
    Click Element   ${BOTAO_PESQUISAR_MDFE}
    #Wait Until Element Is Visible   ${BOTAO_PESQUISAR_MDFE}    timeout=40s
    #Wait Until Element Is Visible   ${RESULT_MDFE}    timeout=10s
    #Element Text Should Be   ${RESULT_MDFE}   Evento registrado e vinculado ao MDF-e(Encerramento)

Verificar resultado da pesquisa ${STATUS}
    Wait Until Element Is Visible   ${RESULT_MDFE} 
    #Element Text Should Be   ${RESULT_MDFE}   ${STATUS}

Fechar Navegador
    Close Browser   