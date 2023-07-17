***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/nfe_sendPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Verificação de envio de arquivo para anexar a uma NF-e no envio do email ( espera-se o arquivo em formato zip) Test1
#Descrição: Recebe arquivo para anexar a NF-e no envio do email ( espera-se o arquivo em formato zip)
#Layout campo Dados:  ID Arquivo
#Retorno: 1 – Recebido com Sucesso | 0 – Recebido com Erros
    Dado que eu envie um arquivo FIT_NFE_ENVIA_ARQUIVO_ANEXAR.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_ARQUIVO_ANEXAR.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_ARQUIVO_ANEXAR, foi recebido com sucesso

Verificação de retorno de DANFE serializada da NF-e referente ID Referencia
#Descrição: Retorna DANFE serializada da NFS-e referente ID Referencia
#Layout campo Dados: ID Referencia sistema
#Retorno: DANFE serializada
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B, foi recebido com sucesso


Verificação de envio de arquivo para anexar a uma NF-e no envio do email ( espera-se o arquivo em formato zip) Test2
#Descrição: Envio de texto para integração de NFS-e, somente validação.
#Layout campo Dados: Texto confome layout de integração NFSE FIT
#Retorno:
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR, foi recebido com sucesso

Verificação de envio de texto para integração de NFS-e remessa para autorização e cancelamento.
#Descrição: Envio de texto para integração de NFS-e remessa para autorização e cancelamento.
#Layout campo Dados: Texto confome layout de integração utilizado
#Retorno: TAG – “NFE-RET-ENVIA-TEXTO-INTEGRACAO”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL, foi recebido com sucesso

Verificação de envio de texto para integração de NF-e com recebimento ERP.
#Descrição: Envio de texto para integração de NF-e com recebimento ERP.
#Layout campo Dados: Texto confome layout de integração utilizado
#Retorno: TAG – “NFE-RET-ENVIA-TEXTO-INTEGRACAO-RECTO-ERP”
    Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT, foi recebido com sucesso

Verificação de envio de XML Proc de Terceiros para armazenamento, sem licença Test1
#Descrição: Envia XML Proc de Terceiros para armazenamento, sem licença
#Layout campo Dados: XML formato NF-e/CT-e
#Retorno: 
    Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC, foi recebido com sucesso

Verificação de envio de XML Proc de Terceiros para armazenamento, sem licença Test2
#Descrição: Envia XML Proc para armazenamento.
#Layout campo Dados: XML formato NF-e/CT-e
#Retorno: N.PROTOCOLO | COD. RETORNO | DS. RETORNO | HOST
    Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC, foi recebido com sucesso

Verificação de envio de XML Proc de Terceiros para armazenamento, sem licença Test3
#Descrição: Envia XML Proc para armazenamento.
#Layout campo Dados: XML formato NF-e/CT-e
#Retorno: N.PROTOCOLO | COD. RETORNO | DS. RETORNO | HOST
    Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2, foi recebido com sucesso

Verificação de envio de XML Proc para armazenamento
#Descrição: Envia XML Proc para armazenamento.
#Layout campo Dados: XML formato NF-e/CT-e
#Retorno: 
    Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_DISTRIBUICAO.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO, foi recebido com sucesso

Verificação de envio de XML Proc de Terceiros para armazenamento, sem licença Test4
#Descrição: Envia XML Proc de Terceiros para armazenamento, sem licença
#Layout campo Dados: XML formato NF-e/CT-e
#Retorno: 
    Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA.xml
    Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA, foi recebido com sucesso

Verificação de envio de arquivo para anexar a uma NF-e no envio do email ( espera-se o arquivo em formato zip) Test3
#Descrição: Recebe arquivo para anexar a NF-e no envio do email ( espera-se o arquivo em formato zip)
#Layout campo Dados:  ID Arquivo
#Retorno: 1 – Recebido com Sucesso | 0 – Recebido com Erros
    Dado que eu envie um arquivo FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO, foi recebido com sucesso

Verificação de retorno de lista contendo XML padrão FIT das notas fiscais de emissão próprias/terceiros Test1
#Descrição: Retorna lista contendo XML padrão FIT das notas fiscais de emissão próprias/terceiros
#Layout campo Dados:  Data Inicial ( ddmmaaaa) | Data Final (ddmmaaaa) | CodigoEmpresa | 0 – Própria ou 1 – Terceiros | NSU
#Retorno: Lista String contendo numero das chaves das notas fiscais de emissão própria ou terceiros
    Dado que eu envie um arquivo FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT, foi recebido com sucesso

Verificação de retorno de lista contendo numero das chaves das notas fiscais de emissão próprias/terceiros Test2
#Descrição: Retorna lista contendo numero das chaves das notas fiscais de emissão próprias/terceiros
#Layout campo Dados:  Data Inicial ( ddmmaaaa) | Data Final (ddmmaaaa) | CodigoEmpresa | 0 – Própria ou 1 – Terceiros | NSU
#Retorno: Lista String contendo numero das chaves das notas fiscais de emissão própria ou terceiros
    Dado que eu envie um arquivo FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU, foi recebido com sucesso

Verificação de retorno de lista contendo XML padrão FIT das notas fiscais de emissão próprias/terceiros Test3
#Descrição: Reenviar XML NFE para FIT ERP
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno:
    Dado que eu envie um arquivo FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de lista contendo XML padrão FIT das notas fiscais de emissão próprias/terceiros Test4
#Descrição: Retorna texto layout do emissor gratuito atravez do numero da chave de acesso
#Layout campo Dados: Numero Chave de Acesso
#Retorno:Texto layout emissor gratuito
    Dado que eu envie um arquivo FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR, foi recebido com sucesso

Verificação de retorno de lista contendo XML padrão FIT das notas fiscais de emissão próprias/terceiros Test5
#Descrição: Retorna o XML de CC-e referente ao numero chave acesso
#Layout campo Dados: Numero chave de acesso
#Retorno:XML de CC-e
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de lista contendo XML padrão FIT das notas fiscais de emissão próprias/terceiros Test6
#Descrição: Numero ID Referencia/Chave Sistema
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno:Lista XML com os seguintes dados: 1 – XML Autorização Distribuição ( Proc. NF-e ), 2 – XML Cancelamento NF-e ( Proc.Canc. NF-e ), 3 a 23 – XML Eventos ( CC-e e MD-e 
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de lista XML referente a chave de acesso
#Descrição: Retorna lista XML referente a chave de acesso
#Layout campo Dados:  Numero chave de acesso
#Retorno: Lista com os XML
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de lista contendo XML padrão FIT das notas fiscais de emissão próprias/terceiros Test7
#Descrição: Retorna XML NFS-e
#Layout campo Dados: ID Nota Fiscal
#Retorno: Retorna XML padrão prefeitura (quando existir )
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de XML NFS-e
#Descrição: Retorna XML NFS-e
#Layout campo Dados: ID Empresa | Numero RPS | Série RPS | Tipo RPS
#Retorno: Retorna XML padrão prefeitura (quando existir )
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_NFSE_RPS.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_NFSE_RPS.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_NFSE_RPS, foi recebido com sucesso