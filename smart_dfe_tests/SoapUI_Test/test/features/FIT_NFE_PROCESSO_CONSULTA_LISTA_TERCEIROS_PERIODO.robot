***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/nfe_third_PeriodPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Retorna lista contendo numero das chaves das notas fiscais de emissão terceiros por data de recebimento
#Serviço: FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO
#Layout campo Dados: CodigoEmpresa | Data Inicial ( ddmmaaaa) | Data Final (ddmmaaaa) | Modelo 
#Documento (Não obrigatório, quando não obrigatório considerar 55(NFe)) | 
#nr_nsu_inicial ( Não obrigatório, apenas para quantidades superiores a 1000 chaves ) 
#Consulta realizada de 1000 em 1000
#Retorno: Lista String contendo numero das chaves das notas fiscais de emissão terceiros
    Dado que eu envie um arquivo FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO, foi recebido com sucesso

Retorna lista contendo numero das chaves das notas fiscais de emissão terceiros
#Serviço: FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO
#Descrição: Retorna lista contendo numero das chaves das notas fiscais de emissão terceiros
#Layout campo Dados: CodigoEmpresa | Data Inicial ( ddmmaaaa) | Data Final (ddmmaaaa)
#Retorno: Lista String contendo numero das chaves das notas fiscais de emissão terceiros
    Dado que eu envie um arquivo FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO.xml
    Então eu posso verificar que o arquivo FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO, foi recebido com sucesso

