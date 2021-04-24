echo "Decrypting message..."

if [ "$#" -lt "2" ]
then
  echo "Error: Not enough arguments provided. Need at least the private key and text to decrypt"
  echo "Command: ./decryptor.sh <PRIVATE_KEY> <TEXT_TO_DECRYPT> <DECRYPTED_MESSAGE_PATH>"
  exit 0
fi

KEY="$1"
TEXT_TO_DECRYPT="$2"

echo "Decrypting $TEXT_TO_DECRYPT with $KEY"

if [ "$#" -eq "3" ]
then
  DECRYPTED_MESSAGE_PATH="$3"
else
  DECRYPTED_MESSAGE_PATH="message_decrypted.txt"
fi

openssl rsautl -decrypt -inkey "$KEY" -in "$TEXT_TO_DECRYPT" -out "$DECRYPTED_MESSAGE_PATH"
echo "Decrypted message saved to $DECRYPTED_MESSAGE_PATH"
