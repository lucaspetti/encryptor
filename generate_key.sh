if [ "$#" -eq "0" ]
then
  echo "Error: No key given"
  exit 0
fi

echo "Generating key from $1..."

if [ "$#" -eq "2" ]
then
  KEY_PATH="$2"
else
  KEY_PATH="keys/id_rsa.pem.pub"
fi

ssh-keygen -f "$1" -e -m PKCS8 > $KEY_PATH
echo "Key saved into $KEY_PATH"
