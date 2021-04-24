echo "Starting encryptor..."

if [ "$#" -lt "2" ]
then
  echo "Error: Not enough arguments provided. Need at least the public key and text to encrypt"
  echo "Command: ./encryptor.sh <PUBLIC_KEY> <TEXT_TO_ENCRYPT> <ENCRYPTED_MESSAGE_PATH>"
  exit 0
fi

KEY="$1"
TEXT_TO_ENCRYPT="$2"

echo "Encrypting $TEXT_TO_ENCRYPT with $KEY"

if [ "$#" -eq "3" ]
then
  ENCRYPTED_MESSAGE_PATH="$3"
else
  ENCRYPTED_MESSAGE_PATH="message_encrypted.txt"
fi

echo "Saving encrypted message to $ENCRYPTED_MESSAGE_PATH"
openssl rsautl -encrypt -pubin -inkey "$KEY" -ssl -in "$TEXT_TO_ENCRYPT" -out "$ENCRYPTED_MESSAGE_PATH"
