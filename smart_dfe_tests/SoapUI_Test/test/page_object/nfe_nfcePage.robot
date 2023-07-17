***Keywords***
#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_NFE_NFCE.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_ID_NFE_NFCE.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_NFE_NFCE.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_ID_NFE_NFCE
        Should Contain      ${text}                     NFE-NFCE-RETORNO

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_NFE_NFCE, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_ID_NFE_NFCE.xml
    
#-----------------------------------------------------------#

Dado que eu envie um arquivo FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO
        Should Contain      ${text}                     NFE-NFCE-RETORNO

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_NFE_NFCE_CHAVE_ACESSO.xml

#-----------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO
        Should Contain      ${text}                     35210906158643000144650120000051391461382513

Então eu posso verificar que o arquivo FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFCE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml

#-----------------------------------------------------------#