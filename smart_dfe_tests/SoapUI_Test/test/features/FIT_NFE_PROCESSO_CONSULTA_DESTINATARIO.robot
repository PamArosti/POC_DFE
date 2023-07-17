***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/mde_consultPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Verificação de retorno de lista de documentos Consulta DF-e Destinatario ( MD-e )
#Descrição: Retorna lista de documentos Consulta DF-e Destinatario ( MD-e )
#Layout campo Dados: NR_CNPJ_CPF_DESTINATARIO|DT_INICIAL_CONSULTA|DT_FINAL_CONSULTA|DM_SITUACAO_MDe
#Retorno: Lista Chaves Acesso do período layout “NFE-RET-CONSULTA-DFE-DEST
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_DFE_DESTINATARIO, foi recebido com sucesso