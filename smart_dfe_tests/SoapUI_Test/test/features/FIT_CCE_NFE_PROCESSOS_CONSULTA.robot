***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/basePage.robot
Resource          ../page_object/nfe_ccePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***

Retorna situação da CC-e referente ao numero da chave de acesso
#Descrição: Retorna situação da CC-e referente ao numero da chave de acesso
#Layout campo Dados: Numero Chave de Acesso + “|” + Numero do Evento
#Retorno: TAG – “NFE-RET-CCE”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO, foi recebido com sucesso

#Descrição: Retorna situação da CC-e referente ao numero errado de evento da chave de acesso
#Layout campo Dados: Numero Chave de Acesso + “|” + Numero do Evento Errado
#Retorno: TAG – “Eventos CC-e não encontrados para : 35220306158643000144550040001563621503907995|135”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO.xml 
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO, foi recebido com sucesso

#Descrição: Retorna situação da CC-e referente ao numero invalido de parametros esperados da API
#Layout campo Dados: Numero Chave de Acesso
#Retorno: TAG – “Numero de parametros invalido: 35220306158643000144550040001563621503907995”
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO, foi recebido com sucesso

Retorno da situação da CC-e referente ao ID de referencia
#Descrição: Retorna situação da CC-e referente a ID Referencia
#Layout campo Dados: Numero ID Referencia/Chave Sistema + “|” + Numero do Evento
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL.xml 
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL, foi recebido com sucesso