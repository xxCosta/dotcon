#!/bin/bash

echo "saying ur tryna run some ssh eyyyy?"
sleep 1
echo .
sleep 1
echo .
sleep 1
echo .
echo "so den run ur email fam"
read -p "email: " email
ssh-keygen -t ed25519 -C $email
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
