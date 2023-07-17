***Keywords***
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_STATUS_SERVICO_DC.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_STATUS_SERVICO_DC.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_STATUS_SERVICO_DC.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_STATUS_SERVICO_DC
        Should Contain      ${text}                     Serviço em Operação

Então eu posso verificar que o arquivo FIT_NFE_STATUS_SERVICO_DC, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_STATUS_SERVICO_DC.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_STATUS_SERVICO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_STATUS_SERVICO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_STATUS_SERVICO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_STATUS_SERVICO
        Should Contain      ${text}                     Serviço em Operação

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_STATUS_SERVICO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_STATUS_SERVICO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_STATUS_SERVICO1.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_STATUS_SERVICO1.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_STATUS_SERVICO1.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_STATUS_SERVICO1
        Should Contain      ${text}                     NFE-RET-STATUS-SERVICO

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_STATUS_SERVICO1, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_STATUS_SERVICO1.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_STATUS_SERVICO2.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_STATUS_SERVICO2.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_STATUS_SERVICO2.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_STATUS_SERVICO2
        Should Contain      ${text}                     NFE-RET-STATUS-SERVICO
    
Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_STATUS_SERVICO2, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_STATUS_SERVICO2.xml
    