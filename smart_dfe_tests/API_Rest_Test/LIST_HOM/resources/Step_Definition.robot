*** Settings ***
Resource  Steps.robot

*** Keywords ***
#### DADO
Dado que esteja conectado no webservice List HOM
    Conecta ao WebService

#### QUANDO
Quando o usuário fizer a consulta de uma NFE com o numero "${CHAVE_ACESSO}"
    Realiza requisição de consulta      ${CHAVE_ACESSO}

#### ENTÃO
Então deve ser mostrado a situação com status "${STATUS_ESPERADO}"
    Confere o status code       200
    Confere dados do status     ${STATUS_ESPERADO}

#### E
E deve ser mostrado o CNPJ do emitente com o valor "${CNPJ_EMIT}"
    Confere o status code       200
    Confere dados do emitente     ${CNPJ_EMIT}

E deve ser mostrado o CNPJ do destinatario com o valor "${CNPJ_DEST}"
    Confere o status code       200
    Confere dados do destinatario     ${CNPJ_DEST}
