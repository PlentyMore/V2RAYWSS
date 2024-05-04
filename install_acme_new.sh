git clone https://github.com/acmesh-official/acme.sh.git
cd ./acme.sh
./acme.sh --install

sudo apt-get install socat

acme.sh --set-default-ca --server letsencrypt


acme.sh --issue -d area.example.com -d cdnarea.example.com --standalone

acme.sh --install-cert -d area.example.com \
--key-file       /home/{user}/V2RAYWSS/config/autossl.key  \
--fullchain-file /home/{user}/V2RAYWSS/config/autossl.pem \
--reloadcmd     "docker restart nginx"
