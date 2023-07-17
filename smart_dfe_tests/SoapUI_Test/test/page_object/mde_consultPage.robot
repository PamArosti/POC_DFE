***Keywords***
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_DFE_DESTINATARIO
        Should Contain      ${text}                     NFE-RET-CONSULTA-DFE-DEST

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_DFE_DESTINATARIO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml
