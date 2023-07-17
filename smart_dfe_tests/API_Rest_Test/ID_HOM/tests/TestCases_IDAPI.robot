*** Settings ***
Documentation       Suíte Testes de API REST
Resource            ../resources/Step_Definition.robot

*** Test Case ***
Cenário 01: Consulta de endpoint ID HOM
    Dado que esteja conectado no webservice de consultas por ID
    Quando o usuário consultar a chave de acesso "41211201261681000104550030005270071100188448"
    Então deve ser mostrado a situação com status "ok"
