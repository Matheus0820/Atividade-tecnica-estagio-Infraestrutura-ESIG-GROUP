#!/bin/bash


SERVICE_NAME_TOMCAT="tomcat" # Nome do servico Tomcat
SERVICE_NAME_JBOOS="wildfly" # Nome do servico do Jboss


STATUS_FILE_TOMCAT="/tmp/tomcat_status.txt" # Arquivo status de tempo de execulcao do Tomcat
STATUS_FILE_JBOSS="/tmp/tomcat_status.txt" # Arquivo status de tempo de execulcao do Jboss


while true; do
    # Verifica se o Tomcat está rodando
    if ps aux | grep -v grep | grep $SERVICE_NAME_TOMCAT | cut -c -60
    then
        # Atualiza o tempo no arquivo do Tomcat
        date +%s > $STATUS_FILE_TOMCAT
        echo "Tomcat está rodando."
    else
        echo "Tomcat não está rodando."

        # Verifica o tempo que o Tomcat está parado
        if [ -f $STATUS_FILE_TOMCAT ]; then
            LAST_RUNNING_TIME=$(cat $STATUS_FILE_TOMCAT)
            CURRENT_TIME=$(date +%s)
            TIME_DIFF=$((CURRENT_TIME - LAST_RUNNING_TIME))

            if [ $TIME_DIFF -gt 60 ]; then
                echo "Tomcat está parado por mais de um minuto"
           	sudo /opt/apache-tomcat-8.5.100/bin/startup.sh
           	echo "Tomcat instancia do tomcat no ar novamente"
	    fi
        else
            # Se o arquivo de status não existir, cria-o com o tempo atual
            date +%s > $STATUS_FILE_TOMCAT
        fi
    fi
    
    # Verifica se o Jboss esta rodando
    if ps aux | grep -v grep | grep $SERVICE_NAME_JBOSS | cut -c -60
    then
    	# Atualiza o tempo no arquivo do Tomcat
        date +%s > $STATUS_FILE_JBOSS
        echo "Jboss está rodando."
    else
        echo "Jboss não está rodando."

        # Verifica o tempo que o Jboss está parado
        if [ -f $STATUS_FILE_JBOSS ]; then
            LAST_RUNNING_TIME=$(cat $STATUS_FILE_JBOSS)
            CURRENT_TIME=$(date +%s)
            TIME_DIFF=$((CURRENT_TIME - LAST_RUNNING_TIME))

            if [ $TIME_DIFF -gt 60 ]; then
                echo "Jboss está parado por mais de um minuto"
           	sudo /opt/wildfly-32.0.1.Final/bin/standalone.sh
           	echo "Instancia do Jboss no ar novamente"
	    fi
        else
            # Se o arquivo de status não existir, cria-o com o tempo atual
            date +%s > $STATUS_FILE_JBOSS
        fi
    fi

    # Espera 60 segundos antes de executar novamente
    sleep 60
done
