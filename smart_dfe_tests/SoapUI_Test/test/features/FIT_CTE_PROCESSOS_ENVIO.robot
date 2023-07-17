***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/cte_sendPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Verificação de envio de texto para integração de CT-e remessa para autorização/cancelamento etc. Test1
#Descrição: Envio de texto para integração de CT-e remessa para autorização/cancelamento etc.
#Layout campo Dados: Texto confome layout de integração utilizado
#Retorno: TAG – “CTE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT.xml
    Então eu posso verificar que o arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT, foi recebido com sucesso

Verificação de envio de texto para integração de CT-e remessa para autorização/cancelamento etc. Test2
#Descrição: Envio de texto para integração de CT-e remessa para autorização/cancelamento etc.
#Layout campo Dados: Texto confome layout de integração utilizado
#Retorno: TAG – “CTE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL, foi recebido com sucesso

Verificação de envio de texto para integração de CT-e remessa para autorização/cancelamento etc. Test3
#Descrição: Envio de texto para integração de CT-e remessa para autorização/cancelamento etc. 
#Layout campo Dados: Texto confome layout de integração utilizado
#Retorno: TAG – “CTE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED.xml
    Então eu posso verificar que o arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED, foi recebido com sucesso

Verificação de envio de texto para integração de CT-e remessa para autorização.
#Descrição: Retorna lista XML referente ao numero chave acesso
#Layout campo Dados: Numero chave de acesso
#Retorno: Lista XML com os seguintes dados: 1 – XML Autorização Distribuição ( Proc. CT-e ), 2 – XML Cancelamento NF-e ( Proc.Canc. CT-e )
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO, foi recebido com sucesso

Verificação de envio de texto para integração de CT-e remessa para cancelamento.
#Descrição: Retorna lista XML referente ao numero chave acesso
#Layout campo Dados: Numero chave de acesso
#Retorno: Lista XML com os seguintes dados: 1 – XML Autorização Distribuição ( Proc. CT-e ), 2 – XML Cancelamento NF-e ( Proc.Canc. CT-e )
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1, foi recebido com sucesso

Verificação de retorna lista contendo numero das chaves dos CTe’s de emissão própria/terceiros
#Descrição: Retorna lista contendo numero das chaves dos CTe’s de emissão própria/terceiros
#Layout campo Dados: Data Inicial ( ddmmaaaa) | Data Final (ddmmaaaa) | CodigoEmpresa | 0 – Própria ou 1 – Terceiros | NSU
#Retorno: Lista String contendo numero das chaves dos CTe’s de emissão própria ou terceiros
    Dado que eu envie um arquivo FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU, foi recebido com sucesso

Verificação de envio de texto para integração de evento de CT-e: cancelamento, CCe e inutilização. Test_1
#Descrição: Envio de texto para integração de evento de CT-e: cancelamento, CCe e inutilização.
#Layout campo Dados: Texto confome layout de integração
#Retorno: TAG – “CTE-RET-CANC” para cancelamento, TAG – “CTE-RET-CCE” para carta de correção, TAG – “CTE-RET-INUT” para inutilização
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE, foi recebido com sucesso

Verificação de envio de texto para integração de evento de CT-e: cancelamento, CCe e inutilização. Test_2
#Descrição: Envio de texto para integração de evento de CT-e: cancelamento, CCe e inutilização.
#Layout campo Dados: Texto confome layout de integração
#Retorno: TAG – “CTE-RET-CANC” para cancelamento, TAG – “CTE-RET-CCE” para carta de correção, TAG – “CTE-RET-INUT” para inutilização
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1, foi recebido com sucesso

Verificação de envio de texto para integração de evento de CT-e: cancelamento, CCe e inutilização. Test_3
#Descrição: Envio de texto para integração de evento de CT-e: cancelamento, CCe e inutilização.
#Layout campo Dados: Texto confome layout de integração
#Retorno: TAG – “CTE-RET-CANC” para cancelamento, TAG – “CTE-RET-CCE” para carta de correção, TAG – “CTE-RET-INUT” para inutilização
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2.xml 
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2, foi recebido com sucesso