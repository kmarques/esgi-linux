# Script Shell

## Head line

`#! /bin/sh` : Spécifier le binaire qui va interpréter le fichier, ici *shell*

## Variables

`VAR=1` : Initialise la variable VAR avec la valeur 1
`echo $VAR` : Affiche le contenu de la variable VAR
`echo $VAR fruit` : `1 fruit`
`echo $VARL` : ~~`1L`~~ ` `
`echo ${VAR}L` : `1L`

Plein d'options de substitutions existent, ex : 
`echo ${VAR1=test}` : si VAR1 n'existe pas, défaut `test`
`echo ${VAR/1/T}` : remplace les occurences de 1 en T dans la variable VAR

### Les tableaux  
`declare -a MY_ARRAY` : déclare un tableau itératif (optionnel) 
`MY_ARRAY=("toto" "titi" "tata")` : tableau itératif
`declare -A MY_ASSOC` : déclare un tableau associatif
`MY_ASSOC[toto]=1`

Pour les tableaux itératifs, la commande `shift MY_ARRAY` permet de récupérer le premier élément tout en le supprimant du tableau.

### Variables spéciales
`$1 à $9` : Donne les 9 premiers arguments
`$0` : Donne le nom du script

`$@` : Donne la liste des arguments du scripts (ARRAY)
`$*` : Donne la liste des arguments du scripts (STRING)
`$#` : Donne le nombre d'arguments

`$?` : Code retour du script ou fonction. Si 0 :D, sinon :(
`$$` : PID du process courant
`$!` : PID du dernier process lancé en background