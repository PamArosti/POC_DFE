***Keywords***
#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO.xml
       Set Test Variable   ${response}   


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO
        Should Contain      ${text}                    <?xml version="1.0" encoding="UTF-8" standalone="yes"?><NfeImposto><NumeroLicenca>9999</NumeroLicenca><UfOrigem>sp</UfOrigem><UfDestino>sp</UfDestino><IdProdutoServico>0</IdProdutoServico><IdNaturezaOperacao>22</IdNaturezaOperacao><VlTotalProduto>850</VlTotalProduto>

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO_ID_EXTERNO.xml
    
#-----------------------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO.xml
        Set Test Variable   ${response}   

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO
        Should Contain      ${text}                     <?xml version="1.0" encoding="UTF-8" standalone="yes"?><NfeImposto><NumeroLicenca>9999</NumeroLicenca><UfOrigem>SP</UfOrigem><UfDestino>SP</UfDestino><IdProdutoServico>2</IdProdutoServico><IdNaturezaOperacao>22</IdNaturezaOperacao><VlTotalProduto>850</VlTotalProduto>
 
Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO, foi recebido com sucesso 
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_TRIBUTACAO_PRODUTO.xml

#-----------------------------------------------------------------------------#
