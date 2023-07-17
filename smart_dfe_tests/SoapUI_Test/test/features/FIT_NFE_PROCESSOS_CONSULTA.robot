***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/nfe_consultPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Verificação de dados cadastrais e situação do contribuinte
#Descrição: Retorna dados cadastrais e situação do contribuinte
#Layout campo Dados: NFE-CONS-CAD | UF | CNPJ | I.E.
#Retorno: TAG – “NFE-RET-CONS-CAD”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CADASTRO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CADASTRO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CADASTRO, foi recebido com sucesso

Retorno da situação de uma NF-e referente ao numero de chave de acesso 
#Descrição: etorna situação da NF-e referente a chave de acesso informada
#Layout campo Dados: Numero chave de acesso a ser consultada
#Retorno: TAG – “NFE-RET-CONS-SIT”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CHAVE_ACESSO, foi recebido com sucesso

Retorno da situação de uma NF-e referente ao numero de ID Test1
#Descrição: Retorna situação da NF-e referente a ID Referencia. Formatado conforme layout texto de entrada no config. empresa
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: TAG – “NFE-RET-CONS-SIT”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT, foi recebido com sucesso

Retorno da situação de uma NF-e referente ao numero de ID Test2
#Descrição: Retorna situação da NF-e referente a ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: TAG – “NFE-RET-CONS-SIT”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de status para uma nota inutilizada Test1
#Descrição: Retorna status de inutilização de NF-e.
#Layout campo Dados: CNPJ Emitente | Nr Serie | Nr NF-e
#Retorno: TAG – “NFE-RET-INUT”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_INUTILIZACAO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_INUTILIZACAO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_INUTILIZACAO, foi recebido com sucesso

Verificação de retorno de lista contendo XML padrão FIT das notas fiscais de emissão próprias/terceiros
#Descrição: Retorna texto layout do emissor gratuito atravez do numero da chave de acesso
#Layout campo Dados: Numero Chave de Acesso
#Retorno:Texto layout emissor gratuito
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_NFE_SEFAZ.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_NFE_SEFAZ.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_NFE_SEFAZ, foi recebido com sucesso

Retorno da situação da NFS-e referente a ID Referencia. Formatado conforme layout texto de entrada no config. Empresa
#Descrição: Retorna situação da NFS-e referente a ID Referencia. Formatado conforme layout texto de entrada no config. Empresa
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: TAG – “NFSE-RET-RPS-SERVICO”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT, foi recebido com sucesso

Verificação de retorno de status de cancelamento de NF-e a referente ID Referencia Test1
#Descrição: Retorna status de cancelamento de NF-e a referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: TAG – “NFE-RET-CANC”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de status de cancelamento de NF-e a referente ID Referencia Test2
#Descrição: Retorna status de cancelamento de NF-e a referente ID Referencia. Formatado conforme layout texto de entrada no config. Empresa
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: TAG – “NFE-RET-CANC”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT, foi recebido com sucesso

Verificação de retorno de status para uma nota inutilizada via ID de inutilização Test2
#Descrição: Retorna status de inutilização de NF-e por ID Inutilização.
#Layout campo Dados: ID Inutilização
#Retorno: TAG – “NFE-RET-INUT”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO, foi recebido com sucesso

Verificação de retorno de lista DANFE da NF-e referente ID Referencia Test1
#Descrição: Retorna lista DANFE da NF-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema separado por pipeline (“|”)
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA, foi recebido com sucesso

Verificação de retorno de DANFE da CC-e referente ID Referencia
#Descrição: Retorna DANFE da CC-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DANFE_CCE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_CCE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_CCE_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de lista DANFE da NF-e referente ID Referencia Test2
#Descrição: Retorna lista DANFE da NF-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema separado por pipeline (“|”)
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de DANFE da NF-e referente a chave de acesso informada
#Descrição: Retorna DANFE da NF-e referente a chave de acesso informada
#Layout campo Dados: Numero chave de acesso
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DANFE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de DANFE da NF-e referente a ID Referencia
#Descrição: Retorna DANFE da NF-e referente a ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DANFE_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de lista DANFE da NF-e referente a chave de acesso informada
#Descrição: Retorna lista DANFE da NF-e referente a chave de acesso informada
#Layout campo Dados: Numero da chave de acesso separado por pipeline (“|”)
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DANFE_LISTA_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_LISTA_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_LISTA_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de lista DANFE da NF-e referente ID Referencia Test3
#Descrição: Retorna lista DANFE da NF-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema separado por pipeline (“|”)
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de DANFE da CC-e serializada referente a chave de acesso informada
#Descrição: Retorna DANFE da CC-e serializada referente a chave de acesso informada
#Layout campo Dados: Numero da chave de acesso
#Retorno: DANFE CCe serializada
    Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2, foi recebido com sucesso

Verificação de retorno de lista DANFE da NF-e referente ID Referencia Test4
#Descrição: Retorna DANFE CCe serializada da referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DANFE CCe serializada
    Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2, foi recebido com sucesso

Verificação de retorno de DANFE serializada com logotipo e jasper da NF-e referente a chave de acesso informada
#Descrição: Retorna DANFE serializada com logotipo e jasper da NF-e referente a chave de acesso informada
#Layout campo Dados: Numero da chave de acesso
#Retorno: DANFE serializada
    Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2, foi recebido com sucesso

Verificação de retorno de lista DANFE da NF-e referente ID Referencia Test5
#Descrição: Retorna lista DANFE da NF-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema separado por pipeline (“|”)
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de DANFE serializada com logotipo e jasper da NF-e referente ID Referencia
#Descrição: Retorna DANFE serializada com logotipo e jasper da NF-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DANFE serializada
    Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2, foi recebido com sucesso

Verificação de retorno de DANFE serializada da NF-e referente ID Referencia Test1
#Descrição: Retorna DANFE serializada da NF-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DANFE serializada
    Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de lista DANFE da NF-e referente ID Referencia Test6
#Descrição: Retorna DANFE serializada da NF-e referente ID Rota
#Layout campo Dados: Numero ID Rota
#Retorno: DANFE serializada
    Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_ID_ROTA.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_ID_ROTA.xml
    Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_ID_ROTA, foi recebido com sucesso

Retorno da situação da NFS-e referente a ID Referencia Test1
#Descrição: Retorna o XML de CC-e referente a a ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: XML de CC-e
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL, foi recebido com sucesso

Retorno da situação da NFS-e referente a ID Referencia Test2
#Descrição: Retorna o XML de CC-e referente a a ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: XML de CC-e
    Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CHAVE_ACESSO, foi recebido com sucesso

Retorno da situação da NFS-e referente a ID Referencia Test3
#Descrição: Retorna DANFE da NFS-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFSE_CONSULTA_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFSE_CONSULTA_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFSE_CONSULTA_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de DANFE serializada da NF-e referente ID Referencia Test2
#Descrição: Retorna DANFE da NFS-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DANFE em formato PDF
    Dado que eu envie um arquivo FIT_NFSE_DANFE_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFSE_DANFE_ID_NOTA_FISCAL.xml
    Então eu posso verificar que o arquivo FIT_NFSE_DANFE_ID_NOTA_FISCAL, foi recebido com sucesso

Verificação de retorno de DANFE serializada da NF-e referente ID Referencia Test3
#Descrição: Retorna DANFE serializada da NFS-e referente ID Referencia
#Layout campo Dados: ID Referencia sistema
#Retorno: DANFE serializada
    Dado que eu envie um arquivo FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
    Então eu posso verificar que o arquivo FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2, foi recebido com sucesso

Retorno da consulta de NF-e canceladas 
#Descrição:Retorna lista contendo numero das chaves das notas fiscais de consumidor eletrônica (NFCe) canceladas com base em sua data de emissão
#Layout campo Dados:Data Inicial ( ddmmaaaa) | Data Final (ddmmaaaa) | 0 – Própria ou 1 – Terceiros | Número da Página (Opcional, caso não enviar, o padrão será a primeira página) | Número de itens por Página (Opcional, quando não enviado o valor padrão será de 1000 notas. 1000 notas é o número máximo de registros por página) 
#Retorno:Lista String contendo numero das chaves das notas fiscais canceladas
    Dado que eu envie um arquivo FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO, foi recebido com sucesso

