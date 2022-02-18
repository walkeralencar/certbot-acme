# Docker - Certbot - Acme
Based on: [Digital Ocean - Let's Encrypt Certificate Using DNS Validation Guide.](https://www.digitalocean.com/community/tutorials/how-to-acquire-a-let-s-encrypt-certificate-using-dns-validation-with-acme-dns-certbot-on-ubuntu-18-04)

## How to Use
1) Build docker image 
```bash
$ docker build -t acme ./
```
2) Add into your ~/.bash_aliases 
```bash
$ alias certbot='docker run -it --rm --name certbot -v "/etc/letsencrypt:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" acme certbot certonly --manual --manual-auth-hook /etc/letsencrypt/acme-dns-auth.py --preferred-challenges dns --debug-challenges -d'
```
3) type: ```$ certbot your.domain``` and follow the steps, at end you will receive a msg like following:
```
IMPORTANT NOTES:
 - Congratulations! Your certificate and chain have been saved at:
   /etc/letsencrypt/live/your.domain/fullchain.pem
   Your key file has been saved at:
   /etc/letsencrypt/live/your.domain/privkey.pem
   Your cert will expire on YYYY-MM-DD. To obtain a new or tweaked
   version of this certificate in the future, simply run certbot
   again. To non-interactively renew *all* of your certificates, run
   "certbot renew"
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
 - If you like Certbot, please consider supporting our work by:

   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le
```   

## Thanks to 
@fvcdaniel for the tips and par programming. :D