*** Settings ***
Library     RequestsLibrary
Library  Collections
Library  JSONLibrary



*** Variable ***
${URL_API}       https://api.hom.dfe.services.sovos.net.br/api/v2/dfes/list
${APP_KEY}       e3dd66e75c36428480bb8291960b6151
${DATE_BEGIN}    2021-11-01
${DATE_END}      2022-03-01
${TYPE}          nfes_recebidas


*** Keywords ***
#### STEPS
Conecta ao WebService
    ${headers}=    Create Dictionary    Authorization=${APP_KEY}
    Create Session      consultaAPI     ${URL_API}     headers=${headers}    verify=false   disable_warnings=True

Realiza requisição de consulta
    [Arguments]         ${NUMBER}
    ${RESPOSTA}=        Get On Session  consultaAPI  url=/?issue_date_begin=${DATE_BEGIN}&issue_date_end=${DATE_END}&${NUMBER}&type=${TYPE}&token=${APP_KEY}
    Log                 Resposta: ${RESPOSTA.text}
    Set Test Variable   ${RESPOSTA}
    Log    ${RESPOSTA}

Confere o status code
    [Arguments]     ${STATUS_ESPERADO}
    Should Be Equal As Strings   ${RESPOSTA.status_code}  ${STATUS_ESPERADO}
    Log             Status Code Retornado: ${RESPOSTA.status_code} -- Status Code Esperado: ${STATUS_ESPERADO}

Confere dados do status
    [Arguments]         ${STATUS}
    Log                 Resposta: ${RESPOSTA.json()}
    ${text}=    Get Value From Json    ${RESPOSTA.json()}       $.[:1].situacao
    Log   ${text}
    Should Contain      ${text}   ${STATUS}
    
Confere dados do emitente
    [Arguments]         ${CNPJ_EMIT}
    Log                 Resposta: ${RESPOSTA.json()}
    ${cnpj}=    Get Value From Json    ${RESPOSTA.json()}       $.[:1].emit_cnpj
    Log   ${cnpj}
    Should Contain      ${cnpj}   ${CNPJ_EMIT}

Confere dados do destinatario
    [Arguments]         ${CNPJ_DEST}
    Log                 Resposta: ${RESPOSTA.json()}
    ${cnpj}=    Get Value From Json    ${RESPOSTA.json()}       $.[:1].dest_cnpj
    Log   ${cnpj}
    Should Contain      ${cnpj}   ${CNPJ_DEST}