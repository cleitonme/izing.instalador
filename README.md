## CRIAR SUBDOMINIO E APONTAR PARA O IP DA SUA VPS

Testado ubuntu 20 e 22


Editar arquivo config e colocar senhas de sua preferencia e seu email, dominios.

Se quiser instalar 2 instancia mudar nome da instancia, porta backend, porta frontend e porta_postgre_intancia, não deve utilizar mesmas portas de outras instalações

A opção atualizar vai pegar ultima versao do repositorio usado para instalar

Nunca usar portas 80 e 443 para backend utilize porta 3000 a 3100 e frontend 4000 a 4100


## CHECAR PROPAGAÇÃO DO DOMÍNIO

https://dnschecker.org/

## RODAR OS COMANDOS ABAIXO ##

para evitar erros recomendados atualizar sistema e apos atualizar reniciar para evitar erros

```bash
apt -y update && apt -y upgrade
```
```bash
reboot
```

 
Depois reniciar seguir com a instalacao

```bash
cd /root
```
```bash
git clone https://github.com/cleitonme/izing.instalador.git izinginstalador
```
Editar dados com seus dados, com nano para salvar aperta Ctrl + x
```bash
nano ./izinginstalador/config
```
```bash
sudo chmod +x ./izinginstalador/izing
```
```bash
cd ./izinginstalador
```
```bash
sudo ./izing
```

## Problemas conexão whatsapp? ##

Tente atualizar o Conector WWebJS whatsapp.js


## Recomendação de instalar e deixar Firewall ativado

Seu servidor pode sofrer ataques externos que fazem sistema travar e ter quedas por favor instale e mantenha o firewall ativado.

## Instalando
Seguem links sugerimos:
-  [Como usar autoinstalador do IZING - Video](https://youtu.be/bZ-jXRtcGyc?si=B8oQxv0V0V36fgrF)


## Recomendação de VPS boa e barata

-  [Powerful cloud VPS & Web hosting.](https://control.peramix.com/?affid=58)

## Consultoria particular

Para quem gostaria de uma consultoria ou que eu faça instalação pode chamar no whatsapp 48 999416725 (será cobrado por isso)

-  [Versão pro do IZING](https://github.com/cleitonme/izing.pro.install)