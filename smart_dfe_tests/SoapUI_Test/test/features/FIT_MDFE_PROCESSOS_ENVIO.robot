***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/mdfe_sendPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Verificação de envio de texto para integração de MDF-e remessa para autorização/cancelamento etc. Test1
#Descrição: Envio de texto para integração de MDF-e remessa para autorização/cancelamento etc.
#Layout campo Dados: Texto confome layout de integração utilizado – XML.
#Retorno: TAG – “MDFE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML, foi recebido com sucesso

Verificação de envio de texto para integração de MDF-e remessa para autorização/cancelamento etc. Test2
#Descrição: Envio de texto para integração de MDF-e remessa para autorização/cancelamento etc.
#Layout campo Dados: Texto confome layout de integração utilizado
#Retorno: TAG – “MDFE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT, foi recebido com sucesso