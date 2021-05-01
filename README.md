# OPEN VPN (running in docker)

Now your whole system is not connected to VPN. Just run open-vpn in docker and keep VPN separate from the system. This is very great while using multiple tools/things on the same machine

## Installation

Install docker and docker compose in your host machine.

```bash
Replace vpn_user and vpn_password in auth.txt file
Replace vpn-config.ovpn from your original x.ovpn file
Put your x.pem file in folder
Change the file path in docker (i.e)
-  ./vpn-client.ovpn:/opt/openvpn/vpn-client.ovpn:ro
- ./auth.txt:/etc/openvpn/client/auth.txt:ro
- ./staging_xxxx.pem:/staging_xxxx.pem:ro

git clone <REPO URL>
docker-compose up --build -d
docker exec -it <DOCKER CONTAINER ID> /bin/sh
ssh -i xxxx.pem user@ip
```

## Usage

```nodejs
A separate docker container running open_vpn on your host machine.

```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.