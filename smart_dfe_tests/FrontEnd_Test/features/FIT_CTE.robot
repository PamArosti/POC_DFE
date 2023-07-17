*** Settings ***
Resource         ../pageObject/base_page.robot    
Resource         ../pageObject/cte_self_consult.robot  
Resource         ../step_definition/BDDpt-br.robot    
Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Pesquisar CT-e Próprio
    Dado que faça login no smartDFE utilizando a licença 9999
    E clicar na opção consultas -> Consulta CT-e Próprios
    Quando pesquisar por um CT-e próprio pelo numero "10"
    Então eu posso verificar o status da CT-e é Autorizado o uso do CT-e

Cenário 02: Abre Modal de Eventos do registro CT-e
    Dado que faça login no smartDFE utilizando a licença 9999
    E clicar na opção consultas -> Consulta CT-e Próprios
    Quando pesquisar por um CT-e próprio pelo numero "10"
    Então eu posso verificar o status da CT-e é Autorizado o uso do CT-e
    E eu abro o modal de eventos vinculados ao CT-e