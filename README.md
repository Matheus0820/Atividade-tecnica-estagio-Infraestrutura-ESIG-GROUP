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
- No diretório raiz digite: ```sudo wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.zip -d /opt/```
- Vá para o diretório ```/opt/apache-tomcat-8.5.100/bin/```
- Digite o seguinte comando: ```chmod +x *.sh```
- Execulte o arquivo **startup.sh** para iniciar o servidor: ```./startup.sh```

### Instalando e iniciando o JBoss WildFly 31.0.1
- No diretório raiz digite: ```sudo wget https://github.com/wildfly/wildfly/releases/download/32.0.1.Final/wildfly-32.0.1.Final.zip -d /opt/```
- Vá para o diretório ```/opt/wildfly-32.0.1.Final/bin/```
- Digite o seguinte comando: ```chmod +x *.sh```
- Execulte o arquivo **standalone.sh** para iniciar o servidor: ```./standalone.sh```

