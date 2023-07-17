***Keywords***
#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO
        Should Contain      ${text}                     NFE-RET-CCE|35281004000156392|35220306158643000144550040001563621503907995|135|Evento registrado e vinculado a NF-e
  

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO.xml


#--------------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO.xml 
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO
        Should Contain      ${text}                     Eventos CC-e n

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_NAO_ENCONTRADO.xml

#--------------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO
        Should Contain      ${text}                     Numero de parametros invalido: 35220306158643000144550040001563621503907995 


Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_CHAVE_ACESSO_INVALIDO.xml

#--------------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL.xml 
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL
        Should Contain      ${text}                     NFE-RET-CCE|35281004000156392|35220306158643000144550040001563621503907995|135|Evento registrado e vinculado a NF-e

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_ID_NOTA_FISCAL.xml

#------------------------------------------------------------------