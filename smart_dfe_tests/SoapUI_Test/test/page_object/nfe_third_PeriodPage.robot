***Keywords***
#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO
        Should Contain      ${text}                     41220105330384000124550010063231881002006900
    
Então eu posso verificar que o arquivo FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO_DT_RECEBIMENTO.xml
    
#-------------------------------------------------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO
        Should Contain      ${text}                     41220305330384000124550010063570381002626516

Então eu posso verificar que o arquivo FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_CHAVE_ACESSO_TERCEIROS_PERIODO.xml 
