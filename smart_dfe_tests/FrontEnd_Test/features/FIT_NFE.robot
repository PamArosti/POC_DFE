*** Settings ***
Resource         ../pageObject/base_page.robot    
Resource         ../pageObject/nfe_self_consult.robot  
Resource         ../step_definition/BDDpt-br.robot    
Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Pesquisar NF-e Propria
    Dado que faça login no smartDFE utilizando a licença 9999
    E clicar na opção consultas -> Consulta NF-e Próprias
    Quando pesquisar por uma NF-e própria pelo numero "156362"
    Então eu posso verificar o status da NF-e é Autorizado o uso da NF-e
