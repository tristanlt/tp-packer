# Exemple Packer sur OpenStack IMT
Développement d'image de machine virtuelle. 

## Installation de Packer

wget https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_linux_amd64.zip
unzip packer_1.3.4_linux_amd64.zip
rm -f packer_1.3.4_linux_amd64.zip
export PATH=$PATH:.

## Structure d'un fichier source Packer

Un fichier Packer se découpe en plusieurs zones:
* la définition de variables "utilisateurs" ( c.a.d utilisable dans le fichier de définition )
* définition des builders et des parametres du builder ( plusieurs builders peuvent être définits openstack & docker, openstack et aws...)
* les actions à executer sur la machine avant le transformation en image

## Variables utilisateur

Exemple de récupération d'une variable d'environnement:

```
{
	"variables":{
	"testvar": "{{env `PRODUCTION_STATE`}}"
	}
...

Utilisation dans le fichier de définition: 
```
parameter: {{ user `testvar` }}
```

Les variables utilisateur peuvent également être fournit dans un fichier json lors du lancement de la commande packer. 

```
packer build -var-file prodution.json def_image.json
```

## Build d'une image 

```
packer build u16custom.json
```

