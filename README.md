# README - Commandes Linux et Unix

Ce fichier README présente un ensemble de commandes Unix et Linux couramment 
utilisées, ainsi que des explications sur leur utilité.

## Unix vs. BSD vs. Linux

Unix, BSD (Berkeley Software Distribution), et Linux sont trois familles de 
systèmes d'exploitation Unix-like. Unix est le système d'exploitation 
original, tandis que BSD est basé sur Unix et Linux est une implémentation 
Unix-like open source. Chacun d'entre eux a ses propres variantes et 
distributions.

## Commandes système

### `uname -a`

La commande `uname -a` affiche des informations sur le système, notamment le 
nom du noyau, la version du système d'exploitation, le type de machine, etc.

### `which COMMAND`

`which COMMAND` permet de déterminer le chemin absolu de l'exécutable d'une 
commande donnée. Utile pour savoir quelle version d'une commande est 
exécutée.

### `echo`

La commande `echo` est utilisée pour afficher du texte ou des variables à la 
sortie standard.

### `man`

`man` est la commande pour afficher le manuel d'utilisation d'une commande. 
Par exemple, `man ls` affichera le manuel de la commande `ls` avec des 
informations sur son utilisation et ses options.

## Système de fichiers

### `cd`

La commande `cd` est utilisée pour changer de répertoire. Vous pouvez 
spécifier un chemin absolu ou relatif pour naviguer dans la structure des 
répertoires.

### `pwd`

`pwd` affiche le répertoire de travail actuel (chemin absolu) dans lequel 
vous vous trouvez.

### `ls`

`ls` est utilisé pour lister les fichiers et répertoires dans un répertoire 
donné. Les options courantes incluent `-l` pour une liste détaillée, `-h` 
pour afficher les tailles de fichiers lisible par l'homme, `-a` pour afficher 
les fichiers cachés, et `-R` pour une liste récursive.

### `echo *` vs. `tree`

`echo *` affiche simplement tous les fichiers et répertoires dans le 
répertoire actuel, tandis que `tree` affiche de manière récursive la 
structure complète de répertoires, sous forme d'arborescence.

### `mkdir -p -m`

`mkdir` est utilisé pour créer un nouveau répertoire. L'option `-p` permet de 
créer les répertoires parents s'ils n'existent pas, et `-m` permet de 
spécifier les permissions lors de la création.

### `rm` vs. `rmdir`

`rm` est utilisé pour supprimer des fichiers ou des répertoires, tandis que 
`rmdir` est utilisé spécifiquement pour supprimer des répertoires vides.

### `mv`

La commande `mv` est utilisée pour déplacer ou renommer des fichiers et des 
répertoires.

### `cp`

`cp` permet de copier des fichiers ou des répertoires. Vous pouvez spécifier 
l'option `-r` pour la copie récursive de répertoires.

### `ln` (lien dur vs. lien symbolique)

`ln` est utilisé pour créer des liens entre fichiers. Un lien dur (`ln`) crée 
une référence physique vers le même fichier, tandis qu'un lien symbolique 
(`ln -s`) crée une référence vers le chemin du fichier cible.

## Réseau

### `netstat -laput`

La commande `netstat` permet d'afficher des informations sur les connexions 
réseau, les tables de routage, les interfaces réseau, etc.

### `ifconfig`

`ifconfig` est utilisé pour configurer et afficher les informations sur les 
interfaces réseau.

### `nmap`

`nmap` est un utilitaire de découverte de réseau et d'audit de sécurité qui 
permet de scanner les ports et les services d'une machine distante.

### `traceroute`

`traceroute` est utilisé pour suivre le chemin qu'un paquet réseau prend pour 
atteindre une destination, en affichant chaque saut intermédiaire.

### `ping`

La commande `ping` est utilisée pour tester la connectivité réseau en 
envoyant des paquets ICMP à une adresse IP pour vérifier si elle est 
accessible et mesurer le temps de réponse.

## Redirection

### `|`

Le symbole `|` permet de rediriger la sortie d'une commande vers l'entrée 
d'une autre commande, créant ainsi un pipeline de traitement.

### `>`

`>` est utilisé pour rediriger la sortie standard d'une commande vers un 
fichier, écrasant le contenu existant du fichier.

### `>&`

`>&` est utilisé pour rediriger à la fois la sortie standard (stdout) et la 
sortie d'erreur standard (stderr) vers un fichier ou un autre descripteur de 
fichier.

### `>>`

`>>` est utilisé pour rediriger la sortie standard d'une commande vers un 
fichier en mode d'ajout, sans écraser le contenu existant du fichier.

### `/dev/null`

`/dev/null` est un périphérique spécial qui absorbe toute donnée qui lui est 
écrite. Il est souvent utilisé pour supprimer la sortie indésirable d'une 
commande en la redirigeant vers le néant.

Ces commandes et concepts constituent une base solide pour travailler avec 
Linux et Unix. N'hésitez pas à consulter les manuels (`man`) de ces commandes 
pour plus d'informations sur leurs options et leur utilisation.

## Globbing

Le globbing est une fonctionnalité puissante dans les systèmes Unix et Linux 
qui permet de faire correspondre des fichiers et des répertoires en utilisant 
des motifs (wildcards) dans les noms de fichiers. Voici quelques 
caractéristiques courantes du globbing :

### `*` (Astérisque)

L'astérisque `*` est utilisée pour faire correspondre n'importe quel nombre 
de caractères, y compris aucun. Par exemple, `*.txt` correspondra à tous les 
fichiers avec l'extension `.txt` dans le répertoire courant.

### `?` (Point d'interrogation)

Le point d'interrogation `?` est utilisé pour faire correspondre exactement 
un caractère unique. Par exemple, `file?.txt` correspondra à des fichiers 
tels que `file1.txt`, `fileA.txt`, mais pas `file12.txt`.

### `[]` (Tableaux de valeurs)

Les crochets `[]` permettent de spécifier une liste de caractères possibles 
pour une position donnée dans le nom de fichier. Par exemple, `[aeiou]*` 
correspondra à tous les fichiers dont le nom commence par une voyelle.

### `..` (Générateurs de séquence)

Les générateurs de séquence `..` permettent de spécifier un intervalle de 
valeurs numériques. Par exemple, `file{1..3}.txt` correspondra à `file1.txt`, 
`file2.txt`, et `file3.txt`.

Le globbing est une technique puissante pour effectuer des opérations sur 
plusieurs fichiers en une seule commande, que ce soit pour la recherche, la 
copie ou la suppression. Il est largement utilisé dans les scripts shell et 
les commandes en ligne de commande pour traiter des ensembles de fichiers en 
fonction 
de modèles de noms de fichiers.
