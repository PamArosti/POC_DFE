*** Keywords ***
#### DADO
Que faça login no smartDFE utilizando a licença 9999
    Acessar aplicação

#### E
clicar na opção consultas -> Consulta NFS-e Próprias
    Clique no menu e selecione consultas->consulta nfse 

#### QUANDO
Pesquisar por um NFS-e própria pelo numero "${BUSCA}"
    Pesquisar a nota pelo numero "${BUSCA}"

    
#### ENTÃO
Eu posso verificar o status da NFS-e é ${STATUS}
    Verificar resultado da pesquisa ${STATUS}


#### PASSOS    
Acessar aplicação
    Open Browser    ${URL}  ${BROWSER}
    input text  name=frmNFE_Login2:usuario  fit@9999
    input text  name=frmNFE_Login2:senha  FIT2013**
    click button  id=frmNFE_Login2:btnLogin
    Wait Until Element Is Visible   ${CABECALHO}
    Title Should Be     FIT DF-e | FIT Sistemas 

Clique no menu e selecione consultas->consulta nfse 
    Click Element   ${OPCOES_MENU}
    Wait Until Element Is Visible    xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_109pc5']    timeout=10s
    Click Element     xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_109pc5'] 

Pesquisar a nota pelo numero "${BUSCA}"
    Input Text      ${CAMPO_PESQUISAR_NFSE}    ${BUSCA}
    Input Text      xpath=//input[@id='frmConsultaNotas:j_id_jsp_1554522894_12InputDate']   24/01/2022
    Click Element   ${BOTAO_PESQUISAR_NFSE}
    Wait Until Element Is Visible   ${RESULT_NFSE}
    Element Text Should Be   ${RESULT_NFSE}   Autorizado o Uso da NFS-e

Verificar resultado da pesquisa ${STATUS}
    Wait Until Element Is Visible   ${RESULT_NFSE} 
    Element Text Should Be   ${RESULT_NFSE}   ${STATUS}

Fechar Navegador
    Close Browser   