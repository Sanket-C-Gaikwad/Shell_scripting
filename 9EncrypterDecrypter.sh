#!/bin/bash

echo "This is a simple file encrypter/decrypter"
echo "Please choose what you want to do"

choice="Encrypt Decrypt"

select option in $choice; do
        if [ $REPLY = 1 ]; then

        	echo "Please enter the filename you want to encrypt"
        	read file
		echo "Please enter desired name"
		read enc_file
        	gpg -c -o $enc_file $file
        	echo "The file has been encrypted"
		exit 0 #Script termination
	elif [ $REPLY = 2 ]; then
        	
		echo "Please enter the filename you want to decrypt"
        	read file2
		echo "Please enter desired name"
                read dec_file
                gpg -d -o $dec_file $file2
        	echo "The file has been decrypted"
        	exit 0
    	else
        	echo "Invalid option. Please select 1 or 2."	
fi

done
