*** Keywords ***
#### DADO
Que faça login no smartDFE utilizando a licença 9999
    Acessar aplicação

#### E
clicar na opção consultas -> Consulta CT-e Próprios
    Clique no menu e selecione consultas->consulta cte 

eu abro o modal de eventos vinculados ao CT-e
    Abre modal de Eventos

#### QUANDO
Pesquisar por um CT-e próprio pelo numero "${BUSCA}"
    Pesquisar a nota pelo numero "${BUSCA}"

    
#### ENTÃO
Eu posso verificar o status da CT-e é ${STATUS}
    Verificar resultado da pesquisa ${STATUS}


#### PASSOS    
Acessar aplicação
    Open Browser    ${URL}  ${BROWSER}
    input text  name=frmNFE_Login2:usuario  fit@9999
    input text  name=frmNFE_Login2:senha  FIT2013**
    click button  id=frmNFE_Login2:btnLogin
    Wait Until Element Is Visible   ${CABECALHO}
    Title Should Be     FIT DF-e | FIT Sistemas 

Clique no menu e selecione consultas->consulta cte 
    Click Element   ${OPCOES_MENU}
    Wait Until Element Is Visible    xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_113pc5']    timeout=10s
    Click Element     xpath=//div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_113pc5']

Pesquisar a nota pelo numero "${BUSCA}"
    Input Text      ${CAMPO_PESQUISAR_CTE}    ${BUSCA}
    Input Text      xpath=//input[@id='frmConsultaCTe:j_id_jsp_1355730375_15InputDate']   28/09/2022
    Click Element   ${BOTAO_PESQUISAR_CTE}
    Wait Until Element Is Visible   ${RESULT_CTE}
    Element Text Should Be   ${RESULT_CTE}   	Autorizado o uso do CT-e

Abre modal de Eventos
    Wait Until Element is Visible   ${OPTIONS_BAR}
    Wait Until Element Is Visible  xpath://input[@id='frmConsultaCTe:gridConsultaCTe:0:linkEventos']
    Execute JavaScript  Richfaces.componentControl.attachAvailable('#frmConsultaCTe\\:gridConsultaCTe\\:0\\:linkEventos','onclick','#viewModalEventos\\:modalEventos','show')
    Click Element   ${OPTIONS_BAR}//*[@id='frmConsultaCTe:gridConsultaCTe:0:linkEventos']
    Wait Until Element Is Visible   xpath=//form[@id='viewModalEventos:j_id_jsp_1363941441_7pc4']

Verificar resultado da pesquisa ${STATUS}
    Wait Until Element Is Visible   ${RESULT_CTE} 
    Element Text Should Be   ${RESULT_CTE}   ${STATUS}

Fechar Navegador
    Close Browser   