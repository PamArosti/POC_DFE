***Keywords***
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT
        Should Contain      ${text}                     MDFE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_FIT.xml

#------------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML
        Should Contain      ${text}                     MDFE-RET-ENVIA-TEXTO-INTEGRACAO

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_MDFE_XML.xml
