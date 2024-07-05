# Atividade Técnica Estágio Infraestrutura - ESIG GROUP
#### Desenvolvido por: **Matheus Ramos Ferreira da Silva**

## Objetivo da atividade:
- Essa atividade tem como objetivo criar um script que realize um **dump** e um **restore** em um banco de dados PostgreSQL e também verificar o status das instâncias do **JBoss** e **Tomcat** em um ambiente de teste.

## Pré requisitos do projeto:
- Ubuntu 22.04.3
- PostgreSQL: ```sudo apt install postgresql; sudo apt install postgresql-contrib```
- Pgadmin4 - Se preferir o banco de dados e as tabelas podem ser criadas via linha de comando
- JAVA: ```sudo apt install default-jre; sudo apt install default-jdk```
- Apache Tomcat 8.5.100
- JBoss WildFly 31.0.1

### Instalando e iniciando o Apache Tomcat 8.5.100
- Clonar esse repositório através do comando: ```git clone https://github.com/Matheus0820/Atividade-tecnica-estagio-Infraestrutura-ESIG-GROUP.git```
- Vá para o diretório **Atividade-tecnica-estagio-Infraestrutura-ESIG-GROUP/depedencias/** e copie o arquivo **apache-tomcat-8.5.100.zip** para a o diretório **/opt/**
- Descompacte o arquivo utilizando o **unzip** com o seguinte comando: ```unzip apache-tomcat-8.5.100.zip```
- Vá para o diretório **/apache-tomcat-8.5.100/bin/**
- Digite o seguinte comando: ```chmod +x *.sh```
- Execulte o arquivo **startup.sh** para iniciar o servidor: ```./startup.sh```
- Acesso no navegador o endereço: **localhost:9090** ou **127.0.0.1:9090**

### Instalando e iniciando o JBoss WildFly 31.0.1
- No diretório raiz digite: ```sudo wget https://github.com/wildfly/wildfly/releases/download/32.0.1.Final/wildfly-32.0.1.Final.zip -d /opt/```
- Vá para o diretório ```/opt/wildfly-32.0.1.Final/bin/```
- Digite o seguinte comando: ```chmod +x *.sh```
- Execulte o arquivo **standalone.sh** para iniciar o servidor: ```./standalone.sh```
- Acesse no navegador o endereço: **localhost:8080** ou **127.0.0.1:8080**

## Executando Scripts:
### Scripts de **dump** e **restore**:
- Com repositório clonado copie o os arquivos **dump.sh** e **restore.sh** da pasta **Atividade-tecnica-estagio-Infraestrutura-ESIG-GROUP/scripts/dump_restore/** para o diretório raiz
- Entre nos arquivos e coloque o nome do banco de dados
- Execute primeiramente o arquivo **dump.sh** para fazer o backup do seu banco: ```./dump.sh```
- Execute agora o arquivo **restore.sh** para fazer a restauração do seu banco de dados: ```./restore.sh```

### Script de Instâncias **Tomcat** e **Jboss**:
- Copie o arquivo **verifica_instancias.sh** do ditetório **Atividade-tecnica-estagio-Infraestrutura-ESIG-GROUP/scripts/instancias-jboos-tomcat/** para o diretório raiz
- Modifique o caminho para os arquivos de execução dos servidores Tomcat e Jboss e salve
- Execute o arquivo **verifica_instancias.sh** para fazer a verificação por tempo indeterminado: ```./verifica_instancias.sh &```
 


