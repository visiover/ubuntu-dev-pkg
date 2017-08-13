#!/bin/sh


echo "\n GIT CONFIG SCRIPT"

echo "\nPlease insert your git user name: "
read input_variable
git config --global user.name "$input_variable"

echo "\nPlease insert your git user email: "
read input_variable
git config --global user.email "$input_variable"

git config --global push.default simple


echo "\nAdding common extensions to the global gitignore. See file at ~/.gitignore_global"


cat > ~/.gitignore_global << EOF

#  IDE #
########
.idea/


# Compiled source #
###################
*.com
*.class
*.dll
*.exe
*.o
*.so

# Packages #
############
# it's better to unpack these files and commit the raw source
# git has its own built in compression methods
*.7z
*.dmg
*.gz
*.iso
*.jar
*.rar
*.tar
*.zip

# Logs and databases #
######################
*.log
*.sql
*.sqlite

# OS generated files #
######################
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

EOF

git config --global core.excludesfile ~/.gitignore_global


echo "\nDone ..."

echo "\n================="

git config --list

echo "\n=================\n"