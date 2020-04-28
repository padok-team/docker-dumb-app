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

## Deploying on current machine

### Deploy
To deploy the app from a specific branch locally, run (BRANCH argument defaults to `master`):
```bash
scripts/deploy [BRANCH]
```

### Clean up
To clean up any deployment locally, run:
```bash
scripts/clean
```

## Deploying on remote ec2 instance

### Deploy 

To deploy on our remote ec2 instance, the following command is available:
```bash
scripts/deploy-remote IDENTITY_FILE [BRANCH]
```
Where
- `IDENTITY_FILE` is the path to your `.pem` identity file for ssh connection
- `BRANCH` is the branch you wish to deploy (defaults to `master`)

### Clean up
To clean up the remote ec2 instance, the following command is available:
```bash
scripts/clean-remote IDENTITY_FILE
```
Where
- `IDENTITY_FILE` is the path to your `.pem` identity file for ssh connection
