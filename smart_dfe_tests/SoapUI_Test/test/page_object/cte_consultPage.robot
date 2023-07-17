***Keywords***
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_CTE_CONSULTA_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_CONSULTA_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_CTE_CONSULTA_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_CONSULTA_CHAVE_ACESSO
        Should Contain      ${text}                     CTE-RET-CONS-SIT|06158643000144|101550|1|57|1|06158643000144|35210406158643000144570010001015501001015507|101550|231|Rejeição: IE do emitente não vinculada ao CNPJ
        
Então eu posso verificar que o arquivo FIT_CTE_CONSULTA_CHAVE_ACESSO, foi recebido com sucesso       
        Should Exist        ${request_retorno}${/}FIT_CTE_CONSULTA_CHAVE_ACESSO.xml


#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP
        Should Contain      ${text}                     CTE-RET-CONS-SIT|06158643000144|101550|1|57|1|06158643000144|35210406158643000144570010001015501001015507|101550|231|Rejeição: IE do emitente não vinculada ao CNPJ|
        
Então eu posso verificar que o arquivo FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_CTE_CONSULTA_ID_CONHECIMENTO_TRANSP.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT
        Should Contain      ${text}                     CTE_RET

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_ID_CONHECIMENTO_TRANSPORTE_LAYOUT.xml

#----------------------------------------------------------------#
Enviar o arquivo FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU
        Should Contain      ${text}                     35210754423934000165570180000012341020225830
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_CTE_PROPRIAS_TERCEIROS_NSU.xml


#----------------------------------------------------------------#

Enviar o arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO
        Should Contain      ${text}                     CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO.xml

#----------------------------------------------------------------#

Enviar o arquivo FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1
        Should Contain      ${text}                     Cancelamento
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_CTE_CHAVE_ACESSO1.xml

#----------------------------------------------------------------#

Dado que eu envie um arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO
        Should Contain      ${text}                     CTE-RET-PRESTACAO-DESACORDO|471|35200413569806000147570010001116001001116005

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_ID_CONHECIMENTO.xml

#----------------------------------------------------------------#

Dado que eu envie um arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO
        Should Contain      ${text}                     CTE-RET-PRESTACAO-DESACORDO|471|35200413569806000147570010001116001001116005

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_PREST_DESACORDO_CTE_CHAVE_ACESSO.xml
    
#----------------------------------------------------------------#

Dado que eu envie um arquivo FIT_CTE_DACTE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_DACTE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_CTE_DACTE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_DACTE_CHAVE_ACESSO
        Should Contain      ${text}                     JVBERi0xLjQKJeLjz9MKNCAwIG9iaiA8PC9Db2xvclNwYWNlL0RldmljZ

Então eu posso verificar que o arquivo FIT_CTE_DACTE_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_CTE_DACTE_CHAVE_ACESSO.xml
    

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE
        Should Contain      ${text}                     JVBERi0xLjQKJeLjz9MKNCAwIG9iaiA8PC9Db2xvclNwYWNlL0RldmljZ

Então eu posso verificar que o arquivo FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_CTE_DACTE_ID_CONHECIMENTO_TRANSPORTE.xml
     
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO
        Should Contain      ${text}                     UEsDBBQACAgIA

Então eu posso verificar que o arquivo FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DACTE_SERIAL_ID_CONHECIMENTO.xml

#----------------------------------------------------------------#
Enviar o arquivo FIT_NFE_DAMDFE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DAMDFE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_DAMDFE_CHAVE_ACESSO.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DAMDFE_CHAVE_ACESSO
        Should Contain      ${text}                     XPTO
        Should Exist        ${request_retorno}${/}FIT_NFE_DAMDFE_CHAVE_ACESSO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO
        Should Contain      ${text}                     Eventos CC-e não encontrados para : 35210406158643000144570010001015501001015507|1

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_CTE_CHAVE_ACESSO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO
        Should Contain      ${text}                     Eventos CC-e não encontrados para : 101550|1
        
Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CCE_ID_CONHECIMENTO.xml
  
    