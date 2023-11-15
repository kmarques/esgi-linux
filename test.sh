#! /bin/bash

# my comment
echo "Hello world"

VAR1="toto"
VAR2=titi
VARI=0
VARI=$(($VARI+1))

# toto tuti tutu 1L 0L
echo "$VAR1 ${VAR2/i/u} ${VAR2//i/u} ${VARI}L ${VARII=0}L"

MY_ARRAY=(0 1 "titi")
echo ${MY_ARRAY[@]}
declare -A ASSOC_ARRAY
ASSOC_ARRAY[titi]=tutu
echo ${ASSOC_ARRAY[@]}

echo $0 $1
echo $$" : Current PID"

#tree / > /dev/null &
#echo $!" : PID of tree"

## Subshell
CT_LIST1=$(docker ps -q)
CT_LIST2=`docker ps -q`

echo $CT_LIST1 "**" $CT_LIST2

## Conditional Structure
## Test
test -e ./test.sh
echo $?
test $VAR2 = "titi"
echo $?
test $VARI -eq 1
echo $?

# Structure
if [ "$1" -eq 1 ]; then
    echo "\$1 vaut 1"
elif [ "$1" -lt 5 ]; then
    echo "\$1 < 5"
else
    echo "\$1 >= 5"
fi

case "$2" in
    1) echo "\$2 vaut 1" ;;
    10) echo "\$2 vaut 10" ;;
    *) echo "\$2 vaut $2" ;;
esac

[ -e ./test2.sh ] && echo "File exists" || echo "File not exists"

## Structure itérative
echo "For/in"
echo " - Array"
for value in ${MY_ARRAY[@]}; do
    echo $value
done
echo " - ls"
for value in `ls`; do
    echo $value
done
echo " - globbing"
for value in *; do
    echo $value
done

echo "For/accumulator"
for ((i = 0; ${#MY_ARRAY[@]} - $i ;i= $i + 1)); do
    echo ${MY_ARRAY[$i]};
done

echo "While"
MY_WHILE_ARRAY=(1 2 3 4 5)
w=0
while [ ${#MY_WHILE_ARRAY[@]} -ne $w ]; do
    echo ${MY_WHILE_ARRAY[$w]}
    w=$(( $w + 1 ))
done

echo "Until"
MY_WHILE_ARRAY=(1 2 3 4 5)
w=0
until [ ${#MY_WHILE_ARRAY[@]} -eq $w ]; do
    echo ${MY_WHILE_ARRAY[$w]}
    w=$(( $w + 1 ))
done

function display() {
    echo "First argument:" $1
    echo "All arguments:" $*

    return $#
}

RESULT=$(display test)
echo "First diplay code:" $? $RESULT
RESULT=`display hello world`
echo "Second diplay code:" $? $RESULT