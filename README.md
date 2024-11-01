[![Grupo do WhatsApp](https://img.shields.io/badge/WhatsApp-Grupo%20IZING-brightgreen.svg)](https://chat.whatsapp.com/IIReEheixAx27ZbneHpskP)

## CRIAR SUBDOMINIO E APONTAR PARA O IP DA SUA VPS

Testado ubuntu 20 e 22


Editar arquivo config e colocar senhas de sua preferencia e seu email, dominios.

Se quiser instalar 2 instancia mudar nome da instancia, porta backend, porta frontend e porta_postgre_intancia, não deve utilizar mesmas portas de outras instalações

A opção atualizar vai pegar ultima versao do repositorio usado para instalar

Nunca usar portas 80 e 443 para backend utilize porta 3000 a 3100 e frontend 4000 a 4100


## CHECAR PROPAGAÇÃO DO DOMÍNIO

https://dnschecker.org/

## RODAR OS COMANDOS ABAIXO ##

Antes de iniciar verifique no site acima se propagou o dns. Para não ter erro na instalaçao

Para evitar erros recomendados atualizar sistema e apos atualizar reniciar para evitar erros

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

Você pode definir o timezone desejado usando a variável de ambiente TIMEZONE. Caso não seja informado, o sistema usará o timezone padrão: America/Sao_Paulo.
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
Utilizado UFW para saber mais de pesquisada no google.

## Instalando
Seguem links sugerimos:
-  [Como usar autoinstalador do IZING - Video](https://youtu.be/-Woqu4W5Zzs?si=jcZYX3yPL60XkAd_)
-  [Como usar autoinstalador do IZING - Video opção 2](https://youtu.be/bZ-jXRtcGyc?si=B8oQxv0V0V36fgrF)

## Alterar Frontend

Para mudar nome do aplicativo:

/home/deploy/izing.io/frontend/quasar.conf

/home/deploy/izing.io/frontend/src/index.template.html

Para alterar logos e icones:

pasta /home/deploy/izing.io/frontend/public

Para alterar cores:

/home/deploy/izing.io/frontend/src/css/app.sass

/home/deploy/izing.io/frontend/src/css/quasar.variables.sass

Sempre alterar usando usuario deploy você pode conectar servidor com aplicativo Bitvise SSH Client. Depois das alterações compilar novamente o Frontend

```bash
su deploy
```
```bash
cd /home/deploy/pastaondetainstalado/frontend/
```
```bash
export NODE_OPTIONS=--openssl-legacy-provider
```
```bash
npx quasar build -P -m pwa
```

Testar as alterações em aba anonima

## Erros

"Internal server error: SequelizeConnectionError: could not open file \"global/pg_filenode.map\": Permission denied"

```bash
docker container restart postgresql
```
```bash
docker exec -u root postgresql bash -c "chown -R postgres:postgres /var/lib/postgresql/data"
```
```bash
docker container restart postgresql
```

## Acesso Portainer gerar senha
"Your Portainer instance timed out for security purposes. To re-enable your Portainer instance, you will need to restart Portainer."

```bash
docker container restart portainer
```

Depois acesse novamente url http://seuip:9000/


## Recomendação de VPS boa e barata

-  [Powerful cloud VPS & Web hosting.](https://control.peramix.com/?affid=58)

- Cupom 25% desconto "WHAZING"

```bash
WHAZING
```
#### Curtiu? Apoie o projeto!! Com sua doação, será possível continuar com as atualizações. Segue QR code (PIX)  

[<img src="donate.jpg" height="160" width="180"/>](donate.jpg)

## Consultoria particular

Para quem gostaria de uma consultoria ou que eu faça instalação pode chamar no whatsapp (será cobrado por isso) 48 999416725 

-  [Nova Versão com API Bayles](https://github.com/cleitonme/Whazing-SaaS.instalador)
