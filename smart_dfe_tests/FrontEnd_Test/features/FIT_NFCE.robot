*** Settings ***
Resource         ../pageObject/base_page.robot    
Resource         ../pageObject/nfce_self_consult.robot  
Resource         ../step_definition/BDDpt-br.robot    
Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Pesquisar NFC-e Propria
    Dado que faça login no smartDFE utilizando a licença 9999
    E clicar na opção consultas -> Consulta NFC-e Próprias
    Quando pesquisar por uma NFC-e própria pelo numero "20191407"
    Então eu posso verificar o status da NFC-e é Evento registrado, mas não vinculado a NF-e

