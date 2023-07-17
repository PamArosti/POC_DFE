*** Settings ***
Resource         ../pageObject/base_page.robot    
Resource         ../pageObject/mdfe_consult.robot  
Resource         ../step_definition/BDDpt-br.robot    
Suite Teardown   Fechar Navegador

*** Test Cases ***
#Cenário 01: Pesquisar MDF-e
    #Dado que faça login no smartDFE utilizando a licença 9999
    #E clicar na opção consultas -> Consulta MDF-e
    #Quando pesquisar por um MDF-e pelo numero "144047000002751"
    #Então eu posso verificar o status da MDF-e é Evento registrado e vinculado ao MDF-e(Encerramento)