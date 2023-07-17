Passo 01 = Instalando o Python - https://www.python.org/downloads/

Passo 02 = Instalando o VS Code

Primeiramente realize o download do assistente de instalação, o processo de instalação é bem simples,

basta seguir o modo padrão de instalação de programas no Windows (next, next, next, install).

[https://code.visualstudio.com/Download]


Passo 03 = Instalando o Robot Framework

Inicialmente crie uma pasta no diretório raiz C:\ com o nome do projeto, e abra o git bash para execução dos comandos de instalação: 

pip install robotframework

Para saber se deu tudo certo no prompt de comando (cmd) execute:

robot --version.

= Passo 04 = Instalando as bibliotecas que serão utilizadas em seu ambiente de teste

Entre com os seguintes prompts de comando:

pip install robotframework-seleniumlibrary
pip install robotframework-soaplibrary
pip install robotframework-selenium2library
pip install robotframework-requests
pip install webdrivermanager
pip install robotframework-dependencylibrary

= Passo EXTRA = Para testes que envolvem o Selenium, você também precisará baixar os drivers que simulam os browsers

Baixe o driver abaixo e o coloque em C:\Python27\Scripts:

Chrome driver https://sites.google.com/a/chromium.org/chromedriver/downloads

----------------------------------------------------------------------------------------
Passo 05:

Para executar todos os testes dentro da suite, utilize os comandos abaixo:

Navegue até a pasta onde os cenários se encontram nas pastas
Ex: cd .\test\features

python -m robot -d ./logs .\