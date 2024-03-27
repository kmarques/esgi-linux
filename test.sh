#! /bin/sh

VAR1=1
VAR3=tito
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


if [ 0 -ne 1 ]
then
  echo "0 -ne 1"
fi

if [ 0 -eq 1 ]; then
  echo "true"
elif [ 3 -eq 3 ]; then
  echo "elif true"
else
  echo "false"
fi

case $VAR3 in
tata)
  echo "VAR is tata";;
titi)
  echo VAR3 is titi;;
*)
  echo VAR3 default;;
esac


# for accumulator
for ((i=0; ${#ARRAY1[@]} - $i ; i= $i + 1)); do
  echo "for acc" $i ${ARRAY1[$i]}
done

# fo in
for val in {1..20}; do
   echo $val
done;

for val in ${ARRAY1[@]}; do
   echo "for in" $val
done;

# while|until
i=0
while [ $i -lt 20 ]; do
  echo $i
  i=$(($i+1))
done


WORKDIR=`pwd`
BASENAME=${WORKDIR##*/}
echo $WORKDIR $BASENAME


COMMAND=docker

OPTIONS[0]=ps
OPTIONS[1]=-q

$COMMAND ${OPTIONS[*]}
