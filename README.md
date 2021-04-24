# Encryptor

A shell script to encrypt and decrypt text messages using openssl.

## Usage

Make sure to generate a public key that will be used to encrypt the message:

You can send the path to save the key as a second argument (optional).
The key will be saved to `keys/id_rsa.pem.pub` as default.

`./generate_key.sh <PATH_TO_PUBLIC_KEY>`

### Encrypt

Given a `to_encrypt.txt` file in the root folder, here is the command to encrypt it:

The path to save the encrypted message can also be passed there, otherwise it will default to `message_encrypted.txt`

`./encryptor.sh <PUBLIC_KEY> encryptor.txt`

### Decrypt

Now given an encrypted message at `message_encrypted.txt`, run the decryptor to decrypt it. For that you need to use a private key:

The path for the decrypted text is optional and defaults to `message_decrypted.txt`

`./decryptor.sh <PRIVATE_KEY> message_encrypted.txt`
