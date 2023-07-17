*** Keywords ***
#### DADO
Que faça login no smartDFE utilizando a licença 9999
    Acessar aplicação

#### E
clicar na opção consultas -> Consulta NF-e Próprias
    Clique no menu e selecione consultas->consulta nfe 

#### QUANDO
Pesquisar por uma NF-e própria pelo numero "${BUSCA}"
    Pesquisar a nota pelo numero "${BUSCA}"

    
#### ENTÃO
Eu posso verificar o status da NF-e é ${Status}
    Verificar resultado da pesquisa ${Status}


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
    Click Element   xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_100pc5']

Pesquisar a nota pelo numero "${BUSCA}"
    Input Text      ${CAMPO_PESQUISAR_NFE}    ${BUSCA}
    Input Text      xpath=//input[@id='frmConsultaNotas:j_id_jsp_1989195815_15InputDate']   17/10/2019
    Click Element   ${BOTAO_PESQUISAR}
    Wait Until Element Is Visible   ${RESULT}
    Element Text Should Be   ${RESULT}   Autorizado o uso da NF-e	

Verificar resultado da pesquisa ${Status}
    Wait Until Element Is Visible   ${RESULT}
    Element Text Should Be   ${RESULT}   ${Status}

Fechar Navegador
    Close Browser   