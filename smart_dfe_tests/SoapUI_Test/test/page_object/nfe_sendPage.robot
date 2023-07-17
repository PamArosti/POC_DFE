***Keywords***
#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_ENVIA_ARQUIVO_ANEXAR.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_ENVIA_ARQUIVO_ANEXAR.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_ARQUIVO_ANEXAR.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_ARQUIVO_ANEXAR
        Should Contain      ${text}                     0|Arquivo Recebido com erros

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_ARQUIVO_ANEXAR, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_ARQUIVO_ANEXAR.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU
        Should Contain      ${text}                     "Problema ao buscar dado no banco - Oracle"

Então eu posso verificar que o arquivo FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT
        Should Contain      ${text}                     "Problema ao buscar dado no banco - Oracle"

Então eu posso verificar que o arquivo FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_NFE_PROPRIAS_TERCEIROS_NSU_XML_FIT.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO
        Should Contain      ${text}                     "XPTO"
        
Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_LISTA_CHAVE_ACESSO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO
        Should Contain      ${text}                     2021928937242|35220206158643000144550900202190301175191776|5|Autorizado o uso da NF-e

Então eu posso verificar que o arquivo FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_LISTA_NFE_PROPRIA_TIPO_EMISSAO_PERIODO.xml

#----------------------------------------------------------------#
Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML   ${requests_generator}${/}FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL
        Should Contain      ${text}                     Autorizado o uso da NF-e
        
Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_ID_NOTA_FISCAL.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO
        Should Contain     ${text}                     NFE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso - MAPEADO
   
Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO, foi recebido com sucesso   
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_CCE_CHAVE_ACESSO.xml
   
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR
        Should Contain     ${text}                     NOTA FISCAL|1|

Então eu posso verificar que o arquivo FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_TXT_CHAVE_ACESSO_EMISSOR.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL
        Should Contain     ${text}                     "XPTO"

Então eu posso verificar que o arquivo FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_FIT_ERP_XML_ID_NOTA_FISCAL.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT
        Should Contain     ${text}                     NFE-RET-ENVIA-TEXTO-INTEGRACAO-RECTO-ERP

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT, foi recebido com sucesso 
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_RECTO_ERP_TRADEIT.xml
  
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_DISTRIBUICAO.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO
        Should Contain      ${text}                     XML Recebido com sucesso
    
Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO.xml
    
#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL
        Should Contain      ${text}                     NFE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso|

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_PAINELFISCAL.xml

#-----------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_NFSE_RPS.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_NFSE_RPS.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_NFSE_RPS.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_NFSE_RPS
        Should Contain      ${text}                     <?xml version="1.0" encoding="UTF-8"?>
   
Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_NFSE_RPS, foi recebido com sucesso   
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_NFSE_RPS.xml
   
#------------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL
        Should Contain      ${text}                     Documento emitido por ME ou EPP optante pelo Simples Nacional.
    
Então eu posso verificar que o arquivo FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL, foi recebido com sucesso    
        Should Exist        ${request_retorno}${/}FIT_NFE_RECEBE_XML_NFSE_ID_NOTA_FISCAL.xml
    
#------------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR
        Should Contain      ${text}                     NFE-RET-ENVIA-TEXTO-INTEGRACAO

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFSE_FIT_VALIDAR.xml

#------------------------------------------------------------------------------
Enviar o arquivo FIT_NFE_STATUS_SERVICO_DC.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_STATUS_SERVICO_DC.xml
        Set Test Variable   ${response}


Verificar se o arquivo de retorno FIT_NFE_STATUS_SERVICO_DC.xml foi recebido com sucesso
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_STATUS_SERVICO_DC
        Should Contain      ${text}                     Serviço em Operação
        Should Exist        ${request_retorno}${/}FIT_NFE_STATUS_SERVICO_DC.xml

#------------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA
        Should Contain      ${text}                     XML Recebido com sucesso
  
Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA, foi recebido com sucesso  
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_XML_TERCEIROS_SEM_LICENCA.xml
  
#------------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC
        Should Contain      ${text}                     XML Recebido com sucesso

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_ASSINC.xml

#------------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2
        Should Contain      ${text}                     XPTO|3|XML ja consta na base

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2, foi recebido com sucesso
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC2.xml
   
#------------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC.xml
        Set Test Variable   ${response}

Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC
        Should Contain      ${text}                     XPTO|3|XML ja consta na base

Então eu posso verificar que o arquivo FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC, foi recebido com sucesso        
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_XML_DISTRIBUICAO_SINC.xml
   
#------------------------------------------------------------------------------
Dado que eu envie um arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B.xml
        ${response}         Call SOAP Method With XML    ${requests_generator}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B.xml
        Set Test Variable   ${response}


Quando eu fizer a verificação do arquivo de retorno FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B.xml
        ${text}             Get Data From XML By Tag    ${response}    return  
        Save XML To File    ${response}                 ${CURDIR}      ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B
        Should Contain      ${text}                     NFE-RET-ENVIA-TEXTO-INTEGRACAO|1|Arquivo Recebido com sucesso
  
Então eu posso verificar que o arquivo FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B, foi recebido com sucesso  
        Should Exist        ${request_retorno}${/}FIT_NFE_ENVIA_TEXTO_INTEGRACAO_NFE_B2B.xml
