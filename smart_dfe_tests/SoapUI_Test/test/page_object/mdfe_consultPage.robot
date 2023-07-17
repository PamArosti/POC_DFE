***Keywords***
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_MANIFESTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_ID_MANIFESTO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_MANIFESTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_ID_MANIFESTO
        Should Contain      ${text}                     MDFE-RET-CONS-SIT|06158643000144|205623|38|58|1|35210106158643000144580380002056231020740435|2020202074043|7|135|Evento registrado e vinculado ao MDF-e(Encerramento)
        
Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_MANIFESTO, foi recebido com sucesso       
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_ID_MANIFESTO.xml 
    
    
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO
        Should Contain      ${text}                     MDFE-RET-CONS-SIT|06158643000144|205624|38|58|1|35210106158643000144580380002056241020740440|2020202074044|5|100|Autorizado o uso do MDF-e

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CHAVE_ACESSO_MANIFESTO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU
        Should Contain      ${text}                     <?xml version="1.0" encoding="UTF-8" standalone="yes"?><spedDocumentoFiscal><documentoFiscal><CD_STATUS>135</CD_STATUS><DM_TIPO_DOCUMENTO>MDFE</DM_TIPO_DOCUMENTO>

Então eu posso verificar que o arquivo FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_MDFE_PROPRIO_DT_ATUALIZACAO_NSU.xml

#----------------------------------------------------------------#
Enviar o arquivo FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_DFE_DESTINATARIO
        Should Contain      ${text}                     NFE-RET-CONSULTA-DFE-DEST
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_DFE_DESTINATARIO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_DADOS_AMBIENTE_EMPRESA.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DADOS_AMBIENTE_EMPRESA.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DADOS_AMBIENTE_EMPRESA.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DADOS_AMBIENTE_EMPRESA
        Should Contain      ${text}                     06158643000144|JOSE FERREIRA GANDRA DE CARVALHO - ME|FIT SISTEMAS-SP ME|65|2|1|4.00|9999|FIT-SP|
        
Então eu posso verificar que o arquivo FIT_NFE_DADOS_AMBIENTE_EMPRESA, foi recebido com sucesso           
        Should Exist        ${request_retorno}${/}FIT_NFE_DADOS_AMBIENTE_EMPRESA.xml
         
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_DAMDFE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DAMDFE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DAMDFE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DAMDFE_CHAVE_ACESSO
        Should Contain      ${text}                     JVBER
        
Então eu posso verificar que o arquivo FIT_NFE_DAMDFE_CHAVE_ACESSO, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_DAMDFE_CHAVE_ACESSO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_DAMDFE_ID_MANIFESTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DAMDFE_ID_MANIFESTO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DAMDFE_ID_MANIFESTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DAMDFE_ID_MANIFESTO
        Should Contain      ${text}                     JVBER

Então eu posso verificar que o arquivo FIT_NFE_DAMDFE_ID_MANIFESTO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DAMDFE_ID_MANIFESTO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO
        Should Contain      ${text}                     UEsDBBQA
        
Então eu posso verificar que o arquivo FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_DAMDFE_SERIAL_CHAVE_ACESSO.xml
    
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO
        Should Contain      ${text}                     UEsDBBQACA

Então eu posso verificar que o arquivo FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO, foi recebido com sucesso 
        Should Exist        ${request_retorno}${/}FIT_NFE_DAMDFE_SERIAL_ID_MANIFESTO.xml

#----------------------------------------------------------------#
Enviar o arquivo FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL
        Should Contain      ${text}                     XPTO
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml