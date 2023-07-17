***Settings***
Library           SoapLibrary
Library           Collections
Library           OperatingSystem
Library           String
Library           XML    use_lxml=True

***Variables***
${URI_API}      https://www.hom.dfe.cloudfiscal.com/WSFit_dfe4/NfeApiWSBean?wsdl
${requests_dir}                            ${CURDIR}${/}generator/enviar
${requests_generator}                      ${CURDIR}${/}generator
${requests_generator_nt}                   ${CURDIR}${/}generator/NFE_ENVIA_TEXTO_AUTORIZACAO_NT
${request_retorno}                         ${CURDIR}${/}return

${sequencia}                      ${CURDIR}

***Keywords***
###SETUP E TEARDOWNS
Conecta API NF-e
        Create Soap Client      ${URI_API}
        Log To Console          ${URI_API}
