## Liberar SSL pelo cloudflare alternativa

## RODAR OS COMANDOS ABAIXO ##


```bash
sudo apt-get update
```
```bash
sudo apt-get install certbot
```

```bash
sudo apt-get install python3-certbot-dns-cloudflare
```

```bash
sudo apt-get install python3-certbot-nginx
```

Criar esse arquivo com dados abaixo, com nano para salvar aperta Ctrl + x
```bash
nano cloudflare.ini
```

```bash
dns_cloudflare_email = teu email
dns_cloudflare_api_key = tua api
```

exemplo usando usuario deploy, casom for outro trocar dados
```bash
mkdir -p /home/deploy/.secrets/certbot/
```

```bash
mv cloudflare.ini /home/deploy/.secrets/certbot
```

```bash
sudo certbot certonly --dns-cloudflare --dns-cloudflare-credentials /home/deploy/.secrets/certbot/cloudflare.ini -d frontend.seudominio.com.br -d backend.seudominio.com.br --dns-cloudflare-propagation-seconds 60
```

```bash
sudo certbot --nginx
```