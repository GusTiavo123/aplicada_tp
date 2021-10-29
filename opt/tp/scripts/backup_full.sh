#!/bin/sh
#script de backup

#Declaro las variables necesarios para llevar a cabo el script
ORIGEN="$1"
DESTINO="$2"
FECHA="$(date +%Y%m%d)"
BACKUP_FILE="$ORIGEN"_bkp_"$FECHA".tgz
LOG_NAME="$(date +%H-%M-%S)"-se_crea_bkp_de_"$ORIGEN" 

#Verifico que el origen y el destino ingresados existan
if[ ! -d "ORIGEN"] && [ ! -d "DESTINO"] then

	#En caso de que no existan se cancela el script
	exit 1
fi

#Creo el bkp
tar czf /$DESTINO/$BACKUP_FILE $ORIGEN


