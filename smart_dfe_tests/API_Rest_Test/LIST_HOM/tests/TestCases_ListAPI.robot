*** Settings ***
Documentation       Suíte Testes de API REST
Resource            ../resources/Step_Definition.robot

*** Test Case ***
Cenário 01: Consulta de endpoint List HOM
    Dado que esteja conectado no webservice List HOM
    Quando o usuário fizer a consulta de uma NFE com o numero "52007"
    Então deve ser mostrado a situação com status "ok"
    E deve ser mostrado o CNPJ do emitente com o valor "01261681000104"
    E deve ser mostrado o CNPJ do destinatario com o valor "29958609000150"
