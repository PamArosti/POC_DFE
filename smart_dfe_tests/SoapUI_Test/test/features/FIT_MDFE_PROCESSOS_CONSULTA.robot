***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/mdfe_consultPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Verificação de retorno de situação da MDF-e referente a ID Referencia Test1
#Descrição: Retorna situação da MDF-e referente a chave de acesso
#Layout campo Dados: Numero chave de acesso a ser consultada
#Retorno: TAG – “MDFE-RET-CONS-SIT”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO, foi recebido com sucesso

Verificação de retorno de situação da MDF-e referente a ID Referencia Test2
#Descrição: Retorna XML contendo numero das chaves das MDF-e, e XML distribuição
#Layout campo Dados: Data e Hora Inicial ( ddmmaaaaHHmmss) | Data e Hora Final (ddmmaaaaHHmmss) | CodigoEmpresa | 0 – Próprio ou 1 – Terceiros | NSU
#Retorno: Lista String contendo XMLs com documentos retornados, e numero NSU
    Dado que eu envie um arquivo FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU, foi recebido com sucesso

Verificação de retorno de DAMDFE serializado do MDF-e referente a ID Referencia informada
#Descrição: Retorna DAMDFE serializado do MDF-e referente a ID Referencia informada
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DAMDFE serializada
    Dado que eu envie um arquivo FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO, foi recebido com sucesso

Verificação de retorno de DAMDFE do MDF-e referente ID Referencia Test1
#Descrição: Retorna DAMDFE serializada do MDF-e referente a chave de acesso
#Layout campo Dados: Numero chave de acesso
#Retorno: DAMDFE serializada
    Dado que eu envie um arquivo FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO, foi recebido com sucesso

Verificação de retorno de DAMDFE do MDF-e referente ID Referencia Test2
#Descrição: Retorna DAMDFE do MDF-e referente ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: DAMDFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DAMDFE_ID_MANIFESTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DAMDFE_ID_MANIFESTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DAMDFE_ID_MANIFESTO, foi recebido com sucesso

Verificação de retorno de DAMDFE do MDF-e referente a chave de acesso informada
#Descrição: Retorna DAMDFE do MDF-e referente a chave de acesso informada
#Layout campo Dados: Numero da chave de acesso
#Retorno: DAMDFE em formato PDF
    Dado que eu envie um arquivo FIT_NFE_DAMDFE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DAMDFE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_DAMDFE_CHAVE_ACESSO, foi recebido com sucesso
 
Verificação de retorno de situação da MDF-e referente a ID Referencia Test3
#Descrição: Retorna os dados do ambiente, tipo de emissão e versão da empresa
#Layout campo Dados: NR_CNPJ_CPF_EMPRESA|Código Modelo Documento(55,57,58,65)
#Retorno: Retorna os dados - CNPJ|Razão social|Nome Fantasia|Cód. Modelo|Ambiente|Tipo emissão|Versão
    Dado que eu envie um arquivo FIT_NFE_DADOS_AMBIENTE_EMPRESA.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DADOS_AMBIENTE_EMPRESA.xml
    Então eu posso verificar que o arquivo FIT_NFE_DADOS_AMBIENTE_EMPRESA, foi recebido com sucesso

Verificação de retorno de situação da MDF-e referente a ID Referencia Test4
#Descrição: Retorna situação da MDF-e referente a ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema.
#Retorno: TAG – “MDFE-RET-CONS-SIT”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_MANIFESTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_MANIFESTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_MANIFESTO, foi recebido com sucesso