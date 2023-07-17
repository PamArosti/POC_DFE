*** Settings ***
Library     RequestsLibrary
Library  Collections
Library  JSONLibrary



*** Variable ***
${URL_API}                  https://api.hom.dfe.services.sovos.net.br/api/v2/dfes/
${APP_KEY}                  e3dd66e75c36428480bb8291960b6151

*** Keywords ***
#### STEPS
Conecta ao WebService
    ${headers}=    Create Dictionary    Authorization=${APP_KEY}
    Create Session      consultaAPI     ${URL_API}     headers=${headers}    verify=false   disable_warnings=True

Realiza requisição da chave de acesso
    [Arguments]         ${CHAVE_ACESSO}
    ${RESPOSTA}=        Get On Session  consultaAPI  url=/${CHAVE_ACESSO}/?token=${APP_KEY}
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
    ${text}=    Get Value From Json    ${RESPOSTA.json()}    situacao
    Should Contain      ${text}  ${STATUS}

Confere Mensagem de Erro
    [Arguments]         ${ERROR_MSG}
    Dictionary Should Contain Item  ${RESPOSTA.json()}  error   ${ERROR_MSG}