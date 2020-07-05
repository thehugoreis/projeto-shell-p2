#!/bin/bash
#Lista usuários - resposta questão 2
#ver 1.0

nusuario=$(dialog --stdout --title 'Nome do Usuário' \
    --inputbox 'Digite o nome do novo usuário' 0 0)
nsenha=$(dialog --stdout --title 'Senha do usuário' \
    --inputbox 'Digite o senha do novo usuário' 0 0)
ndepartamento=$(dialog --stdout --title 'Departamento do usuário' \
    --inputbox 'Digite o departamento do novo usuário' 0 0)
    
echo "$nusuario;$nsenha;$ndepartamento" >> ap2.txt


dialog --yesno 'Deseja adicionar novo usuário?' 5 50

if [ $? = 0 ]; then
    opcs/addusuario.sh
else
    dialog --msgbox 'ok, finalizando programa' 5 50
    clear
fi
