# Formation Pierre - Docker AWS

## Création d'instance AWS via la console

Instance EC2 créée dans la région Paris (eu-west-3c).
Paramètres du groupe de sécurité:

Type | Protocole | Ports | Source
--- | --- | --- | ---
SSH | TCP | 22 | 0.0.0.0/0
Perso | TCP | 3000 | 0.0.0.0/0

Type d'instance: t2.micro
OS: ubuntu-18.04