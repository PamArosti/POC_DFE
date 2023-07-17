***Keywords***
#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CHAVE_ACESSO
        Should Contain      ${text}                     NFE-RET-CONS-SIT|06158643000144|38805|1|55|1|14798413000178|35220306158643000144550010000388051649953178|500866035222511|100|Autorizado o uso da NF-e|135220002766675|03032022230037|2|1||||5|N|||03032022080100|0||||||

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CHAVE_ACESSO.xml

#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_ID_NOTA_FISCAL
        Should Contain      ${text}                     NFE-RET-CONS-SIT|06158643000144|38275|1|55|1|14798413000178|35211106158643000144550010000382751069168853|99990597565|100|Autorizado o uso da NF-e|135210013332420|03122021145751|2|1||||5|N|||30112021080100|0||||||

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_NOTA_FISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_ID_NOTA_FISCAL.xml

#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT   
        Should Contain      ${text}                     NFE_RET_357761903.TXT

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT.xml

#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_INUTILIZACAO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_INUTILIZACAO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_INUTILIZACAO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_INUTILIZACAO
        Should Contain      ${text}                     NFE-RET-INUT|06158643000144|2022|001|3577618|3577618|1|Inutilização de número homologado|135220005610418|22042022142532|ID35220615864300014455001003577618003577618|1||55||102|Inutilização de número homologado|

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_INUTILIZACAO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_ID_NOTA_FISCAL_LAYOUT.xml

#---------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO
        Should Contain      ${text}                     NFE-RET-INUT|06158643000144|14|1|987|987|2|XML Gerado|||ID35140615864300014455001000000987000000987|1|

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_RET_INUT_ID_INUTILIZACAO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_CADASTRO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_CADASTRO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_CADASTRO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_CADASTRO
        Should Contain      ${text}                     ALFA SEGURADORA S.A|ALFA SEGURADORA S.A|115550340117|ALAMEDA SANTOS|466|ANDAR 7

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_CADASTRO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_CADASTRO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL
        Should Contain      ${text}                     NFE-RET-CANC|35144001035776121|35220406158643000144550010357761211960520811|1|135-Evento registrado e vinculado a NF-e(Cancelamento registrado)
      
Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL, foi recebido com sucesso      
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL.xml
        
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_CONSULTA_NFE_SEFAZ.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_NFE_SEFAZ.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_NFE_SEFAZ.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_NFE_SEFAZ
        Should Contain     ${text}                     35220306158643000144550010000388051649953178|100|Autorizado o uso da NF-e

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_NFE_SEFAZ, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_NFE_SEFAZ.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFSE_CONSULTA_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFSE_CONSULTA_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFSE_CONSULTA_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFSE_CONSULTA_ID_NOTA_FISCAL
        Should Contain     ${text}                     NFSE-RET-RPS-SERVICO|951952|100|100 - Autorizado o Uso da NFS-e|UFHCPPP6|14556|14556|00002|24012022163451|06158643000144|1|N|5|

Então eu posso verificar que o arquivo FIT_NFSE_CONSULTA_ID_NOTA_FISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFSE_CONSULTA_ID_NOTA_FISCAL.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT
        Should Contain      ${text}                     NFSE-RET-RPS-SERVICO

Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_NFSE_ID_NOTA_FISCAL_LAYOUT.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_CHAVE_ACESSO
        Should Contain      ${text}                     JVBER

Então eu posso verificar que o arquivo FIT_NFE_DANFE_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_CHAVE_ACESSO.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_ID_NOTA_FISCAL
        Should Contain      ${text}                     JVBER

Então eu posso verificar que o arquivo FIT_NFE_DANFE_ID_NOTA_FISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_ID_NOTA_FISCAL.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_LISTA_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_LISTA_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_LISTA_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_LISTA_CHAVE_ACESSO
        Should Contain      ${text}                     JVBER
    
Então eu posso verificar que o arquivo FIT_NFE_DANFE_LISTA_CHAVE_ACESSO, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_LISTA_CHAVE_ACESSO.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL
        Should Contain      ${text}                     JVBER

Então eu posso verificar que o arquivo FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_LISTA_ID_NOTA_FISCAL.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO
        Should Contain      ${text}                     UEsDBBQACA

Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2
        Should Contain      ${text}                     UEsDBBQACA
 
Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2, foi recebido com sucesso 
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_CHAVE_ACESSO_V2.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA
        Should Contain      ${text}                     XPTO
    
Então eu posso verificar que o arquivo FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_CANHOTO_SERIAL_ID_ROTA.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL
        Should Contain      ${text}                     JVBER

Então eu posso verificar que o arquivo FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_CCE_ID_NOTA_FISCAL.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2
        Should Contain      ${text}                     UEsDBBQACA

Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_CCE_ID_NOTA_FISCAL_V2.xml
        
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL
        Should Contain      ${text}                     XPTO
        
Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL.xml
        
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2
        Should Contain      ${text}                     UEsDBBQACA
    
Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_ID_ROTA.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_SERIAL_ID_ROTA.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_ID_ROTA.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_ID_ROTA
        Should Contain      ${text}                     UEsDBBQACA

Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_ID_ROTA, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_ID_ROTA.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFSE_DANFE_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFSE_DANFE_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFSE_DANFE_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFSE_DANFE_ID_NOTA_FISCAL
        Should Contain      ${text}                     JVBER
        
Então eu posso verificar que o arquivo FIT_NFSE_DANFE_ID_NOTA_FISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFSE_DANFE_ID_NOTA_FISCAL.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2
        Should Contain      ${text}                     UEsDBBQACA

Então eu posso verificar que o arquivo FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_SERIAL_CCE_CHAVE_ACESSO_V2.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2
        Should Contain      ${text}                     UEsDBBQACA

Então eu posso verificar que o arquivo FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFSE_DANFE_SERIAL_ID_NOTA_FISCAL_V2.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_DANFE_CCE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_DANFE_CCE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_DANFE_CCE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_DANFE_CCE_CHAVE_ACESSO
        Should Contain      ${text}                     JVBERi0xLj
    
Então eu posso verificar que o arquivo FIT_NFE_DANFE_CCE_CHAVE_ACESSO, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_DANFE_CCE_CHAVE_ACESSO.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL
        Should Contain      ${text}                     XPTO
    
Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_CCE_ID_NOTA_FISCAL.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_CHAVE_ACESSO
        Should Contain      ${text}                     NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO
    
Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CHAVE_ACESSO, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_CHAVE_ACESSO.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT
        Should Contain      ${text}                     NFE_RET
    
Então eu posso verificar que o arquivo FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_CONSULTA_RET_CANC_ID_NOTA_FISCAL_LAYOUT.xml
    
#----------------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO
        Should Contain      ${text}                     35210906158643000144550150000600001698356833

Então eu posso verificar que o arquivo FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_CHAVE_ACESSO_CANCELADAS_DT_EMISSAO.xml

#-----------------------------------------------------------#