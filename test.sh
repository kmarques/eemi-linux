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
shift
echo $1 $2 $3 $4
shift
echo $1 $2 $3 $4
shift
echo $1 $2 $3 $4
echo $? # code retour de la dernière commande
