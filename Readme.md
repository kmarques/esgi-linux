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

chown
chmod

