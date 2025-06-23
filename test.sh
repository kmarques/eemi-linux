#! /bin/sh

TITI=1
TOTO="serdzftegrh"
VAR1=tata
PWD=`pwd`
#  TATA = "test"    invalid command TATA

echo $TITI
echo $TOTO
echo "test"
echo $TITI"L"
echo ${TITI}${TOTO}
echo ${VAR1=tutu} # default value
echo ${VAR1/a/Y} # replace first occurence
echo ${VAR1//a/Y} # replace all occurence
echo $PWD

# Tableau itératif
declare -a MY_ITER_ARRAY
MY_ITER_ARRAY=("test1" "test2" 3)
echo ${MY_ITER_ARRAY[@]} # list of values
echo ${#MY_ITER_ARRAY[@]} # nb values

# Tableau associatif
# declare -A MY_ASSOC_ARRAY
MY_ASSOC_ARRAY[titi]=2
MY_ASSOC_ARRAY[toto]="test"
echo ${MY_ASSOC_ARRAY[titi]}
echo ${MY_ASSOC_ARRAY[toto]}

echo $# arguments # nombre d'arguments
echo \"$@\" arguments # arguments sous forme de tableau
echo \"$*\" arguments # arguments sous forme de chaine
echo $0
echo $1 $2 $3 $4 # valeur indexé de l'argument
#shift
#echo $1 $2 $3 $4
#shift
#echo $1 $2 $3 $4
#shift
#echo $1 $2 $3 $4
#echo $? # code retour de la dernière commande

# Structure conditionnelle

echo \# Structure IF
if test "$1" = "toto"; then
  echo "This is the best TOTO"
elif [ "$1" -eq 7 ]; then
  echo "This is Ronaldo" 
else
  echo "This is $1"
fi

echo \# Structure case/switch
case $2 in
  toto) echo "This is TOTO again" ;;
  10) echo "This is Zizou" ;;
  *) echo "This is $2" ;;
esac

echo \# Structure ternaire
[ "$3" -lt 10 ] && echo "This is lower than expected" || echo "This is great"

# Structure itérative
USTENSILES=("couteau" "fourchette" "assiette")
# for accumulateur
echo \# for accumulateur
for ((i=0; ${#USTENSILES[@]} - $i; i=$i+1)); do
   echo ${USTENSILES[$i]}
done

# foreach
echo \# foreach
for ITEM in ${USTENSILES[@]}; do
   echo $ITEM
done

# while
echo \# while
i=0
while [ $((${#USTENSILES[@]} - $i)) -ne 0 ]; do
  echo ${USTENSILES[$i]}
  i=$((i+1))
done

# until
echo \# until
i=0
until [ "$i" -eq ${#USTENSILES[@]} ]; do
  echo ${USTENSILES[$i]}
  i=$((i+1))
done

## Structure fonctionnelle
function titi() {
   local TUTU # déclare la variable que dans la fonction
   TUTU=3
   echo titi $1 $2 $TUTU
   echo "J'ai ${#USTENSILES[@]} ustensiles"
   return 123
}

titi coucou "gros minet"
echo $?
echo $TUTU
