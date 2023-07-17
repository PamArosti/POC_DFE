***Settings***
Documentation     Documentação da API Nf-e: https://ws.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
Resource          ../page_object/nfe_tribPage.robot
Resource          ../page_object/basePage.robot
Suite Setup       Conecta API NF-e

***Test Cases***
Retorna um XML com os valores de tributação do produto cadastrado no cubo fiscal pelo ID EXTERNO
#Serviço: FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO
#Descrição: Retorna um XML com os valores de tributação do produto cadastrado no cubo fiscal pelo ID EXTERNO
#Layout campo Dados: UF Origem | UF Destino | Cod. Natureza Operação | ID EXTERNO | Valor Total do produto com dez casas decimais
#Retorno: XML com as tributações do produto
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO, foi recebido com sucesso

Retorna um XML com os valores de tributação do produto cadastrado no cubo fiscal
#Serviço: FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO
#Descrição: Retorna um XML com os valores de tributação do produto cadastrado no cubo fiscal
#FIT DF-e – Manual WebService
#FIT Sistemas – Manual de Integração via Web Service | www.fitsistemas.com.br 12
#Layout campo Dados: UF Origem | UF Destino | Cod. Natureza Operação | ID Produto | Valor Total do produto com dez casas decimais
#Retorno: XML com as tributações do produto
    Dado que eu envie um arquivo FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO.xml
    Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO.xml
    Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO, foi recebido com sucesso
