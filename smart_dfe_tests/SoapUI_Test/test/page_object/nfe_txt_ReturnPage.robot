***Keywords***
#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO
        Should Contain      ${text}                     Problema Banco - Consulta esta sendo feita no oracle

Então eu posso verificar que o arquivo FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_CHAVE_ACESSO_PROPRIA_PERIODO.xml
        
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE
         Should Contain     ${text}                     NFE-NFCE-RETORNO|33100001000778345|

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFE.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE
         Should Contain     ${text}                     NFE-RET-CANC|35144001035776121|06158643000144|1|35776121|55|35220406158643000144550010357761211960520811|9|135|Evento registrado e vinculado a NF-e

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_NFE.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3
        Should Contain     ${text}                     NFE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso|
        
Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_PAINELFISCAL_V3.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT_VALIDAR.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT_VALIDAR
        Should Contain     ${text}                     NFE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_FIT_VALIDAR.xml

#-----------------------------------------------------------------------------

Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE
        Should Contain     ${text}                     NFE-NFCE-RETORNO|1563616|06158643000144|001|1563616|65|35220406158643000144650010015636161559723028
        
Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_AUTORIZACAO_FIT_NFCE.xml
