#!/bin/bash

echo 'saying mans r bout setting up git eh?'
sleep 1
echo '.'
sleep 1
echo '.'
sleep 1
echo '.'
sleep 1
echo 'run ur creds my guy *kisses teeth*'
read -p 'username: ' username
read -p 'email: ' email

git config --global user.email $email
git config --global user.name $username

echo 'bless ur link up styl'
