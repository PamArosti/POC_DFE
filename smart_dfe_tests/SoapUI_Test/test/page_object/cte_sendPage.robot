***Keywords***
#----------------------------------------------------------------#

Dado que eu envie um arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT
        Should Contain      ${text}                     CTE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso
        
Então eu posso verificar que o arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_FIT.xml

   
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL
        Should Contain      ${text}                     CTE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso
        
Então eu posso verificar que o arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_PAINEL_FISCAL.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED
        Should Contain      ${text}                     CTE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso
        
Então eu posso verificar que o arquivo FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_CTE_ENVIA_TEXTO_INTEGRACAO_CTE_TECNOSPEED.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE
        Should Contain      ${text}                     CTE-RET-CCE|||999|Conhecimento para Carta de Corre

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1
        Should Contain      ${text}                     CTE-RET-INUT|||000|||2|Arquivo de Inutilizacao

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE1.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2
        Should Contain      ${text}                     CTE-RET-CANC||||||||9999|CT-e para cancelamento

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_EVENTO_FIT_CTE2.xml

#----------------------------------------------------------------#
Enviar o arquivo FIT_CTE_CONSULTA_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_CONSULTA_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_CTE_CONSULTA_CHAVE_ACESSO.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_CONSULTA_CHAVE_ACESSO
        Should Contain      ${text}                     CTE-RET-CONS-SIT|06158643000144|101550|1|57|1|06158643000144|35210406158643000144570010001015501001015507|101550|231|Rejeição: IE do emitente não vinculada ao CNPJ||15062022120225|2|1|||N
        Should Exist        ${request_retorno}${/}FIT_CTE_CONSULTA_CHAVE_ACESSO.xml


#----------------------------------------------------------------#

Enviar o arquivo FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP
        Should Contain      ${text}                     CTE-RET-CONS-SIT|06158643000144|101550|1|57|1|06158643000144|35210406158643000144570010001015501001015507|101550|231|Rejeição: IE do emitente não vinculada ao CNPJ|
        Should Exist        ${request_retorno}${/}FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml

#----------------------------------------------------------------#

Enviar o arquivo FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT
        Should Contain      ${text}                     CTE_RET
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU
        Should Contain      ${text}                     CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL

Então eu posso verificar que o arquivo FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml

#----------------------------------------------------------------#

Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO
        Should Contain      ${text}                     CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL

Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1
        Should Contain      ${text}                     Cancelamento

Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml

#----------------------------------------------------------------#

Enviar o arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO
        Should Contain      ${text}                     CTE-RET-PRESTACAO-DESACORDO|471|35200413569806000147570010001116001001116005
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml

#----------------------------------------------------------------#

Enviar o arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO
        Should Contain      ${text}                     CTE-RET-PRESTACAO-DESACORDO|471|35200413569806000147570010001116001001116005
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml