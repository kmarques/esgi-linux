#! /bin/bash

DESTINATION=`pwd`
# Gestion des arguments
BACKUP_DIR=$1
if [ $# -gt 1 ]; then
    DESTINATION=$2
    BACKUP_DIR=$3
fi
REAL_DESTINATION=`cd $DESTINATION; pwd`

# Récupération du nom du dossier à sauvegarder
DIRNAME=${BACKUP_DIR##*/}
BACKUP_NAME=`date +%Y-%m-%d`_$DIRNAME
TEMP_DIR=/tmp/$BACKUP_NAME

if [ -d $TEMP_DIR ]; then
    rm -rf $TEMP_DIR
fi
mkdir $TEMP_DIR

# Création de la liste des fichiers à sauvegarder en bouclant sur le résultat de la commande du
list=`du -Ah $BACKUP_DIR/*`
IFS=$'\n'
for i in $list; do
    filename=`echo $i | cut -f 2`
    weight=`echo $i | cut -f 1`
    echo `basename $filename` $weight >> $TEMP_DIR/list.txt
    #echo ${filename##*/} $weight >> $TEMP_DIR/list.txt
done

# Création de l'archive
cp -R $BACKUP_DIR/* $TEMP_DIR/
cd $TEMP_DIR/..
zip -r $BACKUP_NAME.zip $BACKUP_NAME > /dev/null

if [ ! -d $REAL_DESTINATION ]; then
    mkdir -p $REAL_DESTINATION
fi
# Déplacement de l'archive vers la destination
mv $BACKUP_NAME.zip $REAL_DESTINATION

# Affichage du résultat
echo -n $BACKUP_NAME.zip backed up
if [ $# -gt 1 ]; then
    echo " in $DESTINATION"
else
    echo " here"
fi

# Suppression du dossier temporaire
rm -rf $TEMP_DIR