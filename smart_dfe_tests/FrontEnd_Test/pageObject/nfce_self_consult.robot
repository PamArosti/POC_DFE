*** Keywords ***
#### DADO
Que faça login no smartDFE utilizando a licença 9999
    Acessar aplicação

#### E
clicar na opção consultas -> Consulta NFC-e Próprias
    Clique no menu e selecione consultas->consulta nfe 

#### QUANDO
Pesquisar por uma NFC-e própria pelo numero "${BUSCA}"
    Pesquisar a nota pelo numero "${BUSCA}"

    
#### ENTÃO
Eu posso verificar o status da NFC-e é ${STATUS}
    Verificar resultado da pesquisa ${STATUS}


#### PASSOS    
Acessar aplicação
    Open Browser    ${URL}  ${BROWSER}
    input text  name=frmNFE_Login2:usuario  fit@9999
    input text  name=frmNFE_Login2:senha  FIT2013**
    click button  id=frmNFE_Login2:btnLogin
    Wait Until Element Is Visible   ${CABECALHO}
    Title Should Be     FIT DF-e | FIT Sistemas 

Clique no menu e selecione consultas->consulta nfe 
    Click Element   ${OPCOES_MENU}
    Wait Until Element Is Visible    xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_125pc5']    timeout=10s
    Click Element     xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_125pc5']

Pesquisar a nota pelo numero "${BUSCA}"
    Input Text      ${CAMPO_PESQUISAR_NFCE}    ${BUSCA}
    Input Text      xpath=//input[@id='frmConsultaNotas:j_id_jsp_1146127197_13InputDate']   27/02/2020
    Click Element   ${BOTAO_PESQUISAR}
    Wait Until Element Is Visible   ${RESULT_NFCE}
    Element Text Should Be   ${RESULT_NFCE}   Evento registrado, mas não vinculado a NF-e

Verificar resultado da pesquisa ${STATUS}
    Wait Until Element Is Visible   ${RESULT_NFCE} 
    Element Text Should Be   ${RESULT_NFCE}   ${STATUS}

Fechar Navegador
    Close Browser   