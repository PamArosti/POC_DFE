*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${BROWSER}                      firefox
${CABECALHO}                    xpath=.//span[@id='viewTopo:idEmpresaSelecionada']
${URL}                          https://www.hom.dfe.cloudfiscal.com/DFE/frmNFE_Default.fitx  
${OPCOES_MENU}                  xpath=//tbody/tr[@valign='middle']/td[@class='rich-toolbar-item toolBarMenu']/div[@id='viewMenu:frmMenu:j_id_jsp_2127094589_96pc5']/div[1]
${CAMPO_PESQUISAR_NFE}          xpath=//input[@id='frmConsultaNotas:nrNfeInicial']
${BOTAO_PESQUISAR}              xpath=//input[@id='frmConsultaNotas:btnPesquisarNFe']
${CAMPO_PESQUISAR_NFCE}         xpath=//input[@name='frmConsultaNotas:j_id_jsp_1146127197_31']
${CAMPO_PESQUISAR_CTE}          xpath=//input[@id='frmConsultaCTe:nrNfeInicial']
${CAMPO_PESQUISAR_NFSE}         xpath=//input[@name='frmConsultaNotas:j_id_jsp_1554522894_26']
${CAMPO_PESQUISAR_MDFE}         xpath=//input[@name='frmConsultaNotas:j_id_jsp_1652083099_24']
${BOTAO_PESQUISAR_CTE}          xpath=//input[@id='frmConsultaCTe:btnPesquisarCTe']
${BOTAO_PESQUISAR_NFSE}         xpath=//input[@id='frmConsultaNotas:j_id_jsp_1554522894_41']
${BOTAO_PESQUISAR_MDFE}         xpath=//input[@id='frmConsultaNotas:btnPesquisarNFe']
${RESULT}                       xpath=//td[@id='frmConsultaNotas:gridConsultaNFe:0:j_id_jsp_1989195815_129']
${RESULT_NFCE}                  xpath=//td[@id='frmConsultaNotas:gridConsultaNFe:0:j_id_jsp_1146127197_105']
${RESULT_CTE}                   xpath=//td[@id='frmConsultaCTe:gridConsultaCTe:0:j_id_jsp_1355730375_102']
${RESULT_NFSE}                  xpath=//td[@id='frmConsultaNotas:gridConsultaNFe:0:j_id_jsp_1554522894_95']
${RESULT_MDFE}                  xpath=//td[@id='frmConsultaNotas:gridConsultaNFe:0:j_id_jsp_1652083099_62']
${OPTIONS_BAR}                  xpath=//td[@id='frmConsultaCTe:gridConsultaCTe:0:j_id_jsp_1355730375_108']