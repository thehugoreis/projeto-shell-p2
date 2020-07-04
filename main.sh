#!/bin/bash
#Menu principal do projeto
#ver 1.0

OPC=$(dialog --stdout\
   --title 'Menu principal'\
   --menu 'Escolha uma das funções disponiveis:'\
   0 0 0\
   1 '- Criar novo compartilhamento SAMBA'\
   2 '- Criar nova pasta e HTML no APACHE'\
   3 '- Acessar compartilhamento SAMBA com smbclient'\
   4 '- Sobre'\
   5 '- Relatório IP'\
   6 '- Sair')

CAM=("opcs/")

case $OPC in
        1) 
        echo ""
		echo -n 'Abrindo opção selecionada...'
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && \
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && \
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && sleep 1 && echo "..."
		$CAM/opc1.sh
        ;;
        2) 
        echo ""
		echo -n 'Abrindo opção selecionada...'
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && \
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && \
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && sleep 1 && echo "..."
		$CAM/opc2.sh
		;;
        3) 
        echo ""
		echo -n 'Abrindo opção selecionada...'
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && \
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && \
		sleep 1 && echo -n "......." && sleep 1 && echo -n "......." && sleep 1 && echo "..."
		$CAM/opc3.sh
		;;
        4) 
		dialog --textbox sobre 0 0
		clear
		;;
		5) 
		$CAM/relatorioIP.sh
		clear
		;;
        6) 
		echo 'Saindo do programa'
		clear
		;;
        *) 
		echo'opção inválida'
		;;
esac