*** Settings ***
Resource         ../pageObject/base_page.robot    
Resource         ../pageObject/nfse_self_consult.robot  
Resource         ../step_definition/BDDpt-br.robot    
Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Pesquisar NFS-e Própria
    Dado que faça login no smartDFE utilizando a licença 9999
    E clicar na opção consultas -> Consulta NFS-e Próprias
    Quando pesquisar por um NFS-e própria pelo numero "951952"
    Então eu posso verificar o status da NFS-e é Autorizado o Uso da NFS-e