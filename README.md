## CRIAR SUBDOMINIO E APONTAR PARA O IP DA SUA VPS

Testado ubuntu 20 e 22


Editar arquivo config e colocar senhas de sua preferencia e seu email, dominios.

Se quiser instalar 2 instancia mudar nome da instancia, porta backend, porta frontend e porta_postgre_intancia, não deve utilizar mesmas portas de outras instalações

A opção atualizar vai pegar ultima versao do repositorio usado para instalar


## CHECAR PROPAGAÇÃO DO DOMÍNIO

https://dnschecker.org/

## RODAR OS COMANDOS ABAIXO ##

para evitar erros recomendados atualizar sistema e apos atualizar reniciar para evitar erros

 apt -y update && apt -y upgrade
 reboot
 
Depois reniciar seguir com a instalacao

cd /root
git clone https://github.com/cleitonme/izing.instalador.git izinginstalador

sudo chmod +x ./izinginstalador/izing
cd ./izinginstalador
sudo ./izing

===================================================
