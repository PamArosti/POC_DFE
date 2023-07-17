***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/cte_consultPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Verificação de envio de texto para integração de CT-e remessa para autorização/cancelamento etc.
#Descrição: Retorna situação do CT-e referente a chave de acesso informada
#Layout campo Dados: Numero chave de acesso a ser consultada
#Retorno: TAG – “CTE-RET-CONS-SIT”
    Dado que eu envie um arquivo FIT_CTE_CONSULTA_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_CTE_CONSULTA_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_CTE_CONSULTA_CHAVE_ACESSO, foi recebido com sucesso

Verificação do retorno da situação do CT-e referente a chave de acesso informada
#Descrição: Retorna situação do CT-e referente a chave de acesso informada
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: TAG – “CTE-RET-CONS-SIT”
    Dado que eu envie um arquivo FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml
    Então eu posso verificar que o arquivo FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP, foi recebido com sucesso

Verificação de retorno de DACTE do CT-e referente a chave de acesso informada
#Descrição: Retorna DACTE do CT-e referente a chave de acesso informada
#Layout campo Dados: Numero da chave de acesso
#Retorno: DACTE em formato PDF
    Dado que eu envie um arquivo FIT_CTE_DACTE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_CTE_DACTE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_CTE_DACTE_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de DACTE do CT-e referente ID Referencia
#Descrição: Retorna DACTE do CT-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DACTE em formato PDF
    Dado que eu envie um arquivo FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE.xml
    Então eu posso verificar que o arquivo FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE, foi recebido com sucesso

Verificação de retorno de situação da CCE CT-e referente a chave de acesso
#Descrição: Retorna situação da CCE CT-e referente a chave de acesso
#Layout campo Dados: Numero da chave de acesso | Número do evento
#Retorno: TAG – “CTE-RET-CONS-SIT”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de situação da CCE CCE CT-e referente a ID Referencia
#Descrição: Retorna situação da CCE CT-e referente a ID Referencia
#Layout campo Dados: Numero a ID Referencia/chave Sistema | Número do evento
#Retorno: TAG – “CTE-RET-CCE”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO, foi recebido com sucesso

Verificação de envio de texto para integração de CT-e remessa.
#Descrição: Envio de texto para integração de CT-e remessa para autorização/cancelamento etc.
#Layout campo Dados: Texto confome layout de integração utilizado
#Retorno: TAG – “CTE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT, foi recebido com sucesso

Verificação de retorno de evento de prestação de serviço em desacordo
#Descrição: Retorna o evento de prestação de serviço em desacordo
#Layout campo Dados: Numero Chave Sistema
#Retorno: Tag – CTE-RET-PRESTACAO-DESACOR”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE _CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de evento de prestação de serviço em desacordo.
#Descrição: Retorna o evento de prestação de serviço em desacordo
#Layout campo Dados: Numero ID Referencia
#Retorno: Tag – CTE-RET-PRESTACAO-DESACOR”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO, foi recebido com sucesso

Verificação de retorno de DACTE do CT-e serializada referente ID Referencia
#Descrição: Retorna DACTE do CT-e serializada referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DACTE serializada
    Dado que eu envie um arquivo FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO, foi recebido com sucesso

    