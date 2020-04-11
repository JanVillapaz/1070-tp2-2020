#!/bin/bash

# script de creation et demarrage de container
# specialement conçu pour les lab du cours INF1070
# nom image
imgname="inf1070:tp"
dockerfilename="Dockerfile"
#nom container
contname="inf1070tp"
# dossier donner dans le container (mount point)
datadir="/inf1070"
#dossier donnees sur machine locale
#datasrc=`pwd`/../
datasrc=`pwd`/

# Créer image si elle n'existe pas

if [[ "$(docker images -q $imgname 2> /dev/null)" == "" ]]; then
  # Image n'existe pas
  echo "Création image inf1070 ..." && \
  echo "Nécessite une connexion Internet" &&\
  docker build -t "$imgname" -f "$dockerfilename" . && \
  echo "Image $imgname cree avec succes"
fi

# Créer container si n'existe pas 
 
if [[ "$(docker ps -aq -f name=$contname$ 2>/dev/null)" == "" ]]; then
  #
  # container n'existe pas
  echo "creation container .. " && \
  docker create -it --mount src="$datasrc",target="$datadir",type=bind \
    -p 8065-8069:8069 -p 3080-3085:80 -p 3086-3089:8080 --name "$contname" "$imgname" && \
  echo "contenaire $contname créé" 
else
  echo "container $contname est déjà demarré ..."
fi

# démarrage du container

if [[ "$(docker ps -q -f name=$contname$ 2>/dev/null)" == "" ]]; then
    #
    echo "démarrage du container ..." &&\
    docker container start  "$contname" && \
    echo "container $contname  démarré"
fi

# connexion sur le contenair

if [[ "$(docker ps -q -f name=$contname$ 2>/dev/null)" != "" ]]; then
    echo "connexion au contenair ..." &&\
    echo " le dossier $datasrc sera accessible " &&\
    echo "dans le dossier $datadir du container " && \
    echo "pour se deconnecter, tapez la commande: exit"&& \
    #docker exec -it "$contname" /bin/bash
    docker container  exec -it -u etudiant "$contname" /bin/bash
else
   echo "Impossible de se connecter"
   echo "Vérifier que le container $contname est démarré"
fi


# docker run -it --mount src=`pwd`/../,target=/inf1070,type=bind \
# -p 127.0.0.1:8069:8069 --name inf1070lab inf1070:lab

# docker inspect -f {{.State.Running}} $CONTAINER_ID