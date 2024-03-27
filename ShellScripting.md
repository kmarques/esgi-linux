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
`$!` : PID du dernier process lancé

## Structure conditionnelle
### Test

`test 0 -ne 2` <=> `[ 0 -ne 2 ]` (**les espaces sont importants**)   

Pour comparer les entiers on utilise les options `-eq -ne -gt ...`   

Pour comparer les chaînes de caractères, on utilise les opérateurs de comparaison `= != > < ...`

Voir `man test`, pour toutes les possibilités.

### Structure

Structure **IF**
```shell
if [ expression ]
then
    statement
    ...
elif [ expression2 ]
    statement_elif
    ...
else
    statement_else
fi
```
```shell
[ expression ] && echo 3 # execute si expression vaut true
[ expression ] || echo 3 # execute si expression vaut false
```
Structure **CASE**
```shell
case variable in
value1) statement ;;
value2) statement ;;
*) statement_default ;;
esac
```

## Strucuture itérative
Structure **for**

```shell
for var_dest in var_source; do
    statement
done
```
```shell
for ((i=0; 20 - $i; i = $i +1)); do
    statement
done
```

Structure **while/until**
```shell
while|until [ expression ]; do
    statement
done
```

## Structure fonctionnelle
```shell
[function] my_func() {
    statement
    [return int]
}
```
Les fonctions se comportent comme des sous-programmes.
Elles retournent un code retour accessible via la variable **\$?**.
Elles prennent des arguments comme des programmmes `my_func toto titi` accessible via les variables **\${0..9}**, **\$@**, **\$#** au sein de la fonction.

## Sous-shell
```shell
VAR=$(pwd) # $VAR contiendra le chemin courant
```
**<=>**
```shell
VAR=`pwd` # $VAR contiendra le chemin courant
```
**Calcul arithmétique**
```shell
VAR=$((1+2)) # $VAR = 3
```