# Exercices

## github.com/kmarques/esgi-linux

## Exercice 1
Créer un système de backup de dossier.
**Etape 1** : Créer un fichier listant les fichiers à sauvegarder présent au niveau 1.
Incorporer le chemin relatif du fichier à sauvegarder et sa taille en human-readable.
```text
nom_du_fichier1 taille_du_fichier1
nom_du_fichier2 taille_du_fichier2
```
**Etape 2** : Créer une archive au format zip contenant le dossier à sauvegarder et le fichier listant les fichiers à sauvegarder.
Nommer l'archive avec la date du jour et le nom du dossier.
```text
2020-01-01_nom_du_dossier.zip
```

**Exemple**:
```bash
$ ls ./to_backup
fichier1.txt fichier2.txt fichier3.txt toto
$ bash ./backup.sh ./to_backup
2020-01-01_to_backup.zip backed up here
$ unzip 2020-01-01_to_backup.zip
$ ls ./2020-01-01_to_backup
fichier1.txt fichier2.txt fichier3.txt toto list.txt
$ cat ./2020-01-01_to_backup/list.txt
fichier1.txt 1.2K
fichier2.txt 50B
fichier3.txt 1.2M
toto 1.2G
$ bash ./backup.sh --dest ./back ./to_backup
2020-01-01_to_backup.zip backed up in ./back
```

**Bonus**: Pouvoir choisir la destination de l'archive avec une option --dest, option toujours avant le dossier à sauvegarder.
```bash
$ bash ./backup.sh --dest /tmp ./to_backup
2020-01-01_to_backup.zip backed up in /tmp
$ ls /tmp
2020-01-01_to_backup.zip
```

**Commandes utiles**: cut, zip, unzip, du, tar, date

## Exercice 2

Créer un script qui prend en argument un nombre d'étape et une valeur maximale. Ce script doit aficher la valeur factorielle de chaque étape jusqu'à la valeur maximale.

**Exemple**:
```bash
$ bash ./factorial.sh 5 10
6
$ bash ./factorial.sh 5 150
120
```
**Commandes utiles**: Aucune nécessaire