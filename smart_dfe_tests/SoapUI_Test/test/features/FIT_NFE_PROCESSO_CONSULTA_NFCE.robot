***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/nfe_nfcePage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Retorno da situação da NF-e/NFC-e referente ao numero de chave de acesso 
#Descrição: Retorna situação da NF-e/NFC-e referente a ID Referencia
#Layout campo Dados: Numero chave de acesso
#Retorno: TAG – “NFE-NFCE-RETORNO”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO, foi recebido com sucesso

Retorno da situação da NF-e/NFC-e referente ao numero de ID 
#Descrição: Retorna situação da NF-e/NFC-e referente a ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema
#Retorno: TAG – “NFE-NFCE-RETORNO”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_NFE_NFCE.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_NFE_NFCE.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_NFE_NFCE, foi recebido com sucesso

Retorno da consulta de NFC-e canceladas 
#Descrição:Retorna lista contendo numero das chaves das notas fiscais de consumidor eletrônica (NFCe) canceladas com base em sua data de emissão
#Layout campo Dados:Data Inicial ( ddmmaaaa) | Data Final (ddmmaaaa) | 0 – Própria ou 1 – Terceiros | Número da Página (Opcional, caso não enviar, o padrão será a primeira página) | Número de itens por Página (Opcional, quando não enviado o valor padrão será de 1000 notas. 1000 notas é o número máximo de registros por página) 
#Retorno:Lista String contendo numero das chaves das notas fiscais canceladas
    Dado que eu envie um arquivo FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
    Então eu posso verificar que o arquivo FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO, foi recebido com sucesso
