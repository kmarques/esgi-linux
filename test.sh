#! /bin/sh

VAR1=1
VAR3=titi
VAR4="${VAR1}${VAR3} ${VAR2=tata}"

echo ${VAR1} ${VAR2=toto} ${VAR3//i/u} $VAR4

ARRAY1=("a" "b" "c")
echo ${ARRAY1[*]} "${ARRAY1[@]}" ${#ARRAY1[@]}

# declare -A ASSOC
ASSOC[test]=3
ASSOC[titi]=tutu

echo ${ASSOC[test]} ${ASSOC[titi]}

echo "special variables"
echo "- arguments"
echo $0 $1 $2 $3
echo $@
echo $*
echo $#

echo "- system"
ls > /dev/null
echo $?
md
echo $? 

echo $$ " : PID du process courant"
ls > /dev/null
echo $! " : PID de la commande ls"
