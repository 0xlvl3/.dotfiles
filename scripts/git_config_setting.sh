#!/bin/bash

echo "Git config script"

# Name prompt
echo -n "Enter your github username: "
read name

# Email prompt
echo -n "Enter your github email: "
read email

# Editor prompt
echo -n "Enter your editor of choice: "
read editor

# PAT prompt
echo -n "Enter you PAT: "
read token

# Set git options
git config --global user.name "$name"
git config --global user.email "$email"
git config --global core.editor "$editor"
git config --global credential.helper store
git config --global credential.https://github.com.username "$name"
git config --global credential.https://github.com.password "$token"
git config --global color.ui true # Colored git output
git config --global --list 

echo "Git configured :)"
