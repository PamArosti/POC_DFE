***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/nfe_txt_ReturnPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Verificação de envio de arquivo para anexar a uma NF-e no envio do email ( espera-se o arquivo em formato zip)
#Descrição: Envio de texto para integração de NFC-e remessa para autorização/cancelamento etc
#Layout campo Dados: Texto confome layout de integração NFCE FIT
#Retorno: TAG – “NFE-NFCE-RETORNO”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE, foi recebido com sucesso

Envio de NF-e em formato texto para integração de NF-e remessa para autorização test1
#Descrição: Envio de texto para integração de NF-e remessa para autorização
#Layout campo Dados: Texto confome layout de integração
#Retorno: TAG – “NFE-NFCE-RETORNO”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE, foi recebido com sucesso

Envio de um evento CC-e para uma NF-e em formato texto
#Descrição: Envio de texto para integração de evento de NF-e: cancelamento, CCe e inutilização.
#Layout campo Dados: Texto confome layout de integração
#Retorno: TAG – “NFE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE, foi recebido com sucesso

Envio de arquivo do tipo texto para integração de NF-e remessa para autorização test2
#Descrição: Envio de texto para integração de NF-e remessa para autorização
#Layout campo Dados: Texto confome layout de integração
#Retorno: TAG – “NFE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3, foi recebido com sucesso

Envio de texto para integração de NF-e, somente validação.
#Descrição: Envio de texto para integração de NF-e, somente validação.
#Layout campo Dados: Texto confome layout de integração NFE FIT
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT, foi recebido com sucesso

Envio de arquivo do tipo texto para integração de NF-e remessa para autorização test3
#Descrição: Envio de texto para integração de NF-e remessa para autorização
#Layout campo Dados: Texto confome layout de integração
#Retorno: TAG – “NFE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3, foi recebido com sucesso

Verificação de numeros de chaves das NFe's próprias
#Descrição: Retorna lista contendo numero das chaves das notas fiscais de emissão própria
#Layout campo Dados: CodigoEmpresa | Data Inicial ( ddmmaaaa) | Data Final (ddmmaaaa)
#Retorno: Lista String contendo numero das chaves das notas fiscais de emissão própria
    Dado que eu envie um arquivo FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO, foi recebido com sucesso


