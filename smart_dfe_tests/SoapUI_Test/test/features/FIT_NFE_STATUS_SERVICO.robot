***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/service_checkPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Retorna status serviço do DC FIT
#Descrição: Retorna status serviço do DC FIT
#Layout campo Dados:
#Retorno: SERVIDOR | IP | DATA_HORA_CONSULTA | CODIGO_SERVICO | DESCRICAO_SERVICO
    Dado que eu envie um arquivo FIT_NFE_STATUS_SERVICO_DC.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_STATUS_SERVICO_DC.xml
    Então eu posso verificar que o arquivo FIT_NFE_STATUS_SERVICO_DC, foi recebido com sucesso

Retorna status serviço da UF (SP para documento NFe)
#Descrição: Retorna status serviço da UF
#Layout campo Dados: UF | Ambiente(1 – PRD ou 2 - HOM) | Modelo documento (55 – NFe ou 65 – CTe)
#Retorno: TAG – “NFE-RET-STATUS-SERVICO”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_STATUS_SERVICO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_STATUS_SERVICO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_STATUS_SERVICO, foi recebido com sucesso

Retorna status serviço da UF (SP para documento CTe)
#Descrição: Retorna status serviço da UF
#Layout campo Dados: UF | Ambiente(1 – PRD ou 2 - HOM) | Modelo documento (55 – NFe ou 65 – CTe)
#Retorno: TAG – “NFE-RET-STATUS-SERVICO”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_STATUS_SERVICO1.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_STATUS_SERVICO1.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_STATUS_SERVICO1, foi recebido com sucesso

Retorna status serviço da UF (RS para documento NFe)
#Descrição: Retorna status serviço da UF
#Layout campo Dados: UF | Ambiente(1 – PRD ou 2 - HOM) | Modelo documento (55 – NFe ou 65 – CTe)
#Retorno: TAG – “NFE-RET-STATUS-SERVICO”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_STATUS_SERVICO2.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_STATUS_SERVICO2.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_STATUS_SERVICO2, foi recebido com sucesso
