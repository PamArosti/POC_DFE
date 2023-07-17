*** Settings ***
Resource  Steps.robot

*** Keywords ***
#### DADO
Dado que esteja conectado no webservice de consultas por ID
    Conecta ao WebService

#### QUANDO
Quando o usuário consultar a chave de acesso "${CHAVE_ACESSO}"
    Realiza requisição da chave de acesso   ${CHAVE_ACESSO}

#### ENTÃO
Então deve ser mostrado a situação com status "${STATUS_ESPERADO}"
    Confere o status code       200
    Confere dados do status     ${STATUS_ESPERADO}

Então a mensagem "${ERROR_MSG}" deve ser retornada
    Confere o status code     404

